import 'package:biite/biite.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    configureDependencies();
  } catch (e) {
    debugPrint(e.toString());
  }
  runApp(const Biite());
}
