import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:project_repository/project_repository.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    required this.projectModel,
    this.onTap,
    super.key,
  });

  final ProjectModel projectModel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => context.push("/activeProjectDetail", extra: projectModel),
      child: Container(
        width: double.infinity,
        // height: 102.h,
        decoration: BoxDecoration(
          color: ColorName.white,
          border: Border(
            bottom: BorderSide(
              color: ColorName.hintColor.withOpacity(0.1),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: projectModel.id!,
                child: Text(
                  projectModel.title,
                  style: context.appTheme.textTheme.titleSmall?.copyWith(
                    fontSize: 18.sp,
                    color: ColorName.onBackground,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      projectModel.description,
                      style: context.appTheme.textTheme.titleSmall
                          ?.copyWith(fontSize: 14.sp, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    projectModel.status,
                    style: context.appTheme.textTheme.titleSmall
                        ?.copyWith(fontSize: 16, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
