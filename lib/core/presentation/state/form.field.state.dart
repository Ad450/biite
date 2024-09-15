import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.field.state.freezed.dart';

@freezed
class SignupFormFieldState with _$SignupFormFieldState {
  const factory SignupFormFieldState.initial({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateInitial;

  const factory SignupFormFieldState.valid({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateValid;

  const factory SignupFormFieldState.loading({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateLoading;

  const factory SignupFormFieldState.invalid({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateInvalid;
}

@freezed
class SigninFormFieldState with _$SigninFormFieldState {
  const factory SigninFormFieldState.initial({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateInitial;

  const factory SigninFormFieldState.valid({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateValid;

  const factory SigninFormFieldState.loading({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateLoading;

  const factory SigninFormFieldState.invalid({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateInvalid;
}

@freezed
class CreateProjectFormFieldState with _$CreateProjectFormFieldState {
  const factory CreateProjectFormFieldState.initial({
    required bool isValid,
    required String? message,
  }) = _CreateProjectFormFieldStateInitial;

  const factory CreateProjectFormFieldState.valid({
    required bool isValid,
    required String? message,
  }) = _CreateProjectFormFieldStateValid;

  const factory CreateProjectFormFieldState.loading({
    required bool isValid,
    required String? message,
  }) = _CreateProjectFormFieldStateLoading;

  const factory CreateProjectFormFieldState.invalid({
    required bool isValid,
    required String? message,
  }) = _CreateProjectFormFieldStateInvalid;
}
