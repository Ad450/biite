import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;

  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.success() = _LoginStateSuccess;
  const factory LoginState.error(String message) = _LoginStateError;

  const LoginState._();

  @override
  bool operator ==(Object other) => false;
}

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _SignupStateInitial;

  const factory SignupState.loading() = _SignupStateLoading;
  const factory SignupState.success() = _SignupStateSuccess;
  const factory SignupState.error(String message) = _SignupStateError;

  const SignupState._();

  @override
  bool operator ==(Object other) => false;
}
