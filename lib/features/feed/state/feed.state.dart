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

@freezed
class FetchReceivedBidState with _$FetchReceivedBidState {
  const factory FetchReceivedBidState.initial() = _FetchReceivedBidStateInitial;

  const factory FetchReceivedBidState.loading() = _FetchReceivedBidStateLoading;

  const factory FetchReceivedBidState.fetch(List<BidModel> bids) = _FetchReceivedBidStateFetch;

  const factory FetchReceivedBidState.error(String message) = _FetchReceivedBidStateError;

  const FetchReceivedBidState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class AcceptBidState with _$AcceptBidState {
  const factory AcceptBidState.initial() = _AcceptBidStateInitial;

  const factory AcceptBidState.loading() = _AcceptBidStateLoading;

  const factory AcceptBidState.accept() = _AcceptBidStateAccept;

  const factory AcceptBidState.error(String message) = _AcceptBidStateError;

  const AcceptBidState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class SentBidState with _$SentBidState {
  const factory SentBidState.initial() = _SentBidStateInitial;

  const factory SentBidState.loading() = _SentBidStateLoading;

  const factory SentBidState.fetch(List<BidModel> bids) = SentBidStateFetch;

  const factory SentBidState.error(String message) = _SentBidStateError;

  const SentBidState._();

  @override
  bool operator ==(Object other) => false;
}
