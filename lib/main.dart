import 'package:biite/biite.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/state/biite.observer.dart';
import 'package:biite/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    await Hive.initFlutter();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureDependencies();
    Bloc.observer = BiiteObserver();
  } catch (e) {
    debugPrint(e.toString());
  }
  runApp(const Biite());
}
