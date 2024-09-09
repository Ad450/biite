import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class CloudStorage {
  Future<String> upload(String filepath);
}

@LazySingleton(as: CloudStorage)
class CloudStorageImpl implements CloudStorage {
  CloudStorageImpl(this._auth, this._storage);

  final FirebaseAuth _auth;
  final FirebaseStorage _storage;

  @override
  Future<String> upload(String filepath) async {
    final user = _auth.currentUser;
    final storageRef = _storage.ref();
    final videoRef = storageRef.child(
      'photos/${user?.uid}/${DateTime.now().millisecondsSinceEpoch}.${filepath.split('.').last}',
    );
    try {
      await videoRef.putFile(File(filepath));
      final url = await videoRef.getDownloadURL();
      return url;
    } catch (e) {
      rethrow;
    }
  }
}
