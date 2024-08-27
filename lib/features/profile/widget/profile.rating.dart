import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileRating extends StatelessWidget {
  const ProfileRating({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: SizedBox(
        height: 16.h,
        width: 100.w,
        child: AnimatedRatingStars(
          initialRating: 3,
          minRating: 0.0,
          maxRating: 5.0,
          filledColor: ColorName.primary,
          emptyColor: ColorName.onboardingBackground,
          filledIcon: Icons.star,
          halfFilledIcon: Icons.star_half,
          emptyIcon: Icons.star_border,
          onChanged: (double rating) {
            // Handle the rating change here
            debugPrint('Rating: $rating');
          },
          displayRatingValue: true,
          interactiveTooltips: true,
          customFilledIcon: Icons.star,
          customHalfFilledIcon: Icons.star_half,
          customEmptyIcon: Icons.star_border,
          starSize: 12.0,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeInOut,
          readOnly: false,
        ),
      ),
    );
  }
}
