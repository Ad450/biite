import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/room.model.dart';
import 'package:biite/api/utils/types.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ChatRepository {
  Future<Either<UIError, List<RoomModel>>> fetchChats(String id);
  Future<Either<UIError, VoidType>> createChat({required ownerId, required peerId});
}

@Injectable(as: ChatRepositoryImpl)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UIError, List<RoomModel>>> fetchChats(String id) async {
    try {
      final query = await _firestore.collection(kChatCollection).get();
      final chats = query.docs.map((e) {
        var room = RoomModel.fromJson(e.data());
        room = room.copyWith(id: e.id);
        return room;
      }).toList();
      return Right(chats);
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }

  @override
  Future<Either<UIError, VoidType>> createChat({required ownerId, required peerId}) async {
    try {
      final doc = await _firestore
          .collection(kChatCollection)
          .where("ownerId", isEqualTo: ownerId)
          .where("peerId", isEqualTo: peerId)
          .get();

      if (doc.docs.first.exists) {
        return const Right(VoidType());
      }

      final peerInfo = await _firestore.collection(kUserCollection).doc(peerId).get();

      await _firestore.collection(kChatCollection).add(
            RoomModel(
              ownerId: ownerId,
              peerId: peerId,
              peerName: peerInfo.data()?["profilePic"],
            ).toJson(),
          );
      return const Right(VoidType());
    } catch (e) {
      return Left(UIError(e.toString()));
    }
  }
}
