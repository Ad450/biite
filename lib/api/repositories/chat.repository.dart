import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/room.model.dart';
import 'package:biite/api/repositories/message.repository.dart';
import 'package:biite/api/storage/hive.storage.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ChatRepository {
  Future<Either<UIError, List<RoomModel>>> fetchChats();
  Future<Either<UIError, VoidType>> createChat(String peerId);
}

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this._firestore, this._hiveStore, this._messageRepository);

  final FirebaseFirestore _firestore;
  final HiveStore _hiveStore;
  final MessageRepository _messageRepository;

  @override
  Future<Either<UIError, List<RoomModel>>> fetchChats() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final query = await _firestore.collection(kChatCollection).where("ownerId", isEqualTo: id).get();

      final chats = await Future.wait(query.docs.map((e) async {
        var room = RoomModel.fromJson(e.data());
        final lastMessage = await _messageRepository.getLastMessage(e.id);

        final unreadCount = await _messageRepository.getCountOfUnreadMessages(e.id);

        return room.copyWith(
          id: e.id,
          latestMessageText: lastMessage.text,
          unreadMessageCount: unreadCount,
        );
      }).toList());

      return Right(chats);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> createChat(String peerId) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      if (peerId == id) throw Exception("unsupported operation");

      final doc = await _firestore
          .collection(kChatCollection)
          .where("ownerId", isEqualTo: id)
          .where("peerId", isEqualTo: peerId)
          .get();

      if (doc.docs.first.exists) {
        return const Right(VoidType());
      }

      final peerInfo = await _firestore.collection(kUserCollection).doc(peerId).get();

      await _firestore.collection(kChatCollection).add(
            RoomModel(
              ownerId: id,
              peerId: peerId,
              peerName: peerInfo.data()?["name"],
              peerProfilePic: peerInfo.data()?["profilePic"],
            ).toJson(),
          );
      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
