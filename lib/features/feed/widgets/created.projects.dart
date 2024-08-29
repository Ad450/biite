import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/biite.view.all.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreatedProjects extends StatelessWidget {
  const CreatedProjects({super.key});

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
              BiiteViewAll(onTap: () => context.push("/allCreatedProjects"))
            ],
          ),
        ),
        // show first 5 latest projects
        SizedBox(height: 16.h),
        ...List.generate(
          4,
          (index) => ProjectWidget(
            text: "You",
            header: "Wireframes",
            trailing: "12/12/2023",
            onTap: () => context.push("/createdProjectDetail"),
          ),
        ),
      ],
    );
  }
}
