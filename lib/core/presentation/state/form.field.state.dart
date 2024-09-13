import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.field.state.freezed.dart';

abstract class FormFieldState {}

@freezed
class SignupFormFieldState extends FormFieldState with _$SignupFormFieldState {
  const factory SignupFormFieldState.initial({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateInitial;

  const factory SignupFormFieldState.valid({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateValid;

  const factory SignupFormFieldState.invalid({
    required bool isValid,
    required String? message,
  }) = _SignupFormFieldStateInvalid;
}

@freezed
class SigninFormFieldState extends FormFieldState with _$SigninFormFieldState {
  const factory SigninFormFieldState.initial({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateInitial;

  const factory SigninFormFieldState.valid({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateValid;

  const factory SigninFormFieldState.invalid({
    required bool isValid,
    required String? message,
  }) = _SigninFormFieldStateInvalid;
}
