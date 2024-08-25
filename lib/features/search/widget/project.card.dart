import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.chip.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 74.h,
              decoration: const BoxDecoration(color: ColorName.searchCard),
              child: const BiiteAvatarWithText(name: "Emmanuel Adjei"),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: const BoxDecoration(
                color: ColorName.onboardingBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Posted 8 days ago",
                    style:
                        context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    "This is the title",
                    style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    dummyProjectDescription,
                    style: context.appTheme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorName.fillColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "16 propositions",
                        style: context.appTheme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "\$ 600",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  const Wrap(
                    spacing: 8,
                    direction: Axis.horizontal,
                    children: [
                      BiiteChip(text: "UI/UX"),
                      BiiteChip(text: "DESIGN"),
                      BiiteChip(text: "FIGMA"),
                      BiiteChip(text: "PHOTOSHOP"),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
