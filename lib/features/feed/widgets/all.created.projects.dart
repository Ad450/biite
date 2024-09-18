import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllCreatedProjects extends StatelessWidget {
  const AllCreatedProjects({super.key});

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

              // Expanded(
              //   child: ListView.separated(
              //     itemBuilder: (_, i) => ProjectWidget(
              //       text: "You",
              //       header: "Wireframes",
              //       trailing: "12/12/2023",
              //       onTap: () => context.push("/createdProjectDetail"),
              //     ),
              //     separatorBuilder: (_, __) => SizedBox(height: 8.h),
              //     itemCount: 12,
              //   ),
              // ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
