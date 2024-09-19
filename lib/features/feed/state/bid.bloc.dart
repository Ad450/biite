import 'package:biite/api/repositories/bid.repository.dart';
import 'package:biite/features/feed/state/feed.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class BidBloc extends Cubit<FeedState> {
  BidBloc(this._bidRepository) : super(const FeedState.initial());

  final BidRepository _bidRepository;

  void createBid() async {}
}
