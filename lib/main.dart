import 'package:biite/biite.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/biite.observer.dart';
import 'package:biite/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:workmanager/workmanager.dart';

/// Works on only Android for now
/// Need to pay my Apple developer dues to continue with Push Notifcation
/// Menni sika, slow...
// @pragma('vm:entry-point') // Mandatory if the App is obfuscated or using Flutter 3.1+
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     debugPrint("Native called background task: $task");
//     if (task == "sendNotification") {
//       final messaging = getIt.get<CloudMessaging>();
//       messaging.sendNotification(roomId: inputData!['roomId'], senderId: inputData['senderId']);
//       debugPrint("..........// ......schedules");
//     }
//     return Future.value(true);
//   });
// }

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarIconBrightness: Brightness.light,
    //   statusBarBrightness: Brightness.dark,
    // ));

    await Hive.initFlutter();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureDependencies();
    Bloc.observer = BiiteObserver();
    getIt.get<FirebaseFirestore>().settings = const Settings(persistenceEnabled: true);

    // Workmanager().initialize(callbackDispatcher, isInDebugMode: true);
  } catch (e) {
    debugPrint(e.toString());
  }
  runApp(const Biite());
}
