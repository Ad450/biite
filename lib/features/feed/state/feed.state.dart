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

@freezed
class BidState with _$BidState {
  const factory BidState.initial() = _BidStateInitial;

  const factory BidState.loading() = _BidStateLoading;

  const factory BidState.accept() = _BidStateAccept;

  const factory BidState.fetchBidsById(List<BidModel> bids) = _BidStateFetchBidsById;
  const factory BidState.fetchReceivedBids(List<BidModel> bids) = _BidStateFetchReceivedBids;

  const factory BidState.error(String message) = _BidStateError;

  const BidState._();

  @override
  bool operator ==(Object other) => false;
}
