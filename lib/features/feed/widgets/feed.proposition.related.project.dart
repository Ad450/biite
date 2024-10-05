import 'package:biite/api/models/bid.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/features/feed/widgets/created.project.detail.dart';
import 'package:biite/features/search/state/fetch.single.project.bloc.dart';
import 'package:biite/features/search/state/search.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedProject extends StatelessWidget {
  const RelatedProject({required this.bid, super.key});

  final BidModel bid;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSingleProjectsBloc, FetchSingleProjectState>(
      bloc: getIt.get<FetchSingleProjectsBloc>()..fetchProject(bid.projectId),
      builder: (_, state) => state.maybeMap(
        orElse: () => const _RelatedProjectOrElse(
          isLoading: false,
        ),
        loading: (state) => const _RelatedProjectOrElse(isLoading: true),
        fetch: (state) => CreatedProjectDetail(projectModel: state.model),
      ),
    );
  }
}

class _RelatedProjectOrElse extends StatelessWidget {
  const _RelatedProjectOrElse({required this.isLoading, super.key});

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: Center(
        child: isLoading
            ? Container(
                width: 60.0,
                height: 60.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: ColorName.primary,
                  shape: BoxShape.circle,
                ),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              )
            : Text(
                "Could not fetch project details",
                style: context.appTheme.textTheme.bodySmall
                    ?.copyWith(color: ColorName.background, fontWeight: FontWeight.normal),
              ),
      ),
    );
  }
}
