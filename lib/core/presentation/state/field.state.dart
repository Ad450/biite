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
