import 'package:biite/api/models/project.model.dart';
import 'package:biite/api/utils/functions.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/search/widget/search.project.card.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
                    price: project.rate.toString(),
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
