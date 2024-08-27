import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/profile/widget/profile.rating.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 108.h,
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Portfolio",
                style: context.appTheme.textTheme.titleMedium?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "12/12/2023",
                style: context.appTheme.textTheme.bodySmall?.copyWith(
                  fontSize: 12.8,
                  fontWeight: FontWeight.normal,
                  color: ColorName.onBackground,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            dummyReview,
            style: context.appTheme.textTheme.bodySmall?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: ColorName.onBackground,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Rating",
            style: context.appTheme.textTheme.bodySmall?.copyWith(
              fontSize: 12.8,
              fontWeight: FontWeight.normal,
              color: ColorName.onBackground,
            ),
          ),
          SizedBox(height: 4.h),
          const ProfileRating(),
        ],
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text(
      //           "Portfolio",
      //           style: context.appTheme.textTheme.titleMedium?.copyWith(
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         SizedBox(height: 8.h),
      //         Text(
      //           dummyReview,
      //           style: context.appTheme.textTheme.bodySmall?.copyWith(
      //             fontSize: 16,
      //             fontWeight: FontWeight.normal,
      //             color: ColorName.onBackground,
      //           ),
      //         ),
      //         SizedBox(height: 8.h),
      //         Text(
      //           "Rating",
      //           style: context.appTheme.textTheme.bodySmall?.copyWith(
      //             fontSize: 12.8,
      //             fontWeight: FontWeight.normal,
      //             color: ColorName.onBackground,
      //           ),
      //         ),
      //         const ProfileRating(),
      //       ],
      //     ),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text(
      //           "12/12/2023",
      //           style: context.appTheme.textTheme.bodySmall?.copyWith(
      //             fontSize: 12.8,
      //             fontWeight: FontWeight.normal,
      //             color: ColorName.onBackground,
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
