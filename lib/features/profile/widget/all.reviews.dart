import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/profile/widget/review.container.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllReviews extends StatelessWidget {
  const AllReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BiiteBack(),
              // ...List.generate(11, (index) => const ReviewContainer())
              SizedBox(height: 40.h),
              // Expanded(
              //   child: SingleChildScrollView(
              //     child: Column(
              //       children: List.generate(11, (index) => const ReviewContainer()),
              //     ),
              //   ),
              // )
              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, i) => const ReviewContainer(),
                  separatorBuilder: (_, __) => SizedBox(height: 40.h),
                  itemCount: 12,
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
