import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.auth.text.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.form.field.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.images.loginBubbles.path,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Login",
                style: context.appTheme.textTheme.titleMedium,
              ),
              SizedBox(height: 32.h),
              BiiteFormField(controller: TextEditingController(), hintText: firstName),
              SizedBox(height: 24.h),
              BiiteFormField(controller: TextEditingController(), hintText: lastName),
              SizedBox(height: 24.h),
              BiiteTextButton(onPressed: () => context.go("/home"), text: "Login"),
              SizedBox(height: 24.h),
              BiiteAuthText(
                onTap: () => context.go("/"),
                gettingStarted: "Getting Started ? ",
              )
            ],
          ),
        ),
      ),
    );
  }
}
