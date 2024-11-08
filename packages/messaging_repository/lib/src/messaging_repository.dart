import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';

import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:messaging_repository/src/models/message_model.dart';
import 'package:messaging_repository/src/models/message_param.dart';
import 'package:notification/notification.dart';

abstract class MessageRepository {
  Future<void> addMessage(MessageParam param);
  Stream<List<MessageModel>> fetchMessages(String roomId);
  Future<void> markMessageAsRead(String roomId);
  Future<int> getCountOfUnreadMessages(String roomId);
  Future<MessageModel> getLastMessage(String roomId);
}

@LazySingleton(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  MessageRepositoryImpl()
      : _hiveStore = localStorageGetit.get<HiveStore>(),
        _firestore = commonGetIt.get<FirebaseFirestore>();

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

      final data = {
        'roomId': param.roomId,
        'senderId': id,
      };
      sendNotification(data);

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

      final query = _firestore
          .collection(kMessageCollection)
          .where(
            "roomId",
            isEqualTo: roomId,
          )
          .snapshots();

      await for (final snapshot in query.handleError((e) => print(e.toString()))) {
        final docs = snapshot.docs;
        final messages = docs.map((e) {
          var model = MessageModel.fromJson(e.data());
          return model.copyWith(id: e.id, isRight: id == model.ownerId);
        }).toList();

        messages.sort((a, b) => a.createdAt.compareTo(b.createdAt));
        yield messages; // Emit the sorted list of messages
      }
    } catch (e) {
      print(e.toString());
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
      final query = await _firestore
          .collection(kMessageCollection)
          .where(
            "roomId",
            isEqualTo: roomId,
          )
          .get();

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
