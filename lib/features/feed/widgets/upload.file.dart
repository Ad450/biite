import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({required this.onTap, super.key});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(color: ColorName.multiline),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Upload file",
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 16,
                color: ColorName.text,
                fontWeight: FontWeight.normal,
              ),
            ),
            GestureDetector(onTap: onTap, child: Image.asset(Assets.images.uploadIcon.path)),
          ],
        ),
      ),
    );
  }
}
