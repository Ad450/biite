import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FileWidget extends StatelessWidget {
  const FileWidget({required this.filename, super.key});
  final String filename;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true, // if file is selected - true else - false
      child: Container(
        height: 56.h,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: ColorName.onboardingBackground,
          borderRadius: BorderRadius.circular(4),
          border: const Border.fromBorderSide(
            BorderSide(color: ColorName.secondary),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              filename,
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 16,
                color: ColorName.text,
                fontWeight: FontWeight.normal,
              ),
            ),
            Image.asset(Assets.images.cancelIcon.path),
          ],
        ),
      ),
    );
  }
}
