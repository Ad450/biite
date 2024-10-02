import 'dart:io';

import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/message.model.dart';
import 'package:biite/api/repositories/cloud.messaging.dart';
import 'package:biite/api/storage/hive.storage.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

abstract class MessageRepository {
  Future<void> addMessage(MessageParam param);
  Stream<List<MessageModel>> fetchMessages(String roomId);
  Future<void> markMessageAsRead(String roomId);
  Future<int> getCountOfUnreadMessages(String roomId);
  Future<MessageModel> getLastMessage(String roomId);
}

@LazySingleton(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  MessageRepositoryImpl(this._firestore, this._hiveStore);

  final FirebaseFirestore _firestore;
  final HiveStore _hiveStore;

  @override
  Future<void> addMessage(MessageParam param) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final message = MessageModel(
        roomId: param.roomId,
        ownerId: id,
        text: param.text,
        createdAt: DateTime.now(),
        status: "unread",
      );
      await _firestore.collection(kMessageCollection).add(message.toJson());

      // send notification to receiver
      if (Platform.isAndroid) {
        final data = {
          'roomId': param.roomId,
          'senderId': id,
        };
        sendNotification(data);
      }

      // Run the task in an isolate using isolate_handler

      // get room
      // final roomDoc = await _firestore.collection(kChatCollection).doc(param.roomId).get();
      // if (!roomDoc.exists) return;
      // final room = RoomModel.fromJson(roomDoc.data()!);
      // final participants = [room.ownerId, room.peerId];

      // // get receiver device token
      // final receiverId = participants.where((e) => e != id).first;

      // final userDoc = await _firestore.collection(kUserCollection).doc(receiverId).get();
      // if (!userDoc.exists) return;

      // final user = UserModel.fromJson(userDoc.data()!);

      // // send notification
      // if (user.deviceToken != null) {
      //   await _cloudMessaging.send(
      //     deviceToken: user.deviceToken!,
      //     imageAddress: user.profilePic,
      //     username: user.name,
      //   );
      // }

      return;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<MessageModel>> fetchMessages(String roomId) async* {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = _firestore.collection(kMessageCollection).where("roomId", isEqualTo: roomId).snapshots();

      await for (final snapshot in query.handleError((e) => debugPrint(e.toString()))) {
        final docs = snapshot.docs;
        final messages = docs.map((e) {
          var model = MessageModel.fromJson(e.data());
          return model.copyWith(id: e.id, isRight: id == model.ownerId);
        }).toList();

        messages.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        yield messages; // Emit the sorted list of messages
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<int> getCountOfUnreadMessages(String roomId) async {
    try {
      final query = await _firestore
          .collection(kMessageCollection)
          .where("roomId", isEqualTo: roomId)
          .where("status", isEqualTo: "unread")
          .get();
      return query.docs.length;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> markMessageAsRead(String roomId) async {
    try {
      final batch = _firestore.batch();
      final query = await _firestore.collection(kMessageCollection).where("roomId", isEqualTo: roomId).get();

      for (var doc in query.docs) {
        batch.update(doc.reference, {"status": "read"});
      }
      await batch.commit();
      return;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MessageModel> getLastMessage(String roomId) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = await _firestore.collection(kMessageCollection).where("roomId", isEqualTo: roomId).get();
      final docs = query.docs;
      final messages = docs.map((e) {
        var model = MessageModel.fromJson(e.data());
        return model.copyWith(id: e.id);
      }).toList();
      messages.sort((a, b) => a.createdAt.compareTo(b.createdAt));
      return messages.last;
    } catch (e) {
      rethrow;
    }
  }
}
