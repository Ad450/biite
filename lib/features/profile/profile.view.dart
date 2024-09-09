import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/profile/widget/portfolio.dart';
import 'package:biite/features/profile/widget/profile.appbar.dart';
import 'package:biite/features/profile/widget/profile.avatar.dart';
import 'package:biite/features/profile/widget/profile.review.dart';
import 'package:biite/gen/assets.gen.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56.h),
            const ProfileAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 24.h),
                    const ProfileAvatar(),
                    SizedBox(height: 24.h),
                    Text(
                      "Description",
                      style: context.appTheme.textTheme.titleMedium?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      dummyProjectDescription,
                      style: context.appTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorName.fillColor,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    const ProfileReview(),
                    SizedBox(height: 32.h),
                    Text(
                      "Portfolio",
                      style: context.appTheme.textTheme.titleMedium?.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Wrap(
                      runAlignment: WrapAlignment.start,
                      spacing: 10,
                      runSpacing: 10,
                      children: List.generate(
                        10,
                        (index) => Portfolio(image: Assets.images.portfolio.path),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
