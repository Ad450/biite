import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/feed/widgets/active.projects.dart';
import 'package:biite/features/feed/widgets/created.projects.dart';
import 'package:biite/features/feed/widgets/gains.widget.dart';
import 'package:biite/features/feed/widgets/feed.propositions.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 56.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              feed,
              style: context.appTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      resume,
                      style: context.appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const GainsWidget(),
                  SizedBox(height: 26.h),
                  // active projects
                  const ActiveProjects(),
                  SizedBox(height: 26.h),
                  // created projects
                  const CreatedProjects(),
                  SizedBox(height: 26.h),
                  const FeedPropositions()

                  // propositions
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
