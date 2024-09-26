import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/room.model.dart';
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
  ChatRepositoryImpl(this._firestore, this._hiveStore);

  final FirebaseFirestore _firestore;
  final HiveStore _hiveStore;

  @override
  Future<Either<UIError, List<RoomModel>>> fetchChats() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      final ownerDocs = await _firestore.collection(kChatCollection).where("ownerId", isEqualTo: id).get();
      final asPeerDocs = await _firestore.collection(kChatCollection).where("peerId", isEqualTo: id).get();
      Set all = {...asPeerDocs.docs, ...ownerDocs.docs};

      if (all.isEmpty) {
        return const Right([]);
      }

      final chats = all.map((e) {
        var room = RoomModel.fromJson(e.data());

        return room.copyWith(
          id: e.id,
          latestMessageText: "lastMessage.text",
          unreadMessageCount: 2,
        );
      }).toList();
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

      if (doc.docs.isNotEmpty) {
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
