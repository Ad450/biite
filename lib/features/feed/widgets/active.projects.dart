import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/presentation/widgets/biite.view.all.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({super.key});

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
                activeProjects,
                style: context.appTheme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              BiiteViewAll(onTap: () => context.push("/allActiveProjects"))
            ],
          ),
        ),
        // show first 2 latest projects
        SizedBox(height: 16.h),
        ...List.generate(
          3,
          (i) => ProjectWidget(
            text: "Francisco Fisher",
            header: "Wireframes",
            trailing: "Active",
            onTap: () => context.push("/activeProjectDetail"),
          ),
        )
      ],
    );
  }
}
