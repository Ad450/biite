import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/features/search/widget/search.project.card.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchProjectDetail extends StatelessWidget {
  const SearchProjectDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteBack(),
            ),
            SizedBox(height: 40.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const BiiteAvatarWithText(name: "Hubert Adjei"),
                  SizedBox(height: 24.h),
                  const SearchProjectCard(
                    description: dummyProjectDescription,
                    title: "This is the title",
                    price: "500",
                    daysPosted: "10",
                    tags: ["UI/UX", "DESIGN", "FIGMA", "PHOTOSHOP"],
                    propositions: "16",
                  ),
                ],
              ),
            ),
            SizedBox(height: 112.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 56.w),
              child: BiiteTextButton(onPressed: () {}, text: "Make a proposition"),
            )
          ],
        ),
      ),
    );
  }
}
