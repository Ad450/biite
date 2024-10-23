import 'package:biite/di/biite.di.dart';
import 'package:biite/feed/state/feed.state.dart';
import 'package:biite/feed/state/fetch.received.bid.bloc.dart';
import 'package:biite/feed/state/sent.bid.bloc.dart';
import 'package:biite/feed/widgets/proposition.widget.dart';
import 'package:biite/feed/widgets/sent.bid.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/theme/theme.dart';
import 'package:presentation/widgets/view.all.dart';

class FeedReceivedPropositions extends StatelessWidget {
  const FeedReceivedPropositions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchReceivedBidBloc, FetchReceivedBidState>(
      bloc: getIt.get<FetchReceivedBidBloc>()..fetch(),
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
                          "Latest Received Bid",
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
                  ...state.bids
                      .map(
                        (e) => PropositionWidget(
                          bidModel: e,
                          isFeed: true,
                          onTap: () => context.push("/propositionRelatedProject", extra: e),
                        ),
                      )
                      .take(2),
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
                  ...state.bids.map((e) => SentBidWidget(bidModel: e)).take(2),
                ],
              ),
      ),
    );
  }
}
