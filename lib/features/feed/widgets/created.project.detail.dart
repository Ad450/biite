import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/biite.back.dart';
import 'package:biite/core/presentation/biite.chip.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatedProjectDetail extends StatelessWidget {
  const CreatedProjectDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BiiteBack(onMessagePressed: () {}, showMessage: true),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BiiteAvatarWithText(name: "Emmanuel Adjei"),
                    SizedBox(height: 24.h),
                    Text(
                      "Created 8 days ago",
                      style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                    ),
                    Text(
                      "Title of project",
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
                    Row(
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
                    SizedBox(height: 16.h),
                    // all project files
                    const FileWidget(filename: "filename.jpg", image: Icon(Icons.download, color: ColorName.fillColor)),
                    const FileWidget(filename: "filename.jpg", image: Icon(Icons.download, color: ColorName.fillColor)),
                    SizedBox(height: 16.h),
                    Text(
                      "Propositions",
                      style: context.appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),

                    SizedBox(height: 16.h),
                    // first two propositions
                    ...List.generate(6, (i) => const PropositionWidget())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
