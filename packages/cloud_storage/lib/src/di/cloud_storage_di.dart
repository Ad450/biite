import 'package:cloud_storage/src/di/cloud_storage_di.config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final cloudStorageGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureLocalStorageDependencies() => cloudStorageGetIt.init();

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
