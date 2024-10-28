import 'package:biite/feed/widgets/project.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/locales.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/view.all.dart';
import 'package:project_repository/project_repository.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({required this.projects, super.key});

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
                      activeProjects,
                      style: context.appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    BiiteViewAll(onTap: () => context.push("/allActiveProjects", extra: projects))
                  ],
                ),
              ),
              // show first 2 latest projects
              SizedBox(height: 16.h),

              ...projects.map((e) => ProjectWidget(projectModel: e)).take(2)
            ],
          );
  }
}
