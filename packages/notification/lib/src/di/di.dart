import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local_storage/local_storage.dart';
import 'package:notification/src/di/di.config.dart';

final notificationGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureNotificationDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureUserRepositoryDependencies() => notificationGetIt.configureNotificationDeps();

@module
abstract class Modules {
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @lazySingleton
  HiveStore get hiveStore => localStorageGetit.get<HiveStore>();

  @lazySingleton
  CloudStorage get cloudStorage => cloudStorageGetIt.get<CloudStorage>();
}
