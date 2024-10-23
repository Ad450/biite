import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/search/widget/search.project.card.dart';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/toast.dart';
import 'package:project_repository/project_repository.dart';

class SearchProjectDetail extends StatelessWidget {
  const SearchProjectDetail({required this.project, super.key});

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
              child: BiiteBack(onMessagePressed: () {}, showMessage: true, peerId: project.ownerId),
            ),
            SizedBox(height: 40.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PeerProfileAvatar(ownerId: project.ownerId, background: ColorName.white),
                  SizedBox(height: 24.h),
                  SearchProjectCard(
                    description: project.description,
                    title: project.title,
                    price: "GHS ${project.rate}",
                    daysPosted: convertDateTime(project.createdAt),
                    tags: project.tags,
                    projectId: project.id!,
                    isDetail: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: 112.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 56.w),
              child: BiiteTextButton(
                  onPressed: () => project.status.toLowerCase() == "active"
                      ? showToast("Bidding is over for this project")
                      : context.push("/makeProposition", extra: project),
                  text: "Make a proposition"),
            )
          ],
        ),
      ),
    );
  }
}
