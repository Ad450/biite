import 'package:biite/api/models/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({
    required UserModel? user,
    required String? message,
  }) = _AuthStateInitial;

  const factory AuthState.signupLoading({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSignupLoading;
  const factory AuthState.signinLoading({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSigninLoading;

  const factory AuthState.signupSuccess({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSignupSuccess;
  const factory AuthState.signinSuccess({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSigninSuccess;

  const factory AuthState.signoutLoading({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSignoutLoading;
  const factory AuthState.signoutSuccess({
    required UserModel? user,
    required String? message,
  }) = _AuthStateSignoutSuccess;

  const factory AuthState.updateUserSuccess({
    required UserModel? user,
    required String? message,
  }) = _AuthStateUpdateUserSuccess;
  const factory AuthState.updateUserLoading({
    required UserModel? user,
    required String? message,
  }) = _AuthStateUpdateUserLoading;

  const factory AuthState.error({
    required UserModel? user,
    required String? message,
  }) = _AuthStateError;

  const factory AuthState.userExists({
    required UserModel? user,
    required String? message,
  }) = _AuthStateUserExists;
  const factory AuthState.newUser({
    required UserModel? user,
    required String? message,
  }) = _AuthStateNewUser;

  const factory AuthState.fetchUserProfileSuccess({
    required UserModel? user,
    required String? message,
  }) = _AuthStateFetchUserProfileSuccess;
  const factory AuthState.fetchUserProfileLoading({
    required UserModel? user,
    required String? message,
  }) = _AuthStateFetchUserProfileLoading;
}
