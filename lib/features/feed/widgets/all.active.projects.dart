import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllActiveProjects extends StatelessWidget {
  const AllActiveProjects({required this.projects, super.key});

  final List<ProjectModel> projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BiiteBack(),
              // ...List.generate(11, (index) => const ReviewContainer())
              SizedBox(height: 40.h),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (_, i) => ProjectWidget(
                    projectModel: projects[i],
                  ),
                  separatorBuilder: (_, __) => SizedBox(height: 8.h),
                  itemCount: projects.length,
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
