import 'package:cloud_storage/src/di/di.config.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final cloudStorageGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureCloudStorageDependencies() => cloudStorageGetIt.init();

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
