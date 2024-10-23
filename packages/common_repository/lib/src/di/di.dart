import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common_repository/src/di/di.config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final commonGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'configureCommonRepoDeps',
  preferRelativeImports: true,
  asExtension: true,
)
void configureCommonRepositoryDependencies() => commonGetIt.configureCommonRepoDeps();

@module
abstract class Modules {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
}
