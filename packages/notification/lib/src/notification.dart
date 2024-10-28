import 'dart:convert';
import 'dart:io';
import 'package:googleapis_auth/auth_io.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'package:local_storage/local_storage.dart';

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

final _serviceAccount = <String, String>{
  "type": "service_account",
  "project_id": "biite-fc6d7",
  "private_key_id": "a12afc13d0f82955d12bbd9882baac61d6f94e3a",
  "private_key":
      "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCrG5jpKcWWrdun\nfQzzUOHV47Xcjx8z4heUltOPEHZUZSddRrTGqchY3q0M6dxi7+Q7/NUpL8ya9JbR\nggWsGA2MJCZBziU/xE7ll/Z5ePR0kcmIXz2yhegNRgF2LO6XER2EVnLjg9187gZN\nqprPozOjarhAXnZi5bzak0hvR5HyCng3Cz5WHF/nHGlUy5fznMOU5MUn2HX9OKiP\nQ8gBH9jLwiZtG6EtdaAq6RGNBNZM7Fcd9NfGwV37Ks6TZuTMfO5GNbyeOPwEVqrn\nBmwcdYnpYe8ztGx4XSpr9xiSrZ4HvhpyLDosgGFIQ7G6uhp+30E0qQv4dwNFjk4b\nMFj1K+B1AgMBAAECggEAGuMkCNWLyzToLH45u/1Ec4oL8Ivb5Rj8yBhYR6WYVoQr\nppxe+U3CIfbhvgL8ot5b4LJG46kzb1EKZwMVtZh0/oXKrjIAx++mzyytKiLf1PZ4\nsvF2XjhtAbLztVhzqHDj0MEN3iMBOamke21Y1NJqIZ56NAEz/K/pmHYm3neiXyRU\nvN37AfqQugZzJ0llhaPDfvajpiqg3Er4OFP1gPPezAEngdorHCEUQ6MMsqC+d+JQ\nOmyr/m43eUA8XizHrl0acKXe8BZ/iqzdv9kNvJ8L729/bBv5tm63YB8GEQ+g15wM\nIrdOBCXOhldB4AYFW6Ws50/kOA26UoKxtjaaAnOx+QKBgQDU+kaurGsS3Cq2cNBT\ndIWXn0j9i3efs28Huu9uWeUUD49KQp70B+qwAMwJUqQ2t2SGBkN8qYCshOp6ooX0\nubU8VODqYojHic6Cud7EvlkHHlZevF04tBiBprfW9qV/9YBj3y4VlC460siNTu5d\nKAK3X2koQKRt3qYfLpiDRPC1KQKBgQDNrBqhhleDSC3L1Iye2a44uZDAjLRJZEW/\nMv+98PNrCtCv2vjyBbzYK6v0Wvsd/KMQsY0jk99nwDNMjc6qAX8LZXTsiNnYnAGZ\naH20tlvJfDbKbXMPiZ255VknflIi5nyJhIUzO0+HklDyFn8F0QpmuHZSpqDDi8jG\ncIp66OKObQKBgGcF4icgtHLdGbRDAiM8nFrp7E7ppiYUkEL3BFcnGQ8JL9FGRMnb\nAoW8/PYNie4F7JSAdyjYfav2Z86Gy7HEG41hqaL3ox6S5NiLvN0DDuHIpRMSny2M\nwMYGtatAiHJLeZ3WGd7KXUqLKARjCB77+cRmXOHh0yhqqYUv7wqg0KdxAoGBAJFj\nsA+u3/417+m+/wjr6HTA+MqkrG2VLJjUfGTRB8ILiypFKOYtmClX9d5u0kWIad1L\nJfKYfbzh6WGcfRNAq4Zq2hS7SQQOhDLl4rb0kj4ESNcgN84sAgt/TV7VtUpmlHLB\n80ccDkRP8liv/msmMqwaicozcEHLdsqQk9P+/OihAoGBAJCQr12jGYfDrF1o5QCv\n0hMC3CUfT5zwDtndHei93vpqBZpHMACjqaUlw7JoMKKSmOW8yAVBiFEUbKluaNCD\nXlm+KcsdyuF8kx3Z/O8XlZwwSHZ9LNUr8iehLBRo88r7//z7XuumJUFMxcHzYkQj\n4jsuxvCGllt46darao4Nh63V\n-----END PRIVATE KEY-----\n",
  "client_email": "code8-biite-messaging@biite-fc6d7.iam.gserviceaccount.com",
  "client_id": "105922289528715322438",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url":
      "https://www.googleapis.com/robot/v1/metadata/x509/code8-biite-messaging%40biite-fc6d7.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
};

final _scopes = [
  'https://www.googleapis.com/auth/cloud-platform',
  'https://www.googleapis.com/auth/firebase.messaging'
];

Future<String> _getAccessToken() async {
  try {
    final accountCredentials = ServiceAccountCredentials.fromJson(_serviceAccount);

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
