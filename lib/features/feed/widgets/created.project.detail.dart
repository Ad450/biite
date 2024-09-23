import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.chip.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatedProjectDetail extends StatelessWidget {
  const CreatedProjectDetail({required this.projectModel, super.key});

  final ProjectModel projectModel;

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
                child: BiiteBack(onMessagePressed: () {}),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BiiteAvatarWithText(),
                    SizedBox(height: 24.h),
                    Text(
                      projectModel.createdAt.day.toString(),
                      style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                    ),
                    Text(
                      projectModel.title,
                      style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                    ),
                    Text(
                      projectModel.description,
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
                        ...projectModel.tags.map(
                          (e) => BiiteChip(
                            text: e,
                            selected: false,
                            onSelected: (isSelected) {},
                          ),
                        ),
                        Text(
                          projectModel.rate.toString(),
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    // all project files
                    ...projectModel.files.map(
                      (e) => FileWidget(
                        filename: e.split("/").last,
                        image: const Icon(Icons.download, color: ColorName.fillColor),
                      ),
                    ),
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
