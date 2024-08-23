import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.chip.dart';
import 'package:biite/features/feed/widgets/in.charge.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteBack(),
            ),
            SizedBox(height: 32.h),
            const InCharge(deadline: "28/03/2023"),
            SizedBox(height: 32.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteAvatarWithText(name: "Emmanuel Adjei"),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Posted 8 days ago",
                style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Wireframes",
                style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                dummyProjectDescription,
                style: context.appTheme.textTheme.bodyMedium?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: ColorName.fillColor,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BiiteChip(text: "WIREFRAME"),
                  Text(
                    "\$ 600",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      color: ColorName.primary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 97.h),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 263.w,
                child: BiiteTextButton(onPressed: () {}, text: sendYourWork),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
