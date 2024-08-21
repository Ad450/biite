import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    required this.descriptionText,
    required this.image,
    super.key,
  });

  final String descriptionText;
  final String image;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
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
    );
  }
}
