import 'package:biite/core/app/app.theme.dart';
import 'package:biite/features/feed/widgets/project.detail.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    required this.owner,
    required this.projectName,
    required this.status,
    super.key,
  });

  final String projectName;
  final String owner;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () => context.push("/project-detail"),
        child: Container(
          width: double.infinity,
          height: 102.h,
          decoration: const BoxDecoration(color: ColorName.white),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectName,
                  style: context.appTheme.textTheme.titleSmall?.copyWith(
                    fontSize: 20,
                    color: ColorName.onBackground,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      owner,
                      style: context.appTheme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: ColorName.fillColor, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      status,
                      style: context.appTheme.textTheme.titleSmall
                          ?.copyWith(fontSize: 16, color: ColorName.fillColor, fontWeight: FontWeight.normal),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
