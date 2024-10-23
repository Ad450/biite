import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/feed/widgets/in.charge.dart';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/chip.dart';
import 'package:project_repository/project_repository.dart';

class ActiveProjectDetail extends StatelessWidget {
  const ActiveProjectDetail({required this.project, super.key});

  final ProjectModel project;

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
                child: BiiteBack(onMessagePressed: () {}, showMessage: true, peerId: project.ownerId),
              ),
              SizedBox(height: 32.h),
              const InCharge(deadline: ": Not stated"),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PeerProfileAvatar(ownerId: project.ownerId),
                    SizedBox(height: 24.h),
                    Text(
                      "Posted ${convertDateTime(project.createdAt)}",
                      style: context.appTheme.textTheme.bodySmall?.copyWith(
                        fontSize: 12.8,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Hero(
                      tag: project.id!,
                      child: Text(
                        project.title,
                        style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                      ),
                    ),
                    Text(
                      project.description,
                      style: context.appTheme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorName.background,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10.h),
                    Wrap(
                      spacing: 10.w,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...project.tags.map(
                          (e) => BiiteChip(
                            text: e,
                            selected: false,
                            onSelected: (isSelected) {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "GHS ${project.rate.toString()}",
                        style: context.appTheme.textTheme.bodySmall?.copyWith(
                          fontSize: 16,
                          color: ColorName.primary,
                        ),
                      ),
                    ),
                    SizedBox(height: 97.h),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: SizedBox(
                    //     width: 263.w,
                    //     child: BiiteTextButton(
                    //       onPressed: () => context.push(
                    //         "/sendYourWork",
                    //         extra: project,
                    //       ),
                    //       text: sendYourWork,
                    //     ),
                    //   ),
                    // ),
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
