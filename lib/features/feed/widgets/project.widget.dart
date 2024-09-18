import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    required this.projectModel,
    super.key,
  });

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () => context.push("/activeProjectDetail", extra: projectModel),
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
                  projectModel.title,
                  style: context.appTheme.textTheme.titleSmall?.copyWith(
                    fontSize: 20,
                    color: ColorName.onBackground,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        projectModel.description,
                        style: context.appTheme.textTheme.titleSmall
                            ?.copyWith(fontSize: 16, color: ColorName.fillColor, fontWeight: FontWeight.normal),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      projectModel.status,
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
