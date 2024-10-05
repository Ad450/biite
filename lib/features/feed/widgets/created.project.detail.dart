import 'package:biite/api/models/project.model.dart';
import 'package:biite/api/utils/functions.dart';
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
import 'package:go_router/go_router.dart';

class CreatedProjectDetail extends StatelessWidget {
  const CreatedProjectDetail({required this.projectModel, super.key});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => getIt.get<BidBloc>()..fetchBidsByProjectId(projectModel.id!),
      child: Scaffold(
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
                        "Posted ${convertDateTime(projectModel.createdAt)}",
                        style: context.appTheme.textTheme.bodySmall
                            ?.copyWith(fontSize: 12.8, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 8.h),
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
                      SizedBox(height: 16.h),
                      Wrap(
                        spacing: 10.w,
                        children: [
                          ...projectModel.tags.map(
                            (e) => BiiteChip(
                              text: e,
                              selected: false,
                              onSelected: (isSelected) {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "GHS ${projectModel.rate}",
                          style: context.appTheme.textTheme.bodySmall?.copyWith(
                            fontSize: 16,
                            color: ColorName.primary,
                          ),
                        ),
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
        fetchBidsById: (state) => state.bids.isEmpty
            ? Align(
                alignment: Alignment.center,
                child: Text(
                  "No propositions yet",
                  style: context.appTheme.textTheme.bodySmall?.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorName.background,
                  ),
                ),
              )
            : Column(
                children: state.bids
                    .map((e) => PropositionWidget(
                          bidModel: e,
                          onTap: () => context.push(
                            "/propositionDetail",
                            extra: e,
                          ),
                        ))
                    .toList(),
              ),
      ),
    );
  }
}
