import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.button.dart';
import 'package:biite/core/presentation/biite.chip.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropositionDetails extends StatelessWidget {
  const PropositionDetails({super.key});

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
            SizedBox(height: 32.h),
            SizedBox(height: 32.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BiiteAvatarWithText(name: "Emmanuel Adjei"),
                  SizedBox(height: 24.h),
                  Text(
                    "Sent 8 days ago",
                    style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                  ),
                  Text(
                    "Wireframes",
                    style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                  ),
                  Text(
                    dummyProjectDescription,
                    style: context.appTheme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: ColorName.fillColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    direction: Axis.horizontal,
                    children: ["WIREFRAME", "UI/UX"].map((e) => BiiteChip(text: e)).toList(),
                  ),
                  SizedBox(height: 97.h),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 263.w,
                      child: BiiteTextButton(onPressed: () {}, text: "Accept"),
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
