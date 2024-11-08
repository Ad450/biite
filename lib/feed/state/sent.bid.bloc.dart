import 'package:bid_repository/bid_repository.dart';
import 'package:biite/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SentBidBloc extends Cubit<SentBidState> {
  SentBidBloc()
      : _bidRepository = bidGetIt.get<BidRepository>(),
        super(const SentBidState.initial());

  final BidRepository _bidRepository;

  void fetchSentBids() async {
    emit(const SentBidState.loading());
    final result = await _bidRepository.fetchSentBids();

    result.fold(
      (l) => emit(SentBidState.error(l.message)),
      (r) => emit(SentBidState.fetch(r)),
    );
  }
}
