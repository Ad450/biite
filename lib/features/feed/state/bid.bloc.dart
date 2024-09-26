import 'package:biite/api/repositories/bid.repository.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class BidBloc extends Cubit<BidState> {
  BidBloc(this._bidRepository) : super(const BidState.initial());

  final BidRepository _bidRepository;

  void acceptBid({required String bidId, required String projectId}) async {
    emit(const BidState.loading());
    final result = await _bidRepository.acceptBid(bidId, projectId);

    result.fold(
      (l) => emit(BidState.error(l.message)),
      (r) => emit(const BidState.accept()),
    );
  }

  void fetchBidsByProjectId(String id) async {
    emit(const BidState.loading());
    final result = await _bidRepository.fetchBidsByProjectId(id);

    result.fold(
      (l) => emit(BidState.error(l.message)),
      (r) => emit(BidState.fetchBidsById(r)),
    );
  }

  void fetchReceivedBids() async {
    emit(const BidState.loading());
    final result = await _bidRepository.fetchReceivedPropositions();

    result.fold(
      (l) => emit(BidState.error(l.message)),
      (r) => emit(BidState.fetchReceivedBids(r)),
    );
  }
}
