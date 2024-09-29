import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.field.state.freezed.dart';

@freezed
class FormFieldBaseState with _$FormFieldBaseState {
  const factory FormFieldBaseState.initial() = _FormFieldStateInitial;

  const factory FormFieldBaseState.valid() = _FormFieldStateValid;

  const factory FormFieldBaseState.loading() = _FormFieldStateLoading;

  const factory FormFieldBaseState.invalid({required String? message}) = _FormFieldStateInvalid;

  const FormFieldBaseState._();

  @override
  bool operator ==(Object other) => false;
}
