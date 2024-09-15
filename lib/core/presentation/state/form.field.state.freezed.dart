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
mixin _$SignupFormFieldState {
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormFieldStateInitial value) initial,
    required TResult Function(_SignupFormFieldStateValid value) valid,
    required TResult Function(_SignupFormFieldStateLoading value) loading,
    required TResult Function(_SignupFormFieldStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupFormFieldStateInitial value)? initial,
    TResult? Function(_SignupFormFieldStateValid value)? valid,
    TResult? Function(_SignupFormFieldStateLoading value)? loading,
    TResult? Function(_SignupFormFieldStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormFieldStateInitial value)? initial,
    TResult Function(_SignupFormFieldStateValid value)? valid,
    TResult Function(_SignupFormFieldStateLoading value)? loading,
    TResult Function(_SignupFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupFormFieldStateCopyWith<SignupFormFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupFormFieldStateCopyWith<$Res> {
  factory $SignupFormFieldStateCopyWith(SignupFormFieldState value,
          $Res Function(SignupFormFieldState) then) =
      _$SignupFormFieldStateCopyWithImpl<$Res, SignupFormFieldState>;
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class _$SignupFormFieldStateCopyWithImpl<$Res,
        $Val extends SignupFormFieldState>
    implements $SignupFormFieldStateCopyWith<$Res> {
  _$SignupFormFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupFormFieldStateInitialImplCopyWith<$Res>
    implements $SignupFormFieldStateCopyWith<$Res> {
  factory _$$SignupFormFieldStateInitialImplCopyWith(
          _$SignupFormFieldStateInitialImpl value,
          $Res Function(_$SignupFormFieldStateInitialImpl) then) =
      __$$SignupFormFieldStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$SignupFormFieldStateInitialImplCopyWithImpl<$Res>
    extends _$SignupFormFieldStateCopyWithImpl<$Res,
        _$SignupFormFieldStateInitialImpl>
    implements _$$SignupFormFieldStateInitialImplCopyWith<$Res> {
  __$$SignupFormFieldStateInitialImplCopyWithImpl(
      _$SignupFormFieldStateInitialImpl _value,
      $Res Function(_$SignupFormFieldStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupFormFieldStateInitialImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupFormFieldStateInitialImpl
    implements _SignupFormFieldStateInitial {
  const _$SignupFormFieldStateInitialImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFormFieldState.initial(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFormFieldStateInitialImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormFieldStateInitialImplCopyWith<_$SignupFormFieldStateInitialImpl>
      get copyWith => __$$SignupFormFieldStateInitialImplCopyWithImpl<
          _$SignupFormFieldStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return initial(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return initial?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormFieldStateInitial value) initial,
    required TResult Function(_SignupFormFieldStateValid value) valid,
    required TResult Function(_SignupFormFieldStateLoading value) loading,
    required TResult Function(_SignupFormFieldStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupFormFieldStateInitial value)? initial,
    TResult? Function(_SignupFormFieldStateValid value)? valid,
    TResult? Function(_SignupFormFieldStateLoading value)? loading,
    TResult? Function(_SignupFormFieldStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormFieldStateInitial value)? initial,
    TResult Function(_SignupFormFieldStateValid value)? valid,
    TResult Function(_SignupFormFieldStateLoading value)? loading,
    TResult Function(_SignupFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFieldStateInitial implements SignupFormFieldState {
  const factory _SignupFormFieldStateInitial(
      {required final bool isValid,
      required final String? message}) = _$SignupFormFieldStateInitialImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormFieldStateInitialImplCopyWith<_$SignupFormFieldStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFormFieldStateValidImplCopyWith<$Res>
    implements $SignupFormFieldStateCopyWith<$Res> {
  factory _$$SignupFormFieldStateValidImplCopyWith(
          _$SignupFormFieldStateValidImpl value,
          $Res Function(_$SignupFormFieldStateValidImpl) then) =
      __$$SignupFormFieldStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$SignupFormFieldStateValidImplCopyWithImpl<$Res>
    extends _$SignupFormFieldStateCopyWithImpl<$Res,
        _$SignupFormFieldStateValidImpl>
    implements _$$SignupFormFieldStateValidImplCopyWith<$Res> {
  __$$SignupFormFieldStateValidImplCopyWithImpl(
      _$SignupFormFieldStateValidImpl _value,
      $Res Function(_$SignupFormFieldStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupFormFieldStateValidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupFormFieldStateValidImpl implements _SignupFormFieldStateValid {
  const _$SignupFormFieldStateValidImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFormFieldState.valid(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFormFieldStateValidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormFieldStateValidImplCopyWith<_$SignupFormFieldStateValidImpl>
      get copyWith => __$$SignupFormFieldStateValidImplCopyWithImpl<
          _$SignupFormFieldStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return valid(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return valid?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormFieldStateInitial value) initial,
    required TResult Function(_SignupFormFieldStateValid value) valid,
    required TResult Function(_SignupFormFieldStateLoading value) loading,
    required TResult Function(_SignupFormFieldStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupFormFieldStateInitial value)? initial,
    TResult? Function(_SignupFormFieldStateValid value)? valid,
    TResult? Function(_SignupFormFieldStateLoading value)? loading,
    TResult? Function(_SignupFormFieldStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormFieldStateInitial value)? initial,
    TResult Function(_SignupFormFieldStateValid value)? valid,
    TResult Function(_SignupFormFieldStateLoading value)? loading,
    TResult Function(_SignupFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFieldStateValid implements SignupFormFieldState {
  const factory _SignupFormFieldStateValid(
      {required final bool isValid,
      required final String? message}) = _$SignupFormFieldStateValidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormFieldStateValidImplCopyWith<_$SignupFormFieldStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFormFieldStateLoadingImplCopyWith<$Res>
    implements $SignupFormFieldStateCopyWith<$Res> {
  factory _$$SignupFormFieldStateLoadingImplCopyWith(
          _$SignupFormFieldStateLoadingImpl value,
          $Res Function(_$SignupFormFieldStateLoadingImpl) then) =
      __$$SignupFormFieldStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$SignupFormFieldStateLoadingImplCopyWithImpl<$Res>
    extends _$SignupFormFieldStateCopyWithImpl<$Res,
        _$SignupFormFieldStateLoadingImpl>
    implements _$$SignupFormFieldStateLoadingImplCopyWith<$Res> {
  __$$SignupFormFieldStateLoadingImplCopyWithImpl(
      _$SignupFormFieldStateLoadingImpl _value,
      $Res Function(_$SignupFormFieldStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupFormFieldStateLoadingImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupFormFieldStateLoadingImpl
    implements _SignupFormFieldStateLoading {
  const _$SignupFormFieldStateLoadingImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFormFieldState.loading(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFormFieldStateLoadingImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormFieldStateLoadingImplCopyWith<_$SignupFormFieldStateLoadingImpl>
      get copyWith => __$$SignupFormFieldStateLoadingImplCopyWithImpl<
          _$SignupFormFieldStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return loading(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return loading?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormFieldStateInitial value) initial,
    required TResult Function(_SignupFormFieldStateValid value) valid,
    required TResult Function(_SignupFormFieldStateLoading value) loading,
    required TResult Function(_SignupFormFieldStateInvalid value) invalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupFormFieldStateInitial value)? initial,
    TResult? Function(_SignupFormFieldStateValid value)? valid,
    TResult? Function(_SignupFormFieldStateLoading value)? loading,
    TResult? Function(_SignupFormFieldStateInvalid value)? invalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormFieldStateInitial value)? initial,
    TResult Function(_SignupFormFieldStateValid value)? valid,
    TResult Function(_SignupFormFieldStateLoading value)? loading,
    TResult Function(_SignupFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFieldStateLoading implements SignupFormFieldState {
  const factory _SignupFormFieldStateLoading(
      {required final bool isValid,
      required final String? message}) = _$SignupFormFieldStateLoadingImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormFieldStateLoadingImplCopyWith<_$SignupFormFieldStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFormFieldStateInvalidImplCopyWith<$Res>
    implements $SignupFormFieldStateCopyWith<$Res> {
  factory _$$SignupFormFieldStateInvalidImplCopyWith(
          _$SignupFormFieldStateInvalidImpl value,
          $Res Function(_$SignupFormFieldStateInvalidImpl) then) =
      __$$SignupFormFieldStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$SignupFormFieldStateInvalidImplCopyWithImpl<$Res>
    extends _$SignupFormFieldStateCopyWithImpl<$Res,
        _$SignupFormFieldStateInvalidImpl>
    implements _$$SignupFormFieldStateInvalidImplCopyWith<$Res> {
  __$$SignupFormFieldStateInvalidImplCopyWithImpl(
      _$SignupFormFieldStateInvalidImpl _value,
      $Res Function(_$SignupFormFieldStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$SignupFormFieldStateInvalidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignupFormFieldStateInvalidImpl
    implements _SignupFormFieldStateInvalid {
  const _$SignupFormFieldStateInvalidImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'SignupFormFieldState.invalid(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFormFieldStateInvalidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFormFieldStateInvalidImplCopyWith<_$SignupFormFieldStateInvalidImpl>
      get copyWith => __$$SignupFormFieldStateInvalidImplCopyWithImpl<
          _$SignupFormFieldStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return invalid(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return invalid?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignupFormFieldStateInitial value) initial,
    required TResult Function(_SignupFormFieldStateValid value) valid,
    required TResult Function(_SignupFormFieldStateLoading value) loading,
    required TResult Function(_SignupFormFieldStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignupFormFieldStateInitial value)? initial,
    TResult? Function(_SignupFormFieldStateValid value)? valid,
    TResult? Function(_SignupFormFieldStateLoading value)? loading,
    TResult? Function(_SignupFormFieldStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignupFormFieldStateInitial value)? initial,
    TResult Function(_SignupFormFieldStateValid value)? valid,
    TResult Function(_SignupFormFieldStateLoading value)? loading,
    TResult Function(_SignupFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _SignupFormFieldStateInvalid implements SignupFormFieldState {
  const factory _SignupFormFieldStateInvalid(
      {required final bool isValid,
      required final String? message}) = _$SignupFormFieldStateInvalidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupFormFieldStateInvalidImplCopyWith<_$SignupFormFieldStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SigninFormFieldState {
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message, int time) initial,
    required TResult Function(bool isValid, String? message, int time) valid,
    required TResult Function(bool isValid, String? message, int time) loading,
    required TResult Function(bool isValid, String? message, int time) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message, int time)? initial,
    TResult? Function(bool isValid, String? message, int time)? valid,
    TResult? Function(bool isValid, String? message, int time)? loading,
    TResult? Function(bool isValid, String? message, int time)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message, int time)? initial,
    TResult Function(bool isValid, String? message, int time)? valid,
    TResult Function(bool isValid, String? message, int time)? loading,
    TResult Function(bool isValid, String? message, int time)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninFormFieldStateInitial value) initial,
    required TResult Function(_SigninFormFieldStateValid value) valid,
    required TResult Function(_SigninFormFieldStateLoading value) loading,
    required TResult Function(_SigninFormFieldStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigninFormFieldStateInitial value)? initial,
    TResult? Function(_SigninFormFieldStateValid value)? valid,
    TResult? Function(_SigninFormFieldStateLoading value)? loading,
    TResult? Function(_SigninFormFieldStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninFormFieldStateInitial value)? initial,
    TResult Function(_SigninFormFieldStateValid value)? valid,
    TResult Function(_SigninFormFieldStateLoading value)? loading,
    TResult Function(_SigninFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninFormFieldStateCopyWith<SigninFormFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninFormFieldStateCopyWith<$Res> {
  factory $SigninFormFieldStateCopyWith(SigninFormFieldState value,
          $Res Function(SigninFormFieldState) then) =
      _$SigninFormFieldStateCopyWithImpl<$Res, SigninFormFieldState>;
  @useResult
  $Res call({bool isValid, String? message, int time});
}

/// @nodoc
class _$SigninFormFieldStateCopyWithImpl<$Res,
        $Val extends SigninFormFieldState>
    implements $SigninFormFieldStateCopyWith<$Res> {
  _$SigninFormFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninFormFieldStateInitialImplCopyWith<$Res>
    implements $SigninFormFieldStateCopyWith<$Res> {
  factory _$$SigninFormFieldStateInitialImplCopyWith(
          _$SigninFormFieldStateInitialImpl value,
          $Res Function(_$SigninFormFieldStateInitialImpl) then) =
      __$$SigninFormFieldStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message, int time});
}

/// @nodoc
class __$$SigninFormFieldStateInitialImplCopyWithImpl<$Res>
    extends _$SigninFormFieldStateCopyWithImpl<$Res,
        _$SigninFormFieldStateInitialImpl>
    implements _$$SigninFormFieldStateInitialImplCopyWith<$Res> {
  __$$SigninFormFieldStateInitialImplCopyWithImpl(
      _$SigninFormFieldStateInitialImpl _value,
      $Res Function(_$SigninFormFieldStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
    Object? time = null,
  }) {
    return _then(_$SigninFormFieldStateInitialImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SigninFormFieldStateInitialImpl
    implements _SigninFormFieldStateInitial {
  const _$SigninFormFieldStateInitialImpl(
      {required this.isValid, required this.message, required this.time});

  @override
  final bool isValid;
  @override
  final String? message;
  @override
  final int time;

  @override
  String toString() {
    return 'SigninFormFieldState.initial(isValid: $isValid, message: $message, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninFormFieldStateInitialImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninFormFieldStateInitialImplCopyWith<_$SigninFormFieldStateInitialImpl>
      get copyWith => __$$SigninFormFieldStateInitialImplCopyWithImpl<
          _$SigninFormFieldStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message, int time) initial,
    required TResult Function(bool isValid, String? message, int time) valid,
    required TResult Function(bool isValid, String? message, int time) loading,
    required TResult Function(bool isValid, String? message, int time) invalid,
  }) {
    return initial(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message, int time)? initial,
    TResult? Function(bool isValid, String? message, int time)? valid,
    TResult? Function(bool isValid, String? message, int time)? loading,
    TResult? Function(bool isValid, String? message, int time)? invalid,
  }) {
    return initial?.call(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message, int time)? initial,
    TResult Function(bool isValid, String? message, int time)? valid,
    TResult Function(bool isValid, String? message, int time)? loading,
    TResult Function(bool isValid, String? message, int time)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isValid, message, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninFormFieldStateInitial value) initial,
    required TResult Function(_SigninFormFieldStateValid value) valid,
    required TResult Function(_SigninFormFieldStateLoading value) loading,
    required TResult Function(_SigninFormFieldStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigninFormFieldStateInitial value)? initial,
    TResult? Function(_SigninFormFieldStateValid value)? valid,
    TResult? Function(_SigninFormFieldStateLoading value)? loading,
    TResult? Function(_SigninFormFieldStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninFormFieldStateInitial value)? initial,
    TResult Function(_SigninFormFieldStateValid value)? valid,
    TResult Function(_SigninFormFieldStateLoading value)? loading,
    TResult Function(_SigninFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SigninFormFieldStateInitial implements SigninFormFieldState {
  const factory _SigninFormFieldStateInitial(
      {required final bool isValid,
      required final String? message,
      required final int time}) = _$SigninFormFieldStateInitialImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$SigninFormFieldStateInitialImplCopyWith<_$SigninFormFieldStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninFormFieldStateValidImplCopyWith<$Res>
    implements $SigninFormFieldStateCopyWith<$Res> {
  factory _$$SigninFormFieldStateValidImplCopyWith(
          _$SigninFormFieldStateValidImpl value,
          $Res Function(_$SigninFormFieldStateValidImpl) then) =
      __$$SigninFormFieldStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message, int time});
}

/// @nodoc
class __$$SigninFormFieldStateValidImplCopyWithImpl<$Res>
    extends _$SigninFormFieldStateCopyWithImpl<$Res,
        _$SigninFormFieldStateValidImpl>
    implements _$$SigninFormFieldStateValidImplCopyWith<$Res> {
  __$$SigninFormFieldStateValidImplCopyWithImpl(
      _$SigninFormFieldStateValidImpl _value,
      $Res Function(_$SigninFormFieldStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
    Object? time = null,
  }) {
    return _then(_$SigninFormFieldStateValidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SigninFormFieldStateValidImpl implements _SigninFormFieldStateValid {
  const _$SigninFormFieldStateValidImpl(
      {required this.isValid, required this.message, required this.time});

  @override
  final bool isValid;
  @override
  final String? message;
  @override
  final int time;

  @override
  String toString() {
    return 'SigninFormFieldState.valid(isValid: $isValid, message: $message, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninFormFieldStateValidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninFormFieldStateValidImplCopyWith<_$SigninFormFieldStateValidImpl>
      get copyWith => __$$SigninFormFieldStateValidImplCopyWithImpl<
          _$SigninFormFieldStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message, int time) initial,
    required TResult Function(bool isValid, String? message, int time) valid,
    required TResult Function(bool isValid, String? message, int time) loading,
    required TResult Function(bool isValid, String? message, int time) invalid,
  }) {
    return valid(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message, int time)? initial,
    TResult? Function(bool isValid, String? message, int time)? valid,
    TResult? Function(bool isValid, String? message, int time)? loading,
    TResult? Function(bool isValid, String? message, int time)? invalid,
  }) {
    return valid?.call(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message, int time)? initial,
    TResult Function(bool isValid, String? message, int time)? valid,
    TResult Function(bool isValid, String? message, int time)? loading,
    TResult Function(bool isValid, String? message, int time)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(isValid, message, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninFormFieldStateInitial value) initial,
    required TResult Function(_SigninFormFieldStateValid value) valid,
    required TResult Function(_SigninFormFieldStateLoading value) loading,
    required TResult Function(_SigninFormFieldStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigninFormFieldStateInitial value)? initial,
    TResult? Function(_SigninFormFieldStateValid value)? valid,
    TResult? Function(_SigninFormFieldStateLoading value)? loading,
    TResult? Function(_SigninFormFieldStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninFormFieldStateInitial value)? initial,
    TResult Function(_SigninFormFieldStateValid value)? valid,
    TResult Function(_SigninFormFieldStateLoading value)? loading,
    TResult Function(_SigninFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _SigninFormFieldStateValid implements SigninFormFieldState {
  const factory _SigninFormFieldStateValid(
      {required final bool isValid,
      required final String? message,
      required final int time}) = _$SigninFormFieldStateValidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$SigninFormFieldStateValidImplCopyWith<_$SigninFormFieldStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninFormFieldStateLoadingImplCopyWith<$Res>
    implements $SigninFormFieldStateCopyWith<$Res> {
  factory _$$SigninFormFieldStateLoadingImplCopyWith(
          _$SigninFormFieldStateLoadingImpl value,
          $Res Function(_$SigninFormFieldStateLoadingImpl) then) =
      __$$SigninFormFieldStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message, int time});
}

/// @nodoc
class __$$SigninFormFieldStateLoadingImplCopyWithImpl<$Res>
    extends _$SigninFormFieldStateCopyWithImpl<$Res,
        _$SigninFormFieldStateLoadingImpl>
    implements _$$SigninFormFieldStateLoadingImplCopyWith<$Res> {
  __$$SigninFormFieldStateLoadingImplCopyWithImpl(
      _$SigninFormFieldStateLoadingImpl _value,
      $Res Function(_$SigninFormFieldStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
    Object? time = null,
  }) {
    return _then(_$SigninFormFieldStateLoadingImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SigninFormFieldStateLoadingImpl
    implements _SigninFormFieldStateLoading {
  const _$SigninFormFieldStateLoadingImpl(
      {required this.isValid, required this.message, required this.time});

  @override
  final bool isValid;
  @override
  final String? message;
  @override
  final int time;

  @override
  String toString() {
    return 'SigninFormFieldState.loading(isValid: $isValid, message: $message, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninFormFieldStateLoadingImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninFormFieldStateLoadingImplCopyWith<_$SigninFormFieldStateLoadingImpl>
      get copyWith => __$$SigninFormFieldStateLoadingImplCopyWithImpl<
          _$SigninFormFieldStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message, int time) initial,
    required TResult Function(bool isValid, String? message, int time) valid,
    required TResult Function(bool isValid, String? message, int time) loading,
    required TResult Function(bool isValid, String? message, int time) invalid,
  }) {
    return loading(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message, int time)? initial,
    TResult? Function(bool isValid, String? message, int time)? valid,
    TResult? Function(bool isValid, String? message, int time)? loading,
    TResult? Function(bool isValid, String? message, int time)? invalid,
  }) {
    return loading?.call(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message, int time)? initial,
    TResult Function(bool isValid, String? message, int time)? valid,
    TResult Function(bool isValid, String? message, int time)? loading,
    TResult Function(bool isValid, String? message, int time)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isValid, message, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninFormFieldStateInitial value) initial,
    required TResult Function(_SigninFormFieldStateValid value) valid,
    required TResult Function(_SigninFormFieldStateLoading value) loading,
    required TResult Function(_SigninFormFieldStateInvalid value) invalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigninFormFieldStateInitial value)? initial,
    TResult? Function(_SigninFormFieldStateValid value)? valid,
    TResult? Function(_SigninFormFieldStateLoading value)? loading,
    TResult? Function(_SigninFormFieldStateInvalid value)? invalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninFormFieldStateInitial value)? initial,
    TResult Function(_SigninFormFieldStateValid value)? valid,
    TResult Function(_SigninFormFieldStateLoading value)? loading,
    TResult Function(_SigninFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SigninFormFieldStateLoading implements SigninFormFieldState {
  const factory _SigninFormFieldStateLoading(
      {required final bool isValid,
      required final String? message,
      required final int time}) = _$SigninFormFieldStateLoadingImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$SigninFormFieldStateLoadingImplCopyWith<_$SigninFormFieldStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SigninFormFieldStateInvalidImplCopyWith<$Res>
    implements $SigninFormFieldStateCopyWith<$Res> {
  factory _$$SigninFormFieldStateInvalidImplCopyWith(
          _$SigninFormFieldStateInvalidImpl value,
          $Res Function(_$SigninFormFieldStateInvalidImpl) then) =
      __$$SigninFormFieldStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message, int time});
}

/// @nodoc
class __$$SigninFormFieldStateInvalidImplCopyWithImpl<$Res>
    extends _$SigninFormFieldStateCopyWithImpl<$Res,
        _$SigninFormFieldStateInvalidImpl>
    implements _$$SigninFormFieldStateInvalidImplCopyWith<$Res> {
  __$$SigninFormFieldStateInvalidImplCopyWithImpl(
      _$SigninFormFieldStateInvalidImpl _value,
      $Res Function(_$SigninFormFieldStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
    Object? time = null,
  }) {
    return _then(_$SigninFormFieldStateInvalidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SigninFormFieldStateInvalidImpl
    implements _SigninFormFieldStateInvalid {
  const _$SigninFormFieldStateInvalidImpl(
      {required this.isValid, required this.message, required this.time});

  @override
  final bool isValid;
  @override
  final String? message;
  @override
  final int time;

  @override
  String toString() {
    return 'SigninFormFieldState.invalid(isValid: $isValid, message: $message, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninFormFieldStateInvalidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninFormFieldStateInvalidImplCopyWith<_$SigninFormFieldStateInvalidImpl>
      get copyWith => __$$SigninFormFieldStateInvalidImplCopyWithImpl<
          _$SigninFormFieldStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message, int time) initial,
    required TResult Function(bool isValid, String? message, int time) valid,
    required TResult Function(bool isValid, String? message, int time) loading,
    required TResult Function(bool isValid, String? message, int time) invalid,
  }) {
    return invalid(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message, int time)? initial,
    TResult? Function(bool isValid, String? message, int time)? valid,
    TResult? Function(bool isValid, String? message, int time)? loading,
    TResult? Function(bool isValid, String? message, int time)? invalid,
  }) {
    return invalid?.call(isValid, message, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message, int time)? initial,
    TResult Function(bool isValid, String? message, int time)? valid,
    TResult Function(bool isValid, String? message, int time)? loading,
    TResult Function(bool isValid, String? message, int time)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(isValid, message, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SigninFormFieldStateInitial value) initial,
    required TResult Function(_SigninFormFieldStateValid value) valid,
    required TResult Function(_SigninFormFieldStateLoading value) loading,
    required TResult Function(_SigninFormFieldStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SigninFormFieldStateInitial value)? initial,
    TResult? Function(_SigninFormFieldStateValid value)? valid,
    TResult? Function(_SigninFormFieldStateLoading value)? loading,
    TResult? Function(_SigninFormFieldStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SigninFormFieldStateInitial value)? initial,
    TResult Function(_SigninFormFieldStateValid value)? valid,
    TResult Function(_SigninFormFieldStateLoading value)? loading,
    TResult Function(_SigninFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _SigninFormFieldStateInvalid implements SigninFormFieldState {
  const factory _SigninFormFieldStateInvalid(
      {required final bool isValid,
      required final String? message,
      required final int time}) = _$SigninFormFieldStateInvalidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$SigninFormFieldStateInvalidImplCopyWith<_$SigninFormFieldStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateProjectFormFieldState {
  bool get isValid => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProjectFormFieldStateInitial value)
        initial,
    required TResult Function(_CreateProjectFormFieldStateValid value) valid,
    required TResult Function(_CreateProjectFormFieldStateLoading value)
        loading,
    required TResult Function(_CreateProjectFormFieldStateInvalid value)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult? Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult? Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult? Function(_CreateProjectFormFieldStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult Function(_CreateProjectFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProjectFormFieldStateCopyWith<CreateProjectFormFieldState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectFormFieldStateCopyWith<$Res> {
  factory $CreateProjectFormFieldStateCopyWith(
          CreateProjectFormFieldState value,
          $Res Function(CreateProjectFormFieldState) then) =
      _$CreateProjectFormFieldStateCopyWithImpl<$Res,
          CreateProjectFormFieldState>;
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class _$CreateProjectFormFieldStateCopyWithImpl<$Res,
        $Val extends CreateProjectFormFieldState>
    implements $CreateProjectFormFieldStateCopyWith<$Res> {
  _$CreateProjectFormFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProjectFormFieldStateInitialImplCopyWith<$Res>
    implements $CreateProjectFormFieldStateCopyWith<$Res> {
  factory _$$CreateProjectFormFieldStateInitialImplCopyWith(
          _$CreateProjectFormFieldStateInitialImpl value,
          $Res Function(_$CreateProjectFormFieldStateInitialImpl) then) =
      __$$CreateProjectFormFieldStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$CreateProjectFormFieldStateInitialImplCopyWithImpl<$Res>
    extends _$CreateProjectFormFieldStateCopyWithImpl<$Res,
        _$CreateProjectFormFieldStateInitialImpl>
    implements _$$CreateProjectFormFieldStateInitialImplCopyWith<$Res> {
  __$$CreateProjectFormFieldStateInitialImplCopyWithImpl(
      _$CreateProjectFormFieldStateInitialImpl _value,
      $Res Function(_$CreateProjectFormFieldStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$CreateProjectFormFieldStateInitialImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProjectFormFieldStateInitialImpl
    implements _CreateProjectFormFieldStateInitial {
  const _$CreateProjectFormFieldStateInitialImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateProjectFormFieldState.initial(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectFormFieldStateInitialImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectFormFieldStateInitialImplCopyWith<
          _$CreateProjectFormFieldStateInitialImpl>
      get copyWith => __$$CreateProjectFormFieldStateInitialImplCopyWithImpl<
          _$CreateProjectFormFieldStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return initial(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return initial?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProjectFormFieldStateInitial value)
        initial,
    required TResult Function(_CreateProjectFormFieldStateValid value) valid,
    required TResult Function(_CreateProjectFormFieldStateLoading value)
        loading,
    required TResult Function(_CreateProjectFormFieldStateInvalid value)
        invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult? Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult? Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult? Function(_CreateProjectFormFieldStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult Function(_CreateProjectFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProjectFormFieldStateInitial
    implements CreateProjectFormFieldState {
  const factory _CreateProjectFormFieldStateInitial(
          {required final bool isValid, required final String? message}) =
      _$CreateProjectFormFieldStateInitialImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectFormFieldStateInitialImplCopyWith<
          _$CreateProjectFormFieldStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProjectFormFieldStateValidImplCopyWith<$Res>
    implements $CreateProjectFormFieldStateCopyWith<$Res> {
  factory _$$CreateProjectFormFieldStateValidImplCopyWith(
          _$CreateProjectFormFieldStateValidImpl value,
          $Res Function(_$CreateProjectFormFieldStateValidImpl) then) =
      __$$CreateProjectFormFieldStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$CreateProjectFormFieldStateValidImplCopyWithImpl<$Res>
    extends _$CreateProjectFormFieldStateCopyWithImpl<$Res,
        _$CreateProjectFormFieldStateValidImpl>
    implements _$$CreateProjectFormFieldStateValidImplCopyWith<$Res> {
  __$$CreateProjectFormFieldStateValidImplCopyWithImpl(
      _$CreateProjectFormFieldStateValidImpl _value,
      $Res Function(_$CreateProjectFormFieldStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$CreateProjectFormFieldStateValidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProjectFormFieldStateValidImpl
    implements _CreateProjectFormFieldStateValid {
  const _$CreateProjectFormFieldStateValidImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateProjectFormFieldState.valid(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectFormFieldStateValidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectFormFieldStateValidImplCopyWith<
          _$CreateProjectFormFieldStateValidImpl>
      get copyWith => __$$CreateProjectFormFieldStateValidImplCopyWithImpl<
          _$CreateProjectFormFieldStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return valid(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return valid?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProjectFormFieldStateInitial value)
        initial,
    required TResult Function(_CreateProjectFormFieldStateValid value) valid,
    required TResult Function(_CreateProjectFormFieldStateLoading value)
        loading,
    required TResult Function(_CreateProjectFormFieldStateInvalid value)
        invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult? Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult? Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult? Function(_CreateProjectFormFieldStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult Function(_CreateProjectFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _CreateProjectFormFieldStateValid
    implements CreateProjectFormFieldState {
  const factory _CreateProjectFormFieldStateValid(
      {required final bool isValid,
      required final String? message}) = _$CreateProjectFormFieldStateValidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectFormFieldStateValidImplCopyWith<
          _$CreateProjectFormFieldStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProjectFormFieldStateLoadingImplCopyWith<$Res>
    implements $CreateProjectFormFieldStateCopyWith<$Res> {
  factory _$$CreateProjectFormFieldStateLoadingImplCopyWith(
          _$CreateProjectFormFieldStateLoadingImpl value,
          $Res Function(_$CreateProjectFormFieldStateLoadingImpl) then) =
      __$$CreateProjectFormFieldStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$CreateProjectFormFieldStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateProjectFormFieldStateCopyWithImpl<$Res,
        _$CreateProjectFormFieldStateLoadingImpl>
    implements _$$CreateProjectFormFieldStateLoadingImplCopyWith<$Res> {
  __$$CreateProjectFormFieldStateLoadingImplCopyWithImpl(
      _$CreateProjectFormFieldStateLoadingImpl _value,
      $Res Function(_$CreateProjectFormFieldStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$CreateProjectFormFieldStateLoadingImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProjectFormFieldStateLoadingImpl
    implements _CreateProjectFormFieldStateLoading {
  const _$CreateProjectFormFieldStateLoadingImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateProjectFormFieldState.loading(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectFormFieldStateLoadingImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectFormFieldStateLoadingImplCopyWith<
          _$CreateProjectFormFieldStateLoadingImpl>
      get copyWith => __$$CreateProjectFormFieldStateLoadingImplCopyWithImpl<
          _$CreateProjectFormFieldStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return loading(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return loading?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProjectFormFieldStateInitial value)
        initial,
    required TResult Function(_CreateProjectFormFieldStateValid value) valid,
    required TResult Function(_CreateProjectFormFieldStateLoading value)
        loading,
    required TResult Function(_CreateProjectFormFieldStateInvalid value)
        invalid,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult? Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult? Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult? Function(_CreateProjectFormFieldStateInvalid value)? invalid,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult Function(_CreateProjectFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CreateProjectFormFieldStateLoading
    implements CreateProjectFormFieldState {
  const factory _CreateProjectFormFieldStateLoading(
          {required final bool isValid, required final String? message}) =
      _$CreateProjectFormFieldStateLoadingImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectFormFieldStateLoadingImplCopyWith<
          _$CreateProjectFormFieldStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProjectFormFieldStateInvalidImplCopyWith<$Res>
    implements $CreateProjectFormFieldStateCopyWith<$Res> {
  factory _$$CreateProjectFormFieldStateInvalidImplCopyWith(
          _$CreateProjectFormFieldStateInvalidImpl value,
          $Res Function(_$CreateProjectFormFieldStateInvalidImpl) then) =
      __$$CreateProjectFormFieldStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid, String? message});
}

/// @nodoc
class __$$CreateProjectFormFieldStateInvalidImplCopyWithImpl<$Res>
    extends _$CreateProjectFormFieldStateCopyWithImpl<$Res,
        _$CreateProjectFormFieldStateInvalidImpl>
    implements _$$CreateProjectFormFieldStateInvalidImplCopyWith<$Res> {
  __$$CreateProjectFormFieldStateInvalidImplCopyWithImpl(
      _$CreateProjectFormFieldStateInvalidImpl _value,
      $Res Function(_$CreateProjectFormFieldStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
    Object? message = freezed,
  }) {
    return _then(_$CreateProjectFormFieldStateInvalidImpl(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateProjectFormFieldStateInvalidImpl
    implements _CreateProjectFormFieldStateInvalid {
  const _$CreateProjectFormFieldStateInvalidImpl(
      {required this.isValid, required this.message});

  @override
  final bool isValid;
  @override
  final String? message;

  @override
  String toString() {
    return 'CreateProjectFormFieldState.invalid(isValid: $isValid, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectFormFieldStateInvalidImpl &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isValid, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectFormFieldStateInvalidImplCopyWith<
          _$CreateProjectFormFieldStateInvalidImpl>
      get copyWith => __$$CreateProjectFormFieldStateInvalidImplCopyWithImpl<
          _$CreateProjectFormFieldStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isValid, String? message) initial,
    required TResult Function(bool isValid, String? message) valid,
    required TResult Function(bool isValid, String? message) loading,
    required TResult Function(bool isValid, String? message) invalid,
  }) {
    return invalid(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isValid, String? message)? initial,
    TResult? Function(bool isValid, String? message)? valid,
    TResult? Function(bool isValid, String? message)? loading,
    TResult? Function(bool isValid, String? message)? invalid,
  }) {
    return invalid?.call(isValid, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isValid, String? message)? initial,
    TResult Function(bool isValid, String? message)? valid,
    TResult Function(bool isValid, String? message)? loading,
    TResult Function(bool isValid, String? message)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(isValid, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProjectFormFieldStateInitial value)
        initial,
    required TResult Function(_CreateProjectFormFieldStateValid value) valid,
    required TResult Function(_CreateProjectFormFieldStateLoading value)
        loading,
    required TResult Function(_CreateProjectFormFieldStateInvalid value)
        invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult? Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult? Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult? Function(_CreateProjectFormFieldStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProjectFormFieldStateInitial value)? initial,
    TResult Function(_CreateProjectFormFieldStateValid value)? valid,
    TResult Function(_CreateProjectFormFieldStateLoading value)? loading,
    TResult Function(_CreateProjectFormFieldStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _CreateProjectFormFieldStateInvalid
    implements CreateProjectFormFieldState {
  const factory _CreateProjectFormFieldStateInvalid(
          {required final bool isValid, required final String? message}) =
      _$CreateProjectFormFieldStateInvalidImpl;

  @override
  bool get isValid;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectFormFieldStateInvalidImplCopyWith<
          _$CreateProjectFormFieldStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}
