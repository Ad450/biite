import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/theme/theme.dart';

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
          color: ColorName.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? 20),
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
