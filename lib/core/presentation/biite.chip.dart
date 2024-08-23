import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteChip extends StatelessWidget {
  const BiiteChip({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      width: 89.w,
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.fillColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text.toUpperCase(),
          style: context.appTheme.textTheme.bodySmall?.copyWith(
            fontSize: 12.8,
            color: ColorName.fillColor,
          ),
        ),
      ),
    );
  }
}
