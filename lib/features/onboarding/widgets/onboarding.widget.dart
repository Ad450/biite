import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    required this.descriptionText,
    required this.image,
    required this.backgroundImage,
    super.key,
  });

  final String descriptionText;
  final String image;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 66),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 48.h),
              Text(
                biite,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 91.h),
              SizedBox(height: 370.h, width: 370.w, child: Image.asset(image, fit: BoxFit.cover)),
              SizedBox(height: 91.h),
              Text(
                descriptionText,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  color: ColorName.onBackground,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
