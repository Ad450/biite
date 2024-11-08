import 'package:biite/feed/widgets/bar.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/theme/theme.dart';

class GainsWidget extends StatelessWidget {
  const GainsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/feed-details"),
      child: Container(
          height: 240.h,
          width: double.infinity,
          decoration: const BoxDecoration(color: ColorName.onboardingBackground),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: <Widget>[
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const BarWidget(gain: 60, color: ColorName.textfield),
                      SizedBox(width: 16.w),
                      const BarWidget(gain: 80, color: ColorName.textfield),
                      SizedBox(width: 16.w),
                      const BarWidget(gain: 100, color: ColorName.textfield),
                      SizedBox(width: 16.w),
                      const BarWidget(gain: 70, color: ColorName.primary),
                    ],
                  ),
                ),
                SizedBox(width: 32.w),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 55.h),
                      Text(
                        totalGains,
                        style: context.appTheme.textTheme.titleSmall?.copyWith(
                          fontSize: 18,
                          color: ColorName.fillColor,
                        ),
                      ),
                      Text(
                        "27 k",
                        style: context.appTheme.textTheme.titleSmall?.copyWith(
                          fontSize: 60,
                          color: ColorName.onBackground,
                        ),
                      ),
                      Text(
                        "- 16%",
                        style: context.appTheme.textTheme.titleSmall?.copyWith(
                          fontSize: 18,
                          color: ColorName.fillColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
