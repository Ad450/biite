import 'package:biite/api/models/bid.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed.state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _FeedStateInitial;

  const factory FeedState.loading() = _FeedStateLoading;

  const factory FeedState.fetchBids(List<BidModel> bids) = _FeedStateFetchBids;

  const factory FeedState.createBid() = _FeedStateCreateBid;

  const factory FeedState.acceptBid() = _FeedStateAcceptBid;

  const factory FeedState.error(String message) = _FeedStateError;

  const FeedState._();

  @override
  bool operator ==(Object other) => false;
}
