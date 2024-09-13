import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.multiline.textfield.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/upload.file.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendYourWork extends StatelessWidget {
  const SendYourWork({super.key});

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
              const BiiteAvatarWithText(name: "Emmanuel Adjei"),
              SizedBox(height: 48.h),
              Text(
                sendYourWork,
                style: context.appTheme.textTheme.titleSmall?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.h),
              BiiteMultilineTextfield(controller: TextEditingController()),
              SizedBox(height: 24.h),
              UploadFile(onTap: () {}),
              SizedBox(height: 24.h),
              // show file if chosen
              const FileWidget(filename: "filename"),
              SizedBox(height: 69.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 56.w),
                child: BiiteTextButton(onPressed: () {}, text: "Send"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
