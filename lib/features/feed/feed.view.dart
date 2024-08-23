import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.view.all.dart';
import 'package:biite/features/feed/widgets/gains.widget.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 56.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                feed,
                style: context.appTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    activeProjects,
                    style: context.appTheme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  BiiteViewAll(onTap: () {})
                ],
              ),
            ),
            SizedBox(height: 16.h),
            const ProjectWidget(owner: "Francisco Fisher", projectName: "Wireframes", status: "Active"),
            SizedBox(height: 16.h),
            const ProjectWidget(owner: "Amel Fisher", projectName: "Wireframes", status: "Pending")
          ],
        ),
      ),
    );
  }
}
