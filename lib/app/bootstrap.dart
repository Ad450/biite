import 'package:authentication_repository/authentication_repository.dart';
import 'package:bid_repository/bid_repository.dart';
import 'package:biite/di/biite.di.dart';
import 'package:biite/firebase_options.dart';
import 'package:chat_repository/chat_repository.dart';
import 'package:cloud_storage/cloud_storage.dart';
import 'package:common_repository/common_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:local_storage/local_storage.dart';
import 'package:messaging_repository/messaging_repository.dart';
import 'package:notification/notification.dart';
import 'package:presentation/observers/observers.dart';
import 'package:project_repository/project_repository.dart';
import 'package:user_repository/user_repository.dart';

/// [bootstrap] initializes all dependencies and startup configurations
///
void bootstrap(Widget child) async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarBrightness: Brightness.dark,
    // ));

    initializeHive();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureLocalStorageDependencies();
    configureCloudStorageDependencies();
    configureCommonRepositoryDependencies();

    configureAuthenticationRepositoryDependencies();
    configureNotificationDependencies();
    configureChatRepositoryDependencies();
    configureMessagingRepositoryDependencies();
    configureProjectDependencies();
    configureBidDependencies();
    configureUserRepositoryDependencies();
    configureAppDependencies();

    initializeBlocObserver();
  } catch (e, s) {
    debugPrint("error at $e with stackTrace $s");
  }
  runApp(child);
}
