import 'dart:io';

import 'package:biite/api/models/user.model.dart';
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
class FetchPictureState with _$FetchPictureState {
  const factory FetchPictureState.initial() = _FetchPictureStateInitial;

  const factory FetchPictureState.loading() = _FetchPictureStateLoading;

  const factory FetchPictureState.fetch(File file) = FetchPictureStateFetch;

  const factory FetchPictureState.error(String message) = _FetchPictureStateError;

  const FetchPictureState._();

  @override
  bool operator ==(Object other) => false;
}
