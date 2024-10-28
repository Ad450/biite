import 'package:bid_repository/bid_repository.dart';
import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/dashboard/bloc/dashboard.state.dart';
import 'package:biite/dashboard/bloc/fetch.single.project.bloc.dart';
import 'package:biite/di/biite.di.dart';
import 'package:configuration/configuration.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/chip.dart';

class SentBidDetails extends StatelessWidget {
  const SentBidDetails({required this.bid, super.key});

  final BidModel bid;

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
                child: BiiteBack(showMessage: false),
              ),
              SizedBox(height: 32.h),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PeerProfileAvatar(ownerId: bid.ownerId, background: ColorName.white),
                    SizedBox(height: 24.h),
                    Text(
                      "Sent ${convertDateTime(bid.createdAt)}",
                      style: context.appTheme.textTheme.bodySmall?.copyWith(fontSize: 12.8),
                    ),
                    // Text(
                    //   bid.,
                    //   style: context.appTheme.textTheme.titleMedium?.copyWith(fontSize: 25),
                    // ),
                    Text(
                      bid.description,
                      style: context.appTheme.textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: ColorName.background,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      direction: Axis.horizontal,
                      children: bid.tags
                          .map((e) => BiiteChip(
                                text: e,
                                selected: false,
                                onSelected: (isSelected) {},
                              ))
                          .toList(),
                    ),

                    SizedBox(height: 97.h),
                    // show Related project
                    _RelatedProject(projectId: bid.projectId)
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

class _RelatedProject extends StatelessWidget {
  const _RelatedProject({required this.projectId, super.key});

  final String projectId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSingleProjectBloc, FetchSingleProjectState>(
      bloc: getIt.get<FetchSingleProjectBloc>()..fetchProject(projectId),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        loading: (state) => const Align(
          alignment: Alignment.center,
          child: CupertinoActivityIndicator(color: ColorName.background),
        ),
        fetch: (state) => GestureDetector(
          onTap: () => context.push("/bidRelatedProjectDetail", extra: state.project),
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
                    tag: state.project.id!,
                    child: Text(
                      state.project.title,
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
                          state.project.description,
                          style: context.appTheme.textTheme.titleSmall
                              ?.copyWith(fontSize: 14.sp, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        state.project.status,
                        style: context.appTheme.textTheme.titleSmall
                            ?.copyWith(fontSize: 16, color: ColorName.onBackground, fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
