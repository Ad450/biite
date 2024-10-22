import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:messaging_repository/src/di/di.config.dart';

final messagingGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initializeMessagingRepoDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureChatRepositoryDependencies() => messagingGetIt.initializeMessagingRepoDeps();

@module
abstract class Modules {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  HiveStore get hiveStore => localStorageGetit.get<HiveStore>();

  @lazySingleton
  CloudStorage get cloudStorage => cloudStorageGetIt.get<CloudStorage>();
}
