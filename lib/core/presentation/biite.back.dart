import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BiiteBack extends StatelessWidget {
  const BiiteBack({this.showMessage = false, this.onMessagePressed, super.key});

  final bool showMessage;
  final VoidCallback? onMessagePressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: Row(
        children: [
          SizedBox(
            height: 24.h,
            width: 66.w,
            child: Row(
              children: [
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
          const Spacer(),
          if (showMessage)
            IconButton(
                onPressed: () {
                  if (onMessagePressed != null) {
                    onMessagePressed!();
                  }
                },
                icon: const Icon(Icons.near_me, size: 30))
        ],
      ),
    );
  }
}
