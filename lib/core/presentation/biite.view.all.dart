import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BiiteViewAll extends StatelessWidget {
  const BiiteViewAll({
    required this.onTap,
    this.borderRadius,
    super.key,
  });

  final VoidCallback onTap;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34.h,
        width: 83.w,
        decoration: BoxDecoration(
          color: ColorName.primaryAccent,
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        child: Center(
          child: Text(
            viewAll,
            style: context.appTheme.textTheme.bodyMedium?.copyWith(
              fontSize: 16,
              color: ColorName.onBackground,
            ),
          ),
        ),
      ),
    );
  }
}
