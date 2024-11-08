import 'dart:io';
import 'package:common_repository/common_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileStateInitial;

  const factory ProfileState.loading() = _ProfileStateLoading;

  const factory ProfileState.updateProfie() = _ProfileStateUpdateProfile;

  const factory ProfileState.fetch(UserModel user) = _ProfileStateFetch;

  const factory ProfileState.error(String message) = _ProfileStateError;

  const ProfileState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class PeerState with _$PeerState {
  const factory PeerState.initial() = _PeerStateInitial;

  const factory PeerState.loading() = _PeerStateLoading;

  const factory PeerState.fetchChatPeer(UserModel user) = _PeerStateFetchChat;
  const factory PeerState.fetchPeer(UserModel user) = _PeerStateFetchPeer;

  const factory PeerState.error(String message) = _PeerStateError;

  const PeerState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class FetchPictureState with _$FetchPictureState {
  const factory FetchPictureState.initial() = _FetchPictureStateInitial;

  const factory FetchPictureState.loading() = _FetchPictureStateLoading;

  const factory FetchPictureState.fetch(File file) = FetchPictureStateFetch;

  const factory FetchPictureState.error(String message) = _FetchPictureStateError;

  const FetchPictureState._();

  @override
  bool operator ==(Object other) => false;
}
