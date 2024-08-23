import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BiiteBack extends StatelessWidget {
  const BiiteBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: SizedBox(
        height: 24.h,
        width: 66.w,
        child: Row(
          children: <Widget>[
            const Icon(Icons.arrow_back, color: ColorName.fillColor, size: 16),
            SizedBox(width: 4.w),
            Text(
              back,
              style: context.appTheme.textTheme.titleSmall?.copyWith(
                fontSize: 18,
                color: ColorName.fillColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
