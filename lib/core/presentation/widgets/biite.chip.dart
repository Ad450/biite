import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteChip extends StatelessWidget {
  const BiiteChip({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        // margin: const EdgeInsets.only(left: 8.0),
        height: 24.h,
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
      ),
    );
  }
}
