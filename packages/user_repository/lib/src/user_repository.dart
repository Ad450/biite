import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:common_repository/common_repository.dart';
import 'package:configuration/configuration.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
  Future<void> updateUser({
    required String name,
    required String profilePic,
    required String description,
  });

  Future<UserModel> fetchChatPeer(String chatOwner, String peerId);
  Future<String> getCurrentUserId();
  Future<UserModel> fetchPeer(String ownerId);
}

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl()
      : _hiveStore = localStorageGetit.get<HiveStore>(),
        _firestore = commonGetIt.get<FirebaseFirestore>(),
        _cloudStorage = cloudStorageGetIt.get<CloudStorage>();

  final FirebaseFirestore _firestore;
  final HiveStore _hiveStore;
  final CloudStorage _cloudStorage;

  @override
  Future<UserModel> getUser() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }
      final doc = await _firestore.collection(kUserCollection).doc(id).get();
      if (!doc.exists) {
        throw Exception("user document not found ");
      }
      return UserModel.fromJson(doc.data()!);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateUser({
    required String name,
    required String profilePic,
    required String description,
  }) async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }

      String? url;
      if (profilePic.isNotEmpty) {
        url = await _cloudStorage.upload(profilePic, id);
      }

      final query = _firestore.collection(kUserCollection).doc(id);
      final doc = await query.get();
      if (!doc.exists) {
        throw Exception("Document does not exist");
      }
      final update = <String, String>{};

      if (name.isNotEmpty) update["name"] = name;
      if (description.isNotEmpty) update["description"] = description;
      if (url != null && url.isNotEmpty) update["profilePic"] = url;

      await query.update(update);

      return;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> fetchPeer(String ownerId) async {
    try {
      final doc = await _firestore.collection(kUserCollection).doc(ownerId).get();
      if (!doc.exists) {
        throw Exception("user document not found ");
      }
      return UserModel.fromJson(doc.data()!);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> fetchChatPeer(String chatOwner, String peerId) async {
    try {
      final currentId = await _hiveStore.readItem("id", "id");
      if (currentId == null) {
        throw Exception("id null at fetch all chats");
      }

      final queryId = currentId == peerId ? chatOwner : peerId;

      final doc = await _firestore.collection(kUserCollection).doc(queryId).get();
      if (!doc.exists) {
        throw Exception("user document not found ");
      }
      return UserModel.fromJson(doc.data()!);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getCurrentUserId() async {
    try {
      final id = await _hiveStore.readItem("id", "id");
      if (id == null) {
        throw Exception("id null at fetch all chats");
      }
      return id;
    } catch (e) {
      rethrow;
    }
  }
}
