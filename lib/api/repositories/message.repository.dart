import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/message.model.dart';
import 'package:biite/api/storage/hive.storage.dart';
import 'package:biite/api/utils/repository.params.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class MessageRepository {
  Future<void> addMessage(MessageParam param);
  Future<MessageReturnType> fetchMessages(String roomId);
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
      final message = MessageModel(
        roomId: param.roomId,
        text: param.text,
        createdAt: DateTime.now(),
        status: "unread",
      );
      await _firestore.collection(kMessageCollection).add(message.toJson());
      return;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<MessageReturnType> fetchMessages(String roomId) async {
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

      return MessageReturnType(
        ownerMessages: messages.where((m) => m.id == id).toList(),
        peerMessages: messages.where((m) => m.id != id).toList(),
      );
    } catch (e) {
      rethrow;
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
      return messages.last;
    } catch (e) {
      rethrow;
    }
  }
}
