import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:user_repository/src/di/di.config.dart';

final authenticationGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureUserDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureUserRepositoryDependencies() => authenticationGetIt.configureUserDeps();

@module
abstract class Modules {
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  HiveStore get hiveStore => localStorageGetit.get<HiveStore>();

  @lazySingleton
  CloudStorage get cloudStorage => cloudStorageGetIt.get<CloudStorage>();
}
