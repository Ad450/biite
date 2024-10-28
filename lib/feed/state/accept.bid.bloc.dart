import 'package:bid_repository/bid_repository.dart';
import 'package:biite/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AcceptBidBloc extends Cubit<AcceptBidState> {
  AcceptBidBloc()
      : _bidRepository = bidGetIt.get<BidRepository>(),
        super(const AcceptBidState.initial());

  final BidRepository _bidRepository;

  void acceptBid({required String bidId, required String projectId}) async {
    emit(const AcceptBidState.loading());
    final result = await _bidRepository.acceptBid(bidId, projectId);

    result.fold(
      (l) => emit(AcceptBidState.error(l.message)),
      (r) => emit(const AcceptBidState.accept()),
    );
  }
}
