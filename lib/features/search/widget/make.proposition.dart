import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.multiline.textfield.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeProposition extends StatelessWidget {
  const MakeProposition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const BiiteBack(),
              SizedBox(height: 40.h),
              const BiiteAvatarWithText(name: "Hubert Adjei"),
              SizedBox(height: 48.h),
              Text(
                "Make a proposition",
                style: context.appTheme.textTheme.bodyMedium?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              BiiteMultilineTextfield(
                controller: TextEditingController(),
                minLines: 8,
                maxLines: 11,
              ),
              SizedBox(height: 149.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 56.h),
                child: BiiteTextButton(
                  onPressed: () {},
                  text: "Send",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
