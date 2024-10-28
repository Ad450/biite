import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/assets.gen.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';

class FileWidget extends StatelessWidget {
  const FileWidget({required this.filename, this.image, this.onTap, super.key});
  final String filename;
  final Widget? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true, // if file is selected - true else - false
      child: Container(
        height: 56.h,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 8),
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
            Flexible(
              child: Text(
                filename,
                style: context.appTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 16,
                  color: ColorName.text,
                  fontWeight: FontWeight.normal,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: onTap,
              child: image ?? Image.asset(Assets.images.cancelIcon.path),
            )
          ],
        ),
      ),
    );
  }
}
