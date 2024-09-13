import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/feed/widgets/metric.tile.dart';
import 'package:biite/features/feed/widgets/total.gains.expanded.dart';
import 'package:biite/features/feed/widgets/total.projects.expanded.dart';
import 'package:biite/features/feed/widgets/total.request.expanded.dart';
import 'package:biite/features/feed/widgets/total.reviews.expanded.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MetricDetail extends StatelessWidget {
  const MetricDetail({super.key});

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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 32.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        details,
                        style: context.appTheme.textTheme.titleSmall?.copyWith(
                          fontSize: 20,
                          color: ColorName.fillColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    const MetricTile(
                      titleMetricScore: "27 k",
                      expandedWidget: TotalGainsExpanded(),
                      name: totalGainsDetail,
                    ),
                    const MetricTile(
                      titleMetricScore: "80",
                      expandedWidget: TotalProjectsExpanded(),
                      name: totalProjects,
                    ),
                    const MetricTile(
                      titleMetricScore: "120",
                      expandedWidget: TotalRequestExpanded(),
                      name: totalRequests,
                    ),
                    const MetricTile(
                      titleMetricScore: "64",
                      expandedWidget: TotalReviewsExpanded(),
                      name: totalReviews,
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
