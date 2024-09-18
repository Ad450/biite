import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.list.loading.dart';
import 'package:biite/core/presentation/widgets/biite.view.all.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/dashboard/bloc/project.bloc.dart';
import 'package:biite/features/feed/widgets/project.widget.dart';
import 'package:biite/locales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ActiveProjects extends StatelessWidget {
  const ActiveProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectBloc, DashboardState>(
      bloc: getIt.get<ProjectBloc>()..fetchProjects(),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        loading: (state) => const BiiteListLoading(),
        fetchActiveProjects: (state) => state.projects.isEmpty
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
                            fontSize: 25,
                          ),
                        ),
                        BiiteViewAll(onTap: () => context.push("/allActiveProjects", extra: state.projects))
                      ],
                    ),
                  ),
                  // show first 2 latest projects
                  SizedBox(height: 16.h),

                  ...state.projects.map((e) => ProjectWidget(projectModel: e)).take(2)
                ],
              ),
      ),
    );
  }
}
