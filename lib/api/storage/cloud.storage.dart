import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class CloudStorage {
  Future<String> upload(String filepath);
}

@LazySingleton(as: CloudStorage)
class CloudStorageImpl implements CloudStorage {
  CloudStorageImpl(this._firebaseAuth, this._firebaseStorage);

  final FirebaseAuth _firebaseAuth;
  final FirebaseStorage _firebaseStorage;

  @override
  Future<String> upload(String filepath) async {
    final user = _firebaseAuth.currentUser;
    final storageRef = _firebaseStorage.ref();
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
