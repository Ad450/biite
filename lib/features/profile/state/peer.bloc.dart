import 'package:biite/api/repositories/user.repository.dart';
import 'package:biite/features/profile/state/profile.state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PeerBloc extends Cubit<PeerState> {
  PeerBloc(this._userRepository) : super(const PeerState.initial());

  final UserRepository _userRepository;
  void fetchPeer(String id) async {
    try {
      final user = await _userRepository.fetchPeer(id);
      emit(PeerState.fetch(user));
      return;
    } catch (e) {
      emit(PeerState.error(e.toString()));
    }
  }
}
