import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.state.freezed.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState.initial({
    required String data,
    required String? message,
    required bool isValid,
  }) = EmailStateInitial;

  const factory EmailState.valid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _EmailStateValid;

  const factory EmailState.invalid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _EmailStateInvalid;
}

@freezed
class NameState with _$NameState {
  const factory NameState.initial({
    required String data,
    required String? message,
    required bool isValid,
  }) = NameStateInitial;

  const factory NameState.valid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _NameStateValid;

  const factory NameState.invalid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _NameStateInvalid;
}

@freezed
class ConfirmPasswordState with _$ConfirmPasswordState {
  const factory ConfirmPasswordState.initial({
    required String data,
    required String? message,
    required bool isValid,
  }) = ConfirmPasswordStateInitial;

  const factory ConfirmPasswordState.valid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _ConfirmPasswordStateValid;

  const factory ConfirmPasswordState.invalid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _ConfirmPasswordStateInvalid;
}

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState.initial({
    required String data,
    required String? message,
    required bool isValid,
  }) = _PasswordStateInitial;

  const factory PasswordState.valid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _PasswordStateValid;

  const factory PasswordState.invalid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _PasswordStateInvalid;
}

@freezed
class DescriptionState with _$DescriptionState {
  const factory DescriptionState.initial({
    required String data,
    required String? message,
    required bool isValid,
  }) = _DescriptionStateInitial;

  const factory DescriptionState.valid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _DescriptionStateValid;

  const factory DescriptionState.invalid({
    required String data,
    required String? message,
    required bool isValid,
  }) = _DescriptionStateInvalid;
}

@freezed
class CompensationState with _$CompensationState {
  const factory CompensationState.initial({
    required double data,
    required String? message,
    required bool isValid,
  }) = _CompensationStateInitial;

  const factory CompensationState.valid({
    required double data,
    required String? message,
    required bool isValid,
  }) = _CompensationStateValid;

  const factory CompensationState.invalid({
    required double data,
    required String? message,
    required bool isValid,
  }) = _CompensationStateInvalid;
}
