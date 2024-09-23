import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.chip.dart';
import 'package:biite/features/feed/widgets/in.charge.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ActiveProjectDetail extends StatelessWidget {
  const ActiveProjectDetail({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteBack(onMessagePressed: () {}, showMessage: true),
            ),
            SizedBox(height: 32.h),
            const InCharge(deadline: "28/03/2023"),
            SizedBox(height: 32.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BiiteAvatarWithText(),
                  SizedBox(height: 24.h),
                  Text(
                    "Posted ${project.createdAt.day} days ago",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                  ),
                  Text(
                    project.title,
                    style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                  ),
                  Text(
                    project.description,
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
                      ...project.tags.map(
                        (e) => BiiteChip(
                          text: e,
                          selected: false,
                          onSelected: (isSelected) {},
                        ),
                      ),
                      Text(
                        project.rate.toString(),
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 97.h),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 263.w,
                      child: BiiteTextButton(onPressed: () => context.push("/sendYourWork"), text: sendYourWork),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
