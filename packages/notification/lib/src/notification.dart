import 'dart:convert';
import 'dart:io';
import 'package:googleapis_auth/auth_io.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'package:local_storage/local_storage.dart';
import 'package:notification/src/service.account.dart';

void sendNotification(Map<String, dynamic> data) async {
  final firestore = commonGetIt.get<FirebaseFirestore>();
  // get from task data
  final roomId = data['roomId'] as String;
  final senderId = data['senderId'] as String;

  final roomDoc = await firestore.collection(kChatCollection).doc(roomId).get();
  if (!roomDoc.exists) return null;
  final room = RoomModel.fromJson(roomDoc.data()!);
  final participants = [room.ownerId, room.peerId];

  // get receiver device token
  final receiverId = participants.where((e) => e != senderId).first;

  final senderDoc = await firestore.collection(kUserCollection).doc(senderId).get();
  if (!senderDoc.exists) return null;

  final receiverDoc = await firestore.collection(kUserCollection).doc(receiverId).get();
  if (!receiverDoc.exists) return null;

  final receiver = UserModel.fromJson(receiverDoc.data()!);
  final sender = UserModel.fromJson(senderDoc.data()!);
  // send notification
  if (receiver.deviceToken != null) {
    await _send(
      deviceToken: receiver.deviceToken!,
      imageAddress: sender.profilePic,
      username: sender.name,
    );
  }
}

final _scopes = [
  'https://www.googleapis.com/auth/cloud-platform',
  'https://www.googleapis.com/auth/firebase.messaging'
];

Future<String> _getAccessToken() async {
  try {
    final accountCredentials = ServiceAccountCredentials.fromJson(serviceAccount);

    final client = http.Client();

    AccessCredentials credentials = await obtainAccessCredentialsViaServiceAccount(
      accountCredentials,
      _scopes,
      client,
    );

    return credentials.accessToken.data;
  } catch (e) {
    rethrow;
  }
}

Future<void> _send({
  required String deviceToken,
  required String? imageAddress,
  required String username,
}) async {
  try {
    const String fcmUrl = 'https://fcm.googleapis.com/v1/projects/biite-fc6d7/messages:send';

    const imagePlaceholder =
        "https://cdn.vectorstock.com/i/500p/08/19/gray-photo-placeholder-icon-design-ui-vector-35850819.jpg";

    final accessToken = await _getAccessToken();

    // Build the request payload
    final Map<String, dynamic> message = {
      "message": {
        "token": deviceToken,
        "notification": {
          "title": "New Message",
          "body": "You have received a new message from $username.",
          "image": imageAddress ?? imagePlaceholder, // URL to the profile image
        },
        "data": {
          "icon": "ic_launcher_foreground",
          "type": "chat",
          // "sender": username,
          // "senderId": "john_doe_id",
          // "profileImageUrl": imageAddress ?? imagePlaceholder // Include this for later use
        }
      }
    };

    final response = await http.post(
      Uri.parse(fcmUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: json.encode(message),
    );

    if (!response.statusCode.toString().contains("2")) {
      print(response.statusCode.toString());
      print(response.body);
    }
  } catch (e) {
    print(e.toString());
  }
}

Future<void> _getDeviceToken() async {
  final messaging = commonGetIt.get<FirebaseMessaging>();
  try {
    if (Platform.isIOS) {
      final apnsToken = await messaging.getAPNSToken();
      if (apnsToken != null) {
        final token = await messaging.getToken();
        _updateUserToken(token);
      } else {
        return; // Push Notificationn not available yet. I dont have the iOS developer account yet
      }
    }
    final token = await messaging.getToken();
    _updateUserToken(token);
    print(".......token, $token");
  } catch (e) {
    rethrow;
  }
}

void getUserDeviceToken() {
  final messaging = commonGetIt.get<FirebaseMessaging>();
  _getDeviceToken();

  messaging.onTokenRefresh.listen((newToken) async {
    _updateUserToken(newToken);
  });
}

void _updateUserToken(String? deviceToken) async {
  final firestore = commonGetIt.get<FirebaseFirestore>();
  final hiveStore = commonGetIt.get<HiveStore>();
  final id = await hiveStore.readItem("id", "id");
  if (id == null) {
    return;
  }

  final query = await firestore.collection(kUserCollection).doc(id).get();
  if (!query.exists) return;
  final user = UserModel.fromJson(query.data()!);

  await firestore.collection(kUserCollection).doc(id).update(user
      .copyWith(
        deviceToken: deviceToken,
      )
      .toJson());
  await hiveStore.saveItem(deviceToken, "deviceToken", key: "deviceToken");
}
