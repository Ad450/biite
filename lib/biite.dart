import 'package:biite/core/app/app.router.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class Biite extends StatelessWidget {
  const Biite({super.key});

  final designSize = const Size(375, 812);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      child: MaterialApp.router(
        routerConfig: router,
        theme: AppTheme().materialLightTheme,
        title: "biite",
      ),
    );
  }
}
