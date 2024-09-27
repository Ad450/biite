import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/dashboard/bloc/active.projects.bloc.dart';
import 'package:biite/features/dashboard/bloc/created.projects.bloc.dart';
import 'package:biite/features/dashboard/bloc/dashboard.state.dart';
import 'package:biite/features/feed/widgets/active.projects.dart';
import 'package:biite/features/feed/widgets/created.projects.dart';
import 'package:biite/features/feed/widgets/gains.widget.dart';
import 'package:biite/features/feed/widgets/feed.propositions.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:biite/locales.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 56.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              feed,
              style: context.appTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      resume,
                      style: context.appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const GainsWidget(),
                  const _ActiveProjectsFeed(),
                  SizedBox(height: 26.h),
                  const _CreatedProjectsFeed(),
                  SizedBox(height: 26.h),
                  const FeedPropositions()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CreatedProjectsFeed extends StatelessWidget {
  const _CreatedProjectsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreatedProjectBloc, CreatedProjectState>(
      bloc: getIt<CreatedProjectBloc>()..fetchProjects(),
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        loading: (_) => const Align(alignment: Alignment.center, child: CupertinoActivityIndicator()),
        fetch: (state) => CreatedProjects(
          projects: state.projects,
        ),
      ),
    );
  }
}

class _ActiveProjectsFeed extends StatelessWidget {
  const _ActiveProjectsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ActiveProjectsBloc, ActiveProjectState>(
      bloc: getIt<ActiveProjectsBloc>()..fetchProjects(),
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        fetch: (state) => ActiveProjects(
          projects: state.projects,
        ),
      ),
    );
  }
}
