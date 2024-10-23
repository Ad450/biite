import 'package:bid_repository/bid_repository.dart';
import 'package:biite/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FetchReceivedBidBloc extends Cubit<FetchReceivedBidState> {
  FetchReceivedBidBloc()
      : _bidRepository = bidGetIt.get<BidRepository>(),
        super(const FetchReceivedBidState.initial());

  final BidRepository _bidRepository;

  void fetch() async {
    emit(const FetchReceivedBidState.loading());
    final result = await _bidRepository.fetchReceivedPropositions();

    result.fold(
      (l) => emit(FetchReceivedBidState.error(l.message)),
      (r) => emit(FetchReceivedBidState.fetch(r)),
    );
  }
}
