import 'package:bid_repository/bid_repository.dart';
import 'package:biite/common/biite.avatar.with.text.dart';
import 'package:biite/common/biite.back.dart';
import 'package:biite/di/biite.di.dart';
import 'package:biite/feed/state/accept.bid.bloc.dart';
import 'package:biite/feed/state/feed.state.dart';
import 'package:configuration/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:presentation/gen/colors.gen.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/button.dart';
import 'package:presentation/widgets/chip.dart';
import 'package:presentation/widgets/toast.dart';

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
              child: BiiteBack(onMessagePressed: () {}, showMessage: true, peerId: bid.ownerId),
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

                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 263.w,
                      child: _PropositionDetailButton(
                        projectId: bid.projectId,
                        bidId: bid.id!,
                        bidStatus: bid.status,
                      ),
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
    required this.bidStatus,
    super.key,
  });

  final String projectId;
  final String bidId;
  final String bidStatus;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<AcceptBidBloc>();
    return BlocConsumer<AcceptBidBloc, AcceptBidState>(
      bloc: bloc,
      listener: (_, state) => state.maybeMap(
        orElse: () => null,
        error: (state) => showToast(state.message),
        accept: (_) => showToast("Bid accepted!!"),
      ),
      builder: (_, state) => LoadingButton(
        isLoading: state.maybeMap(orElse: () => false, loading: (_) => true),
        onTap: bidStatus == "accepted" ? () {} : () => bloc.acceptBid(bidId: bidId, projectId: projectId),
        buttonText: bidStatus == "accepted" ? "Accepted" : "Accept",
      ),
    );
  }
}
