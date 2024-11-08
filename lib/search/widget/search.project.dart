import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/search/widget/search.project.card.dart';
import 'package:configuration/configuration.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:project_repository/project_repository.dart';

class SearchProject extends StatelessWidget {
  const SearchProject({required this.project, super.key});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("/searchProjectDetail", extra: project),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16.h),
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
                child: PeerProfileAvatar(ownerId: project.ownerId),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: const BoxDecoration(
                  color: ColorName.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SearchProjectCard(
                      description: project.description,
                      title: project.title,
                      price: "GHS ${project.rate}",
                      daysPosted: convertDateTime(project.createdAt),
                      tags: project.tags,
                      projectId: project.id!,
                      isDetail: false,
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
