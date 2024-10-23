// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form.field.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormFieldBaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() loading,
    required TResult Function(String? message) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? loading,
    TResult? Function(String? message)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? loading,
    TResult Function(String? message)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormFieldStateInitial value) initial,
    required TResult Function(_FormFieldStateValid value) valid,
    required TResult Function(_FormFieldStateLoading value) loading,
    required TResult Function(_FormFieldStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormFieldStateInitial value)? initial,
    TResult? Function(_FormFieldStateValid value)? valid,
    TResult? Function(_FormFieldStateLoading value)? loading,
    TResult? Function(_FormFieldStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormFieldStateInitial value)? initial,
    TResult Function(_FormFieldStateValid value)? valid,
    TResult Function(_FormFieldStateLoading value)? loading,
    TResult Function(_FormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldBaseStateCopyWith<$Res> {
  factory $FormFieldBaseStateCopyWith(
          FormFieldBaseState value, $Res Function(FormFieldBaseState) then) =
      _$FormFieldBaseStateCopyWithImpl<$Res, FormFieldBaseState>;
}

/// @nodoc
class _$FormFieldBaseStateCopyWithImpl<$Res, $Val extends FormFieldBaseState>
    implements $FormFieldBaseStateCopyWith<$Res> {
  _$FormFieldBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FormFieldStateInitialImplCopyWith<$Res> {
  factory _$$FormFieldStateInitialImplCopyWith(
          _$FormFieldStateInitialImpl value,
          $Res Function(_$FormFieldStateInitialImpl) then) =
      __$$FormFieldStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormFieldStateInitialImplCopyWithImpl<$Res>
    extends _$FormFieldBaseStateCopyWithImpl<$Res, _$FormFieldStateInitialImpl>
    implements _$$FormFieldStateInitialImplCopyWith<$Res> {
  __$$FormFieldStateInitialImplCopyWithImpl(_$FormFieldStateInitialImpl _value,
      $Res Function(_$FormFieldStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormFieldStateInitialImpl extends _FormFieldStateInitial {
  const _$FormFieldStateInitialImpl() : super._();

  @override
  String toString() {
    return 'FormFieldBaseState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() loading,
    required TResult Function(String? message) invalid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? loading,
    TResult? Function(String? message)? invalid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? loading,
    TResult Function(String? message)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormFieldStateInitial value) initial,
    required TResult Function(_FormFieldStateValid value) valid,
    required TResult Function(_FormFieldStateLoading value) loading,
    required TResult Function(_FormFieldStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormFieldStateInitial value)? initial,
    TResult? Function(_FormFieldStateValid value)? valid,
    TResult? Function(_FormFieldStateLoading value)? loading,
    TResult? Function(_FormFieldStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormFieldStateInitial value)? initial,
    TResult Function(_FormFieldStateValid value)? valid,
    TResult Function(_FormFieldStateLoading value)? loading,
    TResult Function(_FormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FormFieldStateInitial extends FormFieldBaseState {
  const factory _FormFieldStateInitial() = _$FormFieldStateInitialImpl;
  const _FormFieldStateInitial._() : super._();
}

/// @nodoc
abstract class _$$FormFieldStateValidImplCopyWith<$Res> {
  factory _$$FormFieldStateValidImplCopyWith(_$FormFieldStateValidImpl value,
          $Res Function(_$FormFieldStateValidImpl) then) =
      __$$FormFieldStateValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormFieldStateValidImplCopyWithImpl<$Res>
    extends _$FormFieldBaseStateCopyWithImpl<$Res, _$FormFieldStateValidImpl>
    implements _$$FormFieldStateValidImplCopyWith<$Res> {
  __$$FormFieldStateValidImplCopyWithImpl(_$FormFieldStateValidImpl _value,
      $Res Function(_$FormFieldStateValidImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormFieldStateValidImpl extends _FormFieldStateValid {
  const _$FormFieldStateValidImpl() : super._();

  @override
  String toString() {
    return 'FormFieldBaseState.valid()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() loading,
    required TResult Function(String? message) invalid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? loading,
    TResult? Function(String? message)? invalid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? loading,
    TResult Function(String? message)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormFieldStateInitial value) initial,
    required TResult Function(_FormFieldStateValid value) valid,
    required TResult Function(_FormFieldStateLoading value) loading,
    required TResult Function(_FormFieldStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormFieldStateInitial value)? initial,
    TResult? Function(_FormFieldStateValid value)? valid,
    TResult? Function(_FormFieldStateLoading value)? loading,
    TResult? Function(_FormFieldStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormFieldStateInitial value)? initial,
    TResult Function(_FormFieldStateValid value)? valid,
    TResult Function(_FormFieldStateLoading value)? loading,
    TResult Function(_FormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _FormFieldStateValid extends FormFieldBaseState {
  const factory _FormFieldStateValid() = _$FormFieldStateValidImpl;
  const _FormFieldStateValid._() : super._();
}

/// @nodoc
abstract class _$$FormFieldStateLoadingImplCopyWith<$Res> {
  factory _$$FormFieldStateLoadingImplCopyWith(
          _$FormFieldStateLoadingImpl value,
          $Res Function(_$FormFieldStateLoadingImpl) then) =
      __$$FormFieldStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormFieldStateLoadingImplCopyWithImpl<$Res>
    extends _$FormFieldBaseStateCopyWithImpl<$Res, _$FormFieldStateLoadingImpl>
    implements _$$FormFieldStateLoadingImplCopyWith<$Res> {
  __$$FormFieldStateLoadingImplCopyWithImpl(_$FormFieldStateLoadingImpl _value,
      $Res Function(_$FormFieldStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormFieldStateLoadingImpl extends _FormFieldStateLoading {
  const _$FormFieldStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'FormFieldBaseState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() loading,
    required TResult Function(String? message) invalid,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? loading,
    TResult? Function(String? message)? invalid,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? loading,
    TResult Function(String? message)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormFieldStateInitial value) initial,
    required TResult Function(_FormFieldStateValid value) valid,
    required TResult Function(_FormFieldStateLoading value) loading,
    required TResult Function(_FormFieldStateInvalid value) invalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormFieldStateInitial value)? initial,
    TResult? Function(_FormFieldStateValid value)? valid,
    TResult? Function(_FormFieldStateLoading value)? loading,
    TResult? Function(_FormFieldStateInvalid value)? invalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormFieldStateInitial value)? initial,
    TResult Function(_FormFieldStateValid value)? valid,
    TResult Function(_FormFieldStateLoading value)? loading,
    TResult Function(_FormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FormFieldStateLoading extends FormFieldBaseState {
  const factory _FormFieldStateLoading() = _$FormFieldStateLoadingImpl;
  const _FormFieldStateLoading._() : super._();
}

/// @nodoc
abstract class _$$FormFieldStateInvalidImplCopyWith<$Res> {
  factory _$$FormFieldStateInvalidImplCopyWith(
          _$FormFieldStateInvalidImpl value,
          $Res Function(_$FormFieldStateInvalidImpl) then) =
      __$$FormFieldStateInvalidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FormFieldStateInvalidImplCopyWithImpl<$Res>
    extends _$FormFieldBaseStateCopyWithImpl<$Res, _$FormFieldStateInvalidImpl>
    implements _$$FormFieldStateInvalidImplCopyWith<$Res> {
  __$$FormFieldStateInvalidImplCopyWithImpl(_$FormFieldStateInvalidImpl _value,
      $Res Function(_$FormFieldStateInvalidImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FormFieldStateInvalidImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FormFieldStateInvalidImpl extends _FormFieldStateInvalid {
  const _$FormFieldStateInvalidImpl({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'FormFieldBaseState.invalid(message: $message)';
  }

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormFieldStateInvalidImplCopyWith<_$FormFieldStateInvalidImpl>
      get copyWith => __$$FormFieldStateInvalidImplCopyWithImpl<
          _$FormFieldStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() valid,
    required TResult Function() loading,
    required TResult Function(String? message) invalid,
  }) {
    return invalid(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? valid,
    TResult? Function()? loading,
    TResult? Function(String? message)? invalid,
  }) {
    return invalid?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? valid,
    TResult Function()? loading,
    TResult Function(String? message)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormFieldStateInitial value) initial,
    required TResult Function(_FormFieldStateValid value) valid,
    required TResult Function(_FormFieldStateLoading value) loading,
    required TResult Function(_FormFieldStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormFieldStateInitial value)? initial,
    TResult? Function(_FormFieldStateValid value)? valid,
    TResult? Function(_FormFieldStateLoading value)? loading,
    TResult? Function(_FormFieldStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormFieldStateInitial value)? initial,
    TResult Function(_FormFieldStateValid value)? valid,
    TResult Function(_FormFieldStateLoading value)? loading,
    TResult Function(_FormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _FormFieldStateInvalid extends FormFieldBaseState {
  const factory _FormFieldStateInvalid({required final String? message}) =
      _$FormFieldStateInvalidImpl;
  const _FormFieldStateInvalid._() : super._();

  String? get message;

  /// Create a copy of FormFieldBaseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormFieldStateInvalidImplCopyWith<_$FormFieldStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}
