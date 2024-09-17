import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';

abstract class CloudStorage {
  Future<String> upload(String filepath);
}

@LazySingleton(as: CloudStorage)
class CloudStorageImpl implements CloudStorage {
  CloudStorageImpl(this._storage);

  final FirebaseStorage _storage;

  @override
  Future<String> upload(String filepath) async {
    try {
      Reference reference = _storage.ref();

      UploadTask uploadTask = reference.putFile(File(filepath));

      final storageSnapshot = uploadTask.snapshot;

      final url = await storageSnapshot.ref.getDownloadURL();
      return url;
    } catch (e) {
      rethrow;
    }
  }
}
