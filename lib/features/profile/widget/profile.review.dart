import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.view.all.dart';
import 'package:biite/features/profile/widget/profile.rating.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileReview extends StatelessWidget {
  const ProfileReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "64 reviews",
              style: context.appTheme.textTheme.titleMedium?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.h),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Last review\n",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 12.8,
                      fontWeight: FontWeight.bold,
                      color: ColorName.fillColor,
                    ),
                  ),
                  TextSpan(
                    text: "Awesome job\n",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorName.onBackground,
                    ),
                  ),
                  TextSpan(
                    text: "- Ben Aduo",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: ColorName.onBackground,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Average rating",
              style: context.appTheme.textTheme.bodySmall?.copyWith(
                fontSize: 12.8,
                fontWeight: FontWeight.normal,
                color: ColorName.onBackground,
              ),
            ),
            SizedBox(height: 4.h),
            const ProfileRating(),
            SizedBox(height: 16.h),
            BiiteViewAll(onTap: () => context.push("/reviewDetail")),
          ],
        )
      ],
    );
  }
}
