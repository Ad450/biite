import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.bubble1.path),
            fit: BoxFit.cover,
          ),
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
                    style: theme.textTheme.displayLarge,
                  ),
                ),
              ),
              BiiteTextButton(
                onPressed: () => context.go("/onboarding"),
                text: discoverText,
              ),
              SizedBox(height: 37.h),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "You have an account? ",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                        color: ColorName.onBackground,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "Log-in",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
