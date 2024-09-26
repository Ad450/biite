import 'package:biite/api/models/bid.model.dart';
import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.avatar.with.text.dart';
import 'package:biite/core/presentation/widgets/biite.back.dart';
import 'package:biite/core/presentation/widgets/biite.button.dart';
import 'package:biite/core/presentation/widgets/biite.chip.dart';
import 'package:biite/features/feed/state/bid.bloc.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:biite/gen/colors.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropositionDetails extends StatelessWidget {
  const PropositionDetails({required this.bid, super.key});

  final BidModel bid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.onboardingBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BiiteBack(onMessagePressed: () {}, showMessage: true),
            ),
            SizedBox(height: 32.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OwnerProfileAvatar(),
                  SizedBox(height: 24.h),
                  Text(
                    "Sent ${bid.createdAt}",
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
                      color: ColorName.fillColor,
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
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 263.w,
                      child: _PropositionDetailButton(projectId: bid.projectId, bidId: bid.id!),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PropositionDetailButton extends StatelessWidget {
  const _PropositionDetailButton({
    required this.bidId,
    required this.projectId,
    super.key,
  });

  final String projectId;
  final String bidId;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<BidBloc>();
    return BlocBuilder<BidBloc, BidState>(
      bloc: bloc,
      builder: (_, state) => state.maybeMap(
        orElse: () => BiiteTextButton(
          onPressed: () => bloc.acceptBid(bidId: bidId, projectId: projectId),
          text: "Accept",
        ),
        loading: (_) => const CupertinoActivityIndicator(),
      ),
    );
  }
}
