import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.view.all.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreatedProjects extends StatelessWidget {
  const CreatedProjects({required this.projects, super.key});

  final List<ProjectModel> projects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Created projects",
                style: context.appTheme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              BiiteViewAll(onTap: () => context.push("/allCreatedProjects", extra: projects))
            ],
          ),
        ),
        SizedBox(height: 16.h),
        // show two latest projects
        ...projects
            .map(
              (e) => ProjectWidget(
                projectModel: e,
                onTap: () {
                  print("I am taping on it ");
                  context.push("/createdProjectDetail", extra: e);
                },
              ),
            )
            .take(2)
      ],
    );
  }
}
