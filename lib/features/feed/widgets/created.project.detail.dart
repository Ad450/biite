import 'package:biite/api/models/project.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.chip.dart';
import 'package:biite/core/presentation/widgets/biite.toast.dart';
import 'package:biite/features/feed/state/bid.bloc.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:biite/features/feed/widgets/file.widget.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatedProjectDetail extends StatelessWidget {
  const CreatedProjectDetail({required this.projectModel, super.key});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BiiteBack(onMessagePressed: () {}),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PeerProfileAvatar(ownerId: projectModel.ownerId),
                    SizedBox(height: 24.h),
                    Text(
                      projectModel.createdAt.day.toString(),
                      style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                    ),
                    Hero(
                      tag: projectModel.id!,
                      child: Text(
                        projectModel.title,
                        style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                      ),
                    ),
                    Text(
                      projectModel.description,
                      style: context.appTheme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorName.background,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...projectModel.tags.map(
                          (e) => BiiteChip(
                            text: e,
                            selected: false,
                            onSelected: (isSelected) {},
                          ),
                        ),
                        Text(
                          projectModel.rate.toString(),
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.primary,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    // all project files
                    ...projectModel.files.map(
                      (e) => FileWidget(
                        filename: e.split("/").last,
                        image: const Icon(Icons.download, color: ColorName.fillColor),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "Propositions",
                      style: context.appTheme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),

                    SizedBox(height: 16.h),
                    // first two propositions
                    _ProjectPropositions(projectId: projectModel.id!)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectPropositions extends StatelessWidget {
  const _ProjectPropositions({required this.projectId});

  final String projectId;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<BidBloc>()..fetchBidsByProjectId(projectId);

    return BlocConsumer<BidBloc, BidState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
      ),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        loading: (state) => const Align(alignment: Alignment.center, child: CupertinoActivityIndicator()),
        fetchBidsById: (state) => Column(
          children: state.bids.map((e) => PropositionWidget(bidModel: e)).toList(),
        ),
      ),
    );
  }
}
