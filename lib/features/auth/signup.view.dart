import 'package:biite/core/presentation/biite.auth.text.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.form.field.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.loginBubbles.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 120.h),
                Text(
                  signup,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 32.h),
                BiiteFormField(controller: TextEditingController(), hintText: firstName),
                SizedBox(height: 24.h),
                BiiteFormField(controller: TextEditingController(), hintText: lastName),
                SizedBox(height: 24.h),
                BiiteFormField(controller: TextEditingController(), hintText: email),
                SizedBox(height: 24.h),
                BiiteFormField(controller: TextEditingController(), hintText: password),
                SizedBox(height: 102.h),
                BiiteTextButton(onPressed: () => context.go("/home"), text: signup),
                SizedBox(height: 40.h),
                BiiteAuthText(text: login, onTap: () => context.push("/login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
