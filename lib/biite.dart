import 'package:biite/core/app/app.router.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

class BiiteInitial extends StatelessWidget {
  const BiiteInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bubble1.path),
            fit: BoxFit.cover,
          ),
          color: ColorName.onboardingBackground,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 66.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 218.h, bottom: 257.h),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    biite,
                    style: context.appTheme.textTheme.displayLarge,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
