import 'package:biite/feed/widgets/project.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/view.all.dart';
import 'package:project_repository/project_repository.dart';

class CreatedProjects extends StatelessWidget {
  const CreatedProjects({required this.projects, super.key});

  final List<ProjectModel> projects;

  @override
  Widget build(BuildContext context) {
    return projects.isEmpty
        ? const SizedBox()
        : Column(
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
                        fontSize: 20,
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
                      onTap: () => context.push("/createdProjectDetail", extra: e),
                    ),
                  )
                  .take(2)
            ],
          );
  }
}
