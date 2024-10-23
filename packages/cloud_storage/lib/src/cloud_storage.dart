import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class CloudStorage {
  Future<String> upload(String filepath, String id);
}

@Singleton(as: CloudStorage)
class CloudStorageImpl implements CloudStorage {
  CloudStorageImpl(this._storage);

  final FirebaseStorage _storage;

  @override
  Future<String> upload(String filepath, String id) async {
    try {
      Reference reference = _storage.ref();
      final picRef = reference.child('photos/$id');

      await picRef.putFile(File(filepath));

      final url = await picRef.getDownloadURL();
      return url;
    } catch (e) {
      rethrow;
    }
  }
}
