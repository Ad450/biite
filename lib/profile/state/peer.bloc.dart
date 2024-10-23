import 'package:biite/profile/state/profile.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:user_repository/user_repository.dart';

@Injectable()
class PeerBloc extends Cubit<PeerState> {
  PeerBloc()
      : _userRepository = userGetIt.get<UserRepository>(),
        super(const PeerState.initial());

  final UserRepository _userRepository;

  void fetchChatPeer(String chatOwner, String peerId) async {
    try {
      final user = await _userRepository.fetchChatPeer(chatOwner, peerId);
      emit(PeerState.fetchChatPeer(user));
      return;
    } catch (e) {
      emit(PeerState.error(e.toString()));
    }
  }

  void fetchPeer(String ownerId) async {
    try {
      final user = await _userRepository.fetchPeer(ownerId);
      emit(PeerState.fetchPeer(user));
      return;
    } catch (e) {
      emit(PeerState.error(e.toString()));
    }
  }

  Future<String?> getCurrentUserId() async {
    try {
      final id = await _userRepository.getCurrentUserId();
      return id;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
