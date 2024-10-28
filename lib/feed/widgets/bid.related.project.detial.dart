import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/feed/widgets/file.widget.dart';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/chip.dart';
import 'package:project_repository/project_repository.dart';

class BidRelatedProjectDetail extends StatelessWidget {
  const BidRelatedProjectDetail({required this.projectModel, super.key});

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
                child: BiiteBack(onMessagePressed: () {}, showMessage: true, peerId: projectModel.ownerId),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PeerProfileAvatar(ownerId: projectModel.ownerId),
                    SizedBox(height: 24.h),
                    Text(
                      "Posted ${convertDateTime(projectModel.createdAt)}",
                      style:
                          context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 8.h),
                    Hero(
                      tag: projectModel.id!,
                      child: Text(
                        projectModel.title,
                        style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                      ),
                    ),
                    Text(
                      projectModel.description,
                      style: context.appTheme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorName.background,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 16.h),
                    Wrap(
                      spacing: 10.w,
                      children: [
                        ...projectModel.tags.map(
                          (e) => BiiteChip(
                            text: e,
                            selected: false,
                            onSelected: (isSelected) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "GHS ${projectModel.rate}",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.primary,
                        ),
                      ),
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

                    // first two propositions
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
