import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.state.freezed.dart';

@freezed
class FieldState with _$FieldState {
  const factory FieldState.initial() = _FieldStateInitial;

  const factory FieldState.valid({required String data}) = _FieldStateValid;

  const factory FieldState.invalid({required String? message}) = _FieldStateInvalid;

  /// Always return false to ensure objects are never considered equal
  // @override
  // bool operator ==(Object other) => false;

  // @override
  // int get hashCode => 0;

  // // required by freezed
  // FieldState._();
}
