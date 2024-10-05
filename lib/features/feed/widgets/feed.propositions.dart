import 'package:biite/core/app/app.theme.dart';
import 'package:biite/core/di/biite.di.dart';
import 'package:biite/core/presentation/widgets/biite.view.all.dart';
import 'package:biite/features/feed/state/bid.bloc.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:biite/features/feed/state/sent.bid.bloc.dart';
import 'package:biite/features/feed/widgets/proposition.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FeedPropositions extends StatelessWidget {
  const FeedPropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BidBloc, BidState>(
      bloc: getIt.get<BidBloc>()..fetchReceivedBids(),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        fetchReceivedBids: (state) => state.bids.isEmpty
            ? const SizedBox()
            : Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Received Bids",
                          style: context.appTheme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        BiiteViewAll(
                          onTap: () => context.push(
                            "/allPropositions",
                            extra: {
                              "bids": state.bids,
                              "isSent": false,
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  // show first 2 latest projects
                  SizedBox(height: 16.h),
                  ...state.bids.map((e) => PropositionWidget(bidModel: e, isFeed: true, isSent: false)).take(2),
                ],
              ),
      ),
    );
  }
}

class FeedSentPropositions extends StatelessWidget {
  const FeedSentPropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SentBidBloc, SentBidState>(
      bloc: getIt.get<SentBidBloc>()..fetchSentBids(),
      builder: (_, state) => state.maybeMap(
        orElse: () => const SizedBox(),
        fetch: (state) => state.bids.isEmpty
            ? const SizedBox()
            : Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sent Bids",
                          style: context.appTheme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        BiiteViewAll(
                          onTap: () => context.push(
                            "/allPropositions",
                            extra: {
                              "bids": state.bids,
                              "isSent": true,
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  // show first 2 latest projects
                  SizedBox(height: 16.h),
                  ...state.bids.map((e) => PropositionWidget(bidModel: e, isSent: true)).take(2),
                ],
              ),
      ),
    );
  }
}
