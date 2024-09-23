import 'package:biite/api/api.constants.dart';
import 'package:biite/api/models/user.model.dart';
import 'package:biite/api/storage/cloud.storage.dart';
import 'package:biite/api/storage/hive.storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
  Future<void> updateUser({
    required String name,
    required String profilePic,
    required String description,
  });
}

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._firestore, this._hiveStore, this._cloudStorage);

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
}
