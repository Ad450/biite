import 'dart:io';

import 'package:biite/core/app/app.router.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Biite extends StatelessWidget {
  const Biite({super.key});

  final designSize = const Size(375, 812);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? ScreenUtilInit(
            designSize: designSize,
            child: MaterialApp.router(
              routerConfig: router,
              theme: AppTheme().materialLightTheme,
              title: "biite",
            ),
          )
        : ScreenUtilInit(
            designSize: designSize,
            child: CupertinoApp.router(
              routerConfig: router,
              theme: AppTheme().cupertinoLightTheme,
            ),
          );
  }
}
