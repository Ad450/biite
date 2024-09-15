// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailState {
  String get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailStateInitial value) initial,
    required TResult Function(_EmailStateValid value) valid,
    required TResult Function(_EmailStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailStateInitial value)? initial,
    TResult? Function(_EmailStateValid value)? valid,
    TResult? Function(_EmailStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailStateInitial value)? initial,
    TResult Function(_EmailStateValid value)? valid,
    TResult Function(_EmailStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailStateCopyWith<EmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res, EmailState>;
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res, $Val extends EmailState>
    implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailStateInitialImplCopyWith<$Res>
    implements $EmailStateCopyWith<$Res> {
  factory _$$EmailStateInitialImplCopyWith(_$EmailStateInitialImpl value,
          $Res Function(_$EmailStateInitialImpl) then) =
      __$$EmailStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$EmailStateInitialImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$EmailStateInitialImpl>
    implements _$$EmailStateInitialImplCopyWith<$Res> {
  __$$EmailStateInitialImplCopyWithImpl(_$EmailStateInitialImpl _value,
      $Res Function(_$EmailStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$EmailStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailStateInitialImpl implements EmailStateInitial {
  const _$EmailStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'EmailState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailStateInitialImplCopyWith<_$EmailStateInitialImpl> get copyWith =>
      __$$EmailStateInitialImplCopyWithImpl<_$EmailStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailStateInitial value) initial,
    required TResult Function(_EmailStateValid value) valid,
    required TResult Function(_EmailStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailStateInitial value)? initial,
    TResult? Function(_EmailStateValid value)? valid,
    TResult? Function(_EmailStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailStateInitial value)? initial,
    TResult Function(_EmailStateValid value)? valid,
    TResult Function(_EmailStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EmailStateInitial implements EmailState {
  const factory EmailStateInitial(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$EmailStateInitialImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$EmailStateInitialImplCopyWith<_$EmailStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailStateValidImplCopyWith<$Res>
    implements $EmailStateCopyWith<$Res> {
  factory _$$EmailStateValidImplCopyWith(_$EmailStateValidImpl value,
          $Res Function(_$EmailStateValidImpl) then) =
      __$$EmailStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$EmailStateValidImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$EmailStateValidImpl>
    implements _$$EmailStateValidImplCopyWith<$Res> {
  __$$EmailStateValidImplCopyWithImpl(
      _$EmailStateValidImpl _value, $Res Function(_$EmailStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$EmailStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailStateValidImpl implements _EmailStateValid {
  const _$EmailStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'EmailState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailStateValidImplCopyWith<_$EmailStateValidImpl> get copyWith =>
      __$$EmailStateValidImplCopyWithImpl<_$EmailStateValidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailStateInitial value) initial,
    required TResult Function(_EmailStateValid value) valid,
    required TResult Function(_EmailStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailStateInitial value)? initial,
    TResult? Function(_EmailStateValid value)? valid,
    TResult? Function(_EmailStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailStateInitial value)? initial,
    TResult Function(_EmailStateValid value)? valid,
    TResult Function(_EmailStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _EmailStateValid implements EmailState {
  const factory _EmailStateValid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$EmailStateValidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$EmailStateValidImplCopyWith<_$EmailStateValidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailStateInvalidImplCopyWith<$Res>
    implements $EmailStateCopyWith<$Res> {
  factory _$$EmailStateInvalidImplCopyWith(_$EmailStateInvalidImpl value,
          $Res Function(_$EmailStateInvalidImpl) then) =
      __$$EmailStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$EmailStateInvalidImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$EmailStateInvalidImpl>
    implements _$$EmailStateInvalidImplCopyWith<$Res> {
  __$$EmailStateInvalidImplCopyWithImpl(_$EmailStateInvalidImpl _value,
      $Res Function(_$EmailStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$EmailStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmailStateInvalidImpl implements _EmailStateInvalid {
  const _$EmailStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'EmailState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailStateInvalidImplCopyWith<_$EmailStateInvalidImpl> get copyWith =>
      __$$EmailStateInvalidImplCopyWithImpl<_$EmailStateInvalidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailStateInitial value) initial,
    required TResult Function(_EmailStateValid value) valid,
    required TResult Function(_EmailStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailStateInitial value)? initial,
    TResult? Function(_EmailStateValid value)? valid,
    TResult? Function(_EmailStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailStateInitial value)? initial,
    TResult Function(_EmailStateValid value)? valid,
    TResult Function(_EmailStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _EmailStateInvalid implements EmailState {
  const factory _EmailStateInvalid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$EmailStateInvalidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$EmailStateInvalidImplCopyWith<_$EmailStateInvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NameState {
  String get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameStateInitial value) initial,
    required TResult Function(_NameStateValid value) valid,
    required TResult Function(_NameStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameStateInitial value)? initial,
    TResult? Function(_NameStateValid value)? valid,
    TResult? Function(_NameStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameStateInitial value)? initial,
    TResult Function(_NameStateValid value)? valid,
    TResult Function(_NameStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameStateCopyWith<NameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameStateCopyWith<$Res> {
  factory $NameStateCopyWith(NameState value, $Res Function(NameState) then) =
      _$NameStateCopyWithImpl<$Res, NameState>;
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class _$NameStateCopyWithImpl<$Res, $Val extends NameState>
    implements $NameStateCopyWith<$Res> {
  _$NameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameStateInitialImplCopyWith<$Res>
    implements $NameStateCopyWith<$Res> {
  factory _$$NameStateInitialImplCopyWith(_$NameStateInitialImpl value,
          $Res Function(_$NameStateInitialImpl) then) =
      __$$NameStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$NameStateInitialImplCopyWithImpl<$Res>
    extends _$NameStateCopyWithImpl<$Res, _$NameStateInitialImpl>
    implements _$$NameStateInitialImplCopyWith<$Res> {
  __$$NameStateInitialImplCopyWithImpl(_$NameStateInitialImpl _value,
      $Res Function(_$NameStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$NameStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NameStateInitialImpl implements NameStateInitial {
  const _$NameStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'NameState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameStateInitialImplCopyWith<_$NameStateInitialImpl> get copyWith =>
      __$$NameStateInitialImplCopyWithImpl<_$NameStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameStateInitial value) initial,
    required TResult Function(_NameStateValid value) valid,
    required TResult Function(_NameStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameStateInitial value)? initial,
    TResult? Function(_NameStateValid value)? valid,
    TResult? Function(_NameStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameStateInitial value)? initial,
    TResult Function(_NameStateValid value)? valid,
    TResult Function(_NameStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NameStateInitial implements NameState {
  const factory NameStateInitial(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$NameStateInitialImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$NameStateInitialImplCopyWith<_$NameStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameStateValidImplCopyWith<$Res>
    implements $NameStateCopyWith<$Res> {
  factory _$$NameStateValidImplCopyWith(_$NameStateValidImpl value,
          $Res Function(_$NameStateValidImpl) then) =
      __$$NameStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$NameStateValidImplCopyWithImpl<$Res>
    extends _$NameStateCopyWithImpl<$Res, _$NameStateValidImpl>
    implements _$$NameStateValidImplCopyWith<$Res> {
  __$$NameStateValidImplCopyWithImpl(
      _$NameStateValidImpl _value, $Res Function(_$NameStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$NameStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NameStateValidImpl implements _NameStateValid {
  const _$NameStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'NameState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameStateValidImplCopyWith<_$NameStateValidImpl> get copyWith =>
      __$$NameStateValidImplCopyWithImpl<_$NameStateValidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameStateInitial value) initial,
    required TResult Function(_NameStateValid value) valid,
    required TResult Function(_NameStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameStateInitial value)? initial,
    TResult? Function(_NameStateValid value)? valid,
    TResult? Function(_NameStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameStateInitial value)? initial,
    TResult Function(_NameStateValid value)? valid,
    TResult Function(_NameStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _NameStateValid implements NameState {
  const factory _NameStateValid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$NameStateValidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$NameStateValidImplCopyWith<_$NameStateValidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameStateInvalidImplCopyWith<$Res>
    implements $NameStateCopyWith<$Res> {
  factory _$$NameStateInvalidImplCopyWith(_$NameStateInvalidImpl value,
          $Res Function(_$NameStateInvalidImpl) then) =
      __$$NameStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$NameStateInvalidImplCopyWithImpl<$Res>
    extends _$NameStateCopyWithImpl<$Res, _$NameStateInvalidImpl>
    implements _$$NameStateInvalidImplCopyWith<$Res> {
  __$$NameStateInvalidImplCopyWithImpl(_$NameStateInvalidImpl _value,
      $Res Function(_$NameStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$NameStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NameStateInvalidImpl implements _NameStateInvalid {
  const _$NameStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'NameState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameStateInvalidImplCopyWith<_$NameStateInvalidImpl> get copyWith =>
      __$$NameStateInvalidImplCopyWithImpl<_$NameStateInvalidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameStateInitial value) initial,
    required TResult Function(_NameStateValid value) valid,
    required TResult Function(_NameStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameStateInitial value)? initial,
    TResult? Function(_NameStateValid value)? valid,
    TResult? Function(_NameStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameStateInitial value)? initial,
    TResult Function(_NameStateValid value)? valid,
    TResult Function(_NameStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _NameStateInvalid implements NameState {
  const factory _NameStateInvalid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$NameStateInvalidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$NameStateInvalidImplCopyWith<_$NameStateInvalidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmPasswordState {
  String get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordStateInitial value) initial,
    required TResult Function(_ConfirmPasswordStateValid value) valid,
    required TResult Function(_ConfirmPasswordStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmPasswordStateInitial value)? initial,
    TResult? Function(_ConfirmPasswordStateValid value)? valid,
    TResult? Function(_ConfirmPasswordStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordStateInitial value)? initial,
    TResult Function(_ConfirmPasswordStateValid value)? valid,
    TResult Function(_ConfirmPasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmPasswordStateCopyWith<ConfirmPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPasswordStateCopyWith<$Res> {
  factory $ConfirmPasswordStateCopyWith(ConfirmPasswordState value,
          $Res Function(ConfirmPasswordState) then) =
      _$ConfirmPasswordStateCopyWithImpl<$Res, ConfirmPasswordState>;
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class _$ConfirmPasswordStateCopyWithImpl<$Res,
        $Val extends ConfirmPasswordState>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  _$ConfirmPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmPasswordStateInitialImplCopyWith<$Res>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  factory _$$ConfirmPasswordStateInitialImplCopyWith(
          _$ConfirmPasswordStateInitialImpl value,
          $Res Function(_$ConfirmPasswordStateInitialImpl) then) =
      __$$ConfirmPasswordStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$ConfirmPasswordStateInitialImplCopyWithImpl<$Res>
    extends _$ConfirmPasswordStateCopyWithImpl<$Res,
        _$ConfirmPasswordStateInitialImpl>
    implements _$$ConfirmPasswordStateInitialImplCopyWith<$Res> {
  __$$ConfirmPasswordStateInitialImplCopyWithImpl(
      _$ConfirmPasswordStateInitialImpl _value,
      $Res Function(_$ConfirmPasswordStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ConfirmPasswordStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordStateInitialImpl implements ConfirmPasswordStateInitial {
  const _$ConfirmPasswordStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'ConfirmPasswordState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordStateInitialImplCopyWith<_$ConfirmPasswordStateInitialImpl>
      get copyWith => __$$ConfirmPasswordStateInitialImplCopyWithImpl<
          _$ConfirmPasswordStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordStateInitial value) initial,
    required TResult Function(_ConfirmPasswordStateValid value) valid,
    required TResult Function(_ConfirmPasswordStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmPasswordStateInitial value)? initial,
    TResult? Function(_ConfirmPasswordStateValid value)? valid,
    TResult? Function(_ConfirmPasswordStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordStateInitial value)? initial,
    TResult Function(_ConfirmPasswordStateValid value)? valid,
    TResult Function(_ConfirmPasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordStateInitial implements ConfirmPasswordState {
  const factory ConfirmPasswordStateInitial(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$ConfirmPasswordStateInitialImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmPasswordStateInitialImplCopyWith<_$ConfirmPasswordStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordStateValidImplCopyWith<$Res>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  factory _$$ConfirmPasswordStateValidImplCopyWith(
          _$ConfirmPasswordStateValidImpl value,
          $Res Function(_$ConfirmPasswordStateValidImpl) then) =
      __$$ConfirmPasswordStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$ConfirmPasswordStateValidImplCopyWithImpl<$Res>
    extends _$ConfirmPasswordStateCopyWithImpl<$Res,
        _$ConfirmPasswordStateValidImpl>
    implements _$$ConfirmPasswordStateValidImplCopyWith<$Res> {
  __$$ConfirmPasswordStateValidImplCopyWithImpl(
      _$ConfirmPasswordStateValidImpl _value,
      $Res Function(_$ConfirmPasswordStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ConfirmPasswordStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordStateValidImpl implements _ConfirmPasswordStateValid {
  const _$ConfirmPasswordStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'ConfirmPasswordState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordStateValidImplCopyWith<_$ConfirmPasswordStateValidImpl>
      get copyWith => __$$ConfirmPasswordStateValidImplCopyWithImpl<
          _$ConfirmPasswordStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordStateInitial value) initial,
    required TResult Function(_ConfirmPasswordStateValid value) valid,
    required TResult Function(_ConfirmPasswordStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmPasswordStateInitial value)? initial,
    TResult? Function(_ConfirmPasswordStateValid value)? valid,
    TResult? Function(_ConfirmPasswordStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordStateInitial value)? initial,
    TResult Function(_ConfirmPasswordStateValid value)? valid,
    TResult Function(_ConfirmPasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordStateValid implements ConfirmPasswordState {
  const factory _ConfirmPasswordStateValid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$ConfirmPasswordStateValidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmPasswordStateValidImplCopyWith<_$ConfirmPasswordStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordStateInvalidImplCopyWith<$Res>
    implements $ConfirmPasswordStateCopyWith<$Res> {
  factory _$$ConfirmPasswordStateInvalidImplCopyWith(
          _$ConfirmPasswordStateInvalidImpl value,
          $Res Function(_$ConfirmPasswordStateInvalidImpl) then) =
      __$$ConfirmPasswordStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$ConfirmPasswordStateInvalidImplCopyWithImpl<$Res>
    extends _$ConfirmPasswordStateCopyWithImpl<$Res,
        _$ConfirmPasswordStateInvalidImpl>
    implements _$$ConfirmPasswordStateInvalidImplCopyWith<$Res> {
  __$$ConfirmPasswordStateInvalidImplCopyWithImpl(
      _$ConfirmPasswordStateInvalidImpl _value,
      $Res Function(_$ConfirmPasswordStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$ConfirmPasswordStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordStateInvalidImpl
    implements _ConfirmPasswordStateInvalid {
  const _$ConfirmPasswordStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'ConfirmPasswordState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordStateInvalidImplCopyWith<_$ConfirmPasswordStateInvalidImpl>
      get copyWith => __$$ConfirmPasswordStateInvalidImplCopyWithImpl<
          _$ConfirmPasswordStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConfirmPasswordStateInitial value) initial,
    required TResult Function(_ConfirmPasswordStateValid value) valid,
    required TResult Function(_ConfirmPasswordStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConfirmPasswordStateInitial value)? initial,
    TResult? Function(_ConfirmPasswordStateValid value)? valid,
    TResult? Function(_ConfirmPasswordStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConfirmPasswordStateInitial value)? initial,
    TResult Function(_ConfirmPasswordStateValid value)? valid,
    TResult Function(_ConfirmPasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordStateInvalid implements ConfirmPasswordState {
  const factory _ConfirmPasswordStateInvalid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$ConfirmPasswordStateInvalidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmPasswordStateInvalidImplCopyWith<_$ConfirmPasswordStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordState {
  String get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordStateInitial value) initial,
    required TResult Function(_PasswordStateValid value) valid,
    required TResult Function(_PasswordStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordStateInitial value)? initial,
    TResult? Function(_PasswordStateValid value)? valid,
    TResult? Function(_PasswordStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordStateInitial value)? initial,
    TResult Function(_PasswordStateValid value)? valid,
    TResult Function(_PasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res, PasswordState>;
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res, $Val extends PasswordState>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordStateInitialImplCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$PasswordStateInitialImplCopyWith(_$PasswordStateInitialImpl value,
          $Res Function(_$PasswordStateInitialImpl) then) =
      __$$PasswordStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$PasswordStateInitialImplCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$PasswordStateInitialImpl>
    implements _$$PasswordStateInitialImplCopyWith<$Res> {
  __$$PasswordStateInitialImplCopyWithImpl(_$PasswordStateInitialImpl _value,
      $Res Function(_$PasswordStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$PasswordStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordStateInitialImpl implements _PasswordStateInitial {
  const _$PasswordStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'PasswordState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStateInitialImplCopyWith<_$PasswordStateInitialImpl>
      get copyWith =>
          __$$PasswordStateInitialImplCopyWithImpl<_$PasswordStateInitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordStateInitial value) initial,
    required TResult Function(_PasswordStateValid value) valid,
    required TResult Function(_PasswordStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordStateInitial value)? initial,
    TResult? Function(_PasswordStateValid value)? valid,
    TResult? Function(_PasswordStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordStateInitial value)? initial,
    TResult Function(_PasswordStateValid value)? valid,
    TResult Function(_PasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PasswordStateInitial implements PasswordState {
  const factory _PasswordStateInitial(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$PasswordStateInitialImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$PasswordStateInitialImplCopyWith<_$PasswordStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordStateValidImplCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$PasswordStateValidImplCopyWith(_$PasswordStateValidImpl value,
          $Res Function(_$PasswordStateValidImpl) then) =
      __$$PasswordStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$PasswordStateValidImplCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$PasswordStateValidImpl>
    implements _$$PasswordStateValidImplCopyWith<$Res> {
  __$$PasswordStateValidImplCopyWithImpl(_$PasswordStateValidImpl _value,
      $Res Function(_$PasswordStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$PasswordStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordStateValidImpl implements _PasswordStateValid {
  const _$PasswordStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'PasswordState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStateValidImplCopyWith<_$PasswordStateValidImpl> get copyWith =>
      __$$PasswordStateValidImplCopyWithImpl<_$PasswordStateValidImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordStateInitial value) initial,
    required TResult Function(_PasswordStateValid value) valid,
    required TResult Function(_PasswordStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordStateInitial value)? initial,
    TResult? Function(_PasswordStateValid value)? valid,
    TResult? Function(_PasswordStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordStateInitial value)? initial,
    TResult Function(_PasswordStateValid value)? valid,
    TResult Function(_PasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _PasswordStateValid implements PasswordState {
  const factory _PasswordStateValid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$PasswordStateValidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$PasswordStateValidImplCopyWith<_$PasswordStateValidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordStateInvalidImplCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$PasswordStateInvalidImplCopyWith(_$PasswordStateInvalidImpl value,
          $Res Function(_$PasswordStateInvalidImpl) then) =
      __$$PasswordStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$PasswordStateInvalidImplCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$PasswordStateInvalidImpl>
    implements _$$PasswordStateInvalidImplCopyWith<$Res> {
  __$$PasswordStateInvalidImplCopyWithImpl(_$PasswordStateInvalidImpl _value,
      $Res Function(_$PasswordStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$PasswordStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PasswordStateInvalidImpl implements _PasswordStateInvalid {
  const _$PasswordStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'PasswordState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordStateInvalidImplCopyWith<_$PasswordStateInvalidImpl>
      get copyWith =>
          __$$PasswordStateInvalidImplCopyWithImpl<_$PasswordStateInvalidImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordStateInitial value) initial,
    required TResult Function(_PasswordStateValid value) valid,
    required TResult Function(_PasswordStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordStateInitial value)? initial,
    TResult? Function(_PasswordStateValid value)? valid,
    TResult? Function(_PasswordStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordStateInitial value)? initial,
    TResult Function(_PasswordStateValid value)? valid,
    TResult Function(_PasswordStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _PasswordStateInvalid implements PasswordState {
  const factory _PasswordStateInvalid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$PasswordStateInvalidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$PasswordStateInvalidImplCopyWith<_$PasswordStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DescriptionState {
  String get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DescriptionStateInitial value) initial,
    required TResult Function(_DescriptionStateValid value) valid,
    required TResult Function(_DescriptionStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DescriptionStateInitial value)? initial,
    TResult? Function(_DescriptionStateValid value)? valid,
    TResult? Function(_DescriptionStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DescriptionStateInitial value)? initial,
    TResult Function(_DescriptionStateValid value)? valid,
    TResult Function(_DescriptionStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DescriptionStateCopyWith<DescriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionStateCopyWith<$Res> {
  factory $DescriptionStateCopyWith(
          DescriptionState value, $Res Function(DescriptionState) then) =
      _$DescriptionStateCopyWithImpl<$Res, DescriptionState>;
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class _$DescriptionStateCopyWithImpl<$Res, $Val extends DescriptionState>
    implements $DescriptionStateCopyWith<$Res> {
  _$DescriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescriptionStateInitialImplCopyWith<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  factory _$$DescriptionStateInitialImplCopyWith(
          _$DescriptionStateInitialImpl value,
          $Res Function(_$DescriptionStateInitialImpl) then) =
      __$$DescriptionStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$DescriptionStateInitialImplCopyWithImpl<$Res>
    extends _$DescriptionStateCopyWithImpl<$Res, _$DescriptionStateInitialImpl>
    implements _$$DescriptionStateInitialImplCopyWith<$Res> {
  __$$DescriptionStateInitialImplCopyWithImpl(
      _$DescriptionStateInitialImpl _value,
      $Res Function(_$DescriptionStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$DescriptionStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DescriptionStateInitialImpl implements _DescriptionStateInitial {
  const _$DescriptionStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'DescriptionState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionStateInitialImplCopyWith<_$DescriptionStateInitialImpl>
      get copyWith => __$$DescriptionStateInitialImplCopyWithImpl<
          _$DescriptionStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DescriptionStateInitial value) initial,
    required TResult Function(_DescriptionStateValid value) valid,
    required TResult Function(_DescriptionStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DescriptionStateInitial value)? initial,
    TResult? Function(_DescriptionStateValid value)? valid,
    TResult? Function(_DescriptionStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DescriptionStateInitial value)? initial,
    TResult Function(_DescriptionStateValid value)? valid,
    TResult Function(_DescriptionStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DescriptionStateInitial implements DescriptionState {
  const factory _DescriptionStateInitial(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$DescriptionStateInitialImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$DescriptionStateInitialImplCopyWith<_$DescriptionStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionStateValidImplCopyWith<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  factory _$$DescriptionStateValidImplCopyWith(
          _$DescriptionStateValidImpl value,
          $Res Function(_$DescriptionStateValidImpl) then) =
      __$$DescriptionStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$DescriptionStateValidImplCopyWithImpl<$Res>
    extends _$DescriptionStateCopyWithImpl<$Res, _$DescriptionStateValidImpl>
    implements _$$DescriptionStateValidImplCopyWith<$Res> {
  __$$DescriptionStateValidImplCopyWithImpl(_$DescriptionStateValidImpl _value,
      $Res Function(_$DescriptionStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$DescriptionStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DescriptionStateValidImpl implements _DescriptionStateValid {
  const _$DescriptionStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'DescriptionState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionStateValidImplCopyWith<_$DescriptionStateValidImpl>
      get copyWith => __$$DescriptionStateValidImplCopyWithImpl<
          _$DescriptionStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DescriptionStateInitial value) initial,
    required TResult Function(_DescriptionStateValid value) valid,
    required TResult Function(_DescriptionStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DescriptionStateInitial value)? initial,
    TResult? Function(_DescriptionStateValid value)? valid,
    TResult? Function(_DescriptionStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DescriptionStateInitial value)? initial,
    TResult Function(_DescriptionStateValid value)? valid,
    TResult Function(_DescriptionStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _DescriptionStateValid implements DescriptionState {
  const factory _DescriptionStateValid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$DescriptionStateValidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$DescriptionStateValidImplCopyWith<_$DescriptionStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescriptionStateInvalidImplCopyWith<$Res>
    implements $DescriptionStateCopyWith<$Res> {
  factory _$$DescriptionStateInvalidImplCopyWith(
          _$DescriptionStateInvalidImpl value,
          $Res Function(_$DescriptionStateInvalidImpl) then) =
      __$$DescriptionStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String? message, bool isValid});
}

/// @nodoc
class __$$DescriptionStateInvalidImplCopyWithImpl<$Res>
    extends _$DescriptionStateCopyWithImpl<$Res, _$DescriptionStateInvalidImpl>
    implements _$$DescriptionStateInvalidImplCopyWith<$Res> {
  __$$DescriptionStateInvalidImplCopyWithImpl(
      _$DescriptionStateInvalidImpl _value,
      $Res Function(_$DescriptionStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$DescriptionStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DescriptionStateInvalidImpl implements _DescriptionStateInvalid {
  const _$DescriptionStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final String data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'DescriptionState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescriptionStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescriptionStateInvalidImplCopyWith<_$DescriptionStateInvalidImpl>
      get copyWith => __$$DescriptionStateInvalidImplCopyWithImpl<
          _$DescriptionStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, String? message, bool isValid)
        initial,
    required TResult Function(String data, String? message, bool isValid) valid,
    required TResult Function(String data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, String? message, bool isValid)? initial,
    TResult? Function(String data, String? message, bool isValid)? valid,
    TResult? Function(String data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, String? message, bool isValid)? initial,
    TResult Function(String data, String? message, bool isValid)? valid,
    TResult Function(String data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DescriptionStateInitial value) initial,
    required TResult Function(_DescriptionStateValid value) valid,
    required TResult Function(_DescriptionStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DescriptionStateInitial value)? initial,
    TResult? Function(_DescriptionStateValid value)? valid,
    TResult? Function(_DescriptionStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DescriptionStateInitial value)? initial,
    TResult Function(_DescriptionStateValid value)? valid,
    TResult Function(_DescriptionStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _DescriptionStateInvalid implements DescriptionState {
  const factory _DescriptionStateInvalid(
      {required final String data,
      required final String? message,
      required final bool isValid}) = _$DescriptionStateInvalidImpl;

  @override
  String get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$DescriptionStateInvalidImplCopyWith<_$DescriptionStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompensationState {
  double get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double data, String? message, bool isValid)
        initial,
    required TResult Function(double data, String? message, bool isValid) valid,
    required TResult Function(double data, String? message, bool isValid)
        invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double data, String? message, bool isValid)? initial,
    TResult? Function(double data, String? message, bool isValid)? valid,
    TResult? Function(double data, String? message, bool isValid)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double data, String? message, bool isValid)? initial,
    TResult Function(double data, String? message, bool isValid)? valid,
    TResult Function(double data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompensationStateInitial value) initial,
    required TResult Function(_CompensationStateValid value) valid,
    required TResult Function(_CompensationStateInvalid value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompensationStateInitial value)? initial,
    TResult? Function(_CompensationStateValid value)? valid,
    TResult? Function(_CompensationStateInvalid value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompensationStateInitial value)? initial,
    TResult Function(_CompensationStateValid value)? valid,
    TResult Function(_CompensationStateInvalid value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompensationStateCopyWith<CompensationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompensationStateCopyWith<$Res> {
  factory $CompensationStateCopyWith(
          CompensationState value, $Res Function(CompensationState) then) =
      _$CompensationStateCopyWithImpl<$Res, CompensationState>;
  @useResult
  $Res call({double data, String? message, bool isValid});
}

/// @nodoc
class _$CompensationStateCopyWithImpl<$Res, $Val extends CompensationState>
    implements $CompensationStateCopyWith<$Res> {
  _$CompensationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompensationStateInitialImplCopyWith<$Res>
    implements $CompensationStateCopyWith<$Res> {
  factory _$$CompensationStateInitialImplCopyWith(
          _$CompensationStateInitialImpl value,
          $Res Function(_$CompensationStateInitialImpl) then) =
      __$$CompensationStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double data, String? message, bool isValid});
}

/// @nodoc
class __$$CompensationStateInitialImplCopyWithImpl<$Res>
    extends _$CompensationStateCopyWithImpl<$Res,
        _$CompensationStateInitialImpl>
    implements _$$CompensationStateInitialImplCopyWith<$Res> {
  __$$CompensationStateInitialImplCopyWithImpl(
      _$CompensationStateInitialImpl _value,
      $Res Function(_$CompensationStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$CompensationStateInitialImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompensationStateInitialImpl implements _CompensationStateInitial {
  const _$CompensationStateInitialImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final double data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'CompensationState.initial(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompensationStateInitialImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompensationStateInitialImplCopyWith<_$CompensationStateInitialImpl>
      get copyWith => __$$CompensationStateInitialImplCopyWithImpl<
          _$CompensationStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double data, String? message, bool isValid)
        initial,
    required TResult Function(double data, String? message, bool isValid) valid,
    required TResult Function(double data, String? message, bool isValid)
        invalid,
  }) {
    return initial(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double data, String? message, bool isValid)? initial,
    TResult? Function(double data, String? message, bool isValid)? valid,
    TResult? Function(double data, String? message, bool isValid)? invalid,
  }) {
    return initial?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double data, String? message, bool isValid)? initial,
    TResult Function(double data, String? message, bool isValid)? valid,
    TResult Function(double data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompensationStateInitial value) initial,
    required TResult Function(_CompensationStateValid value) valid,
    required TResult Function(_CompensationStateInvalid value) invalid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompensationStateInitial value)? initial,
    TResult? Function(_CompensationStateValid value)? valid,
    TResult? Function(_CompensationStateInvalid value)? invalid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompensationStateInitial value)? initial,
    TResult Function(_CompensationStateValid value)? valid,
    TResult Function(_CompensationStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CompensationStateInitial implements CompensationState {
  const factory _CompensationStateInitial(
      {required final double data,
      required final String? message,
      required final bool isValid}) = _$CompensationStateInitialImpl;

  @override
  double get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$CompensationStateInitialImplCopyWith<_$CompensationStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompensationStateValidImplCopyWith<$Res>
    implements $CompensationStateCopyWith<$Res> {
  factory _$$CompensationStateValidImplCopyWith(
          _$CompensationStateValidImpl value,
          $Res Function(_$CompensationStateValidImpl) then) =
      __$$CompensationStateValidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double data, String? message, bool isValid});
}

/// @nodoc
class __$$CompensationStateValidImplCopyWithImpl<$Res>
    extends _$CompensationStateCopyWithImpl<$Res, _$CompensationStateValidImpl>
    implements _$$CompensationStateValidImplCopyWith<$Res> {
  __$$CompensationStateValidImplCopyWithImpl(
      _$CompensationStateValidImpl _value,
      $Res Function(_$CompensationStateValidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$CompensationStateValidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompensationStateValidImpl implements _CompensationStateValid {
  const _$CompensationStateValidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final double data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'CompensationState.valid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompensationStateValidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompensationStateValidImplCopyWith<_$CompensationStateValidImpl>
      get copyWith => __$$CompensationStateValidImplCopyWithImpl<
          _$CompensationStateValidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double data, String? message, bool isValid)
        initial,
    required TResult Function(double data, String? message, bool isValid) valid,
    required TResult Function(double data, String? message, bool isValid)
        invalid,
  }) {
    return valid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double data, String? message, bool isValid)? initial,
    TResult? Function(double data, String? message, bool isValid)? valid,
    TResult? Function(double data, String? message, bool isValid)? invalid,
  }) {
    return valid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double data, String? message, bool isValid)? initial,
    TResult Function(double data, String? message, bool isValid)? valid,
    TResult Function(double data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompensationStateInitial value) initial,
    required TResult Function(_CompensationStateValid value) valid,
    required TResult Function(_CompensationStateInvalid value) invalid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompensationStateInitial value)? initial,
    TResult? Function(_CompensationStateValid value)? valid,
    TResult? Function(_CompensationStateInvalid value)? invalid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompensationStateInitial value)? initial,
    TResult Function(_CompensationStateValid value)? valid,
    TResult Function(_CompensationStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _CompensationStateValid implements CompensationState {
  const factory _CompensationStateValid(
      {required final double data,
      required final String? message,
      required final bool isValid}) = _$CompensationStateValidImpl;

  @override
  double get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$CompensationStateValidImplCopyWith<_$CompensationStateValidImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompensationStateInvalidImplCopyWith<$Res>
    implements $CompensationStateCopyWith<$Res> {
  factory _$$CompensationStateInvalidImplCopyWith(
          _$CompensationStateInvalidImpl value,
          $Res Function(_$CompensationStateInvalidImpl) then) =
      __$$CompensationStateInvalidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double data, String? message, bool isValid});
}

/// @nodoc
class __$$CompensationStateInvalidImplCopyWithImpl<$Res>
    extends _$CompensationStateCopyWithImpl<$Res,
        _$CompensationStateInvalidImpl>
    implements _$$CompensationStateInvalidImplCopyWith<$Res> {
  __$$CompensationStateInvalidImplCopyWithImpl(
      _$CompensationStateInvalidImpl _value,
      $Res Function(_$CompensationStateInvalidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = freezed,
    Object? isValid = null,
  }) {
    return _then(_$CompensationStateInvalidImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as double,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompensationStateInvalidImpl implements _CompensationStateInvalid {
  const _$CompensationStateInvalidImpl(
      {required this.data, required this.message, required this.isValid});

  @override
  final double data;
  @override
  final String? message;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'CompensationState.invalid(data: $data, message: $message, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompensationStateInvalidImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, message, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompensationStateInvalidImplCopyWith<_$CompensationStateInvalidImpl>
      get copyWith => __$$CompensationStateInvalidImplCopyWithImpl<
          _$CompensationStateInvalidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double data, String? message, bool isValid)
        initial,
    required TResult Function(double data, String? message, bool isValid) valid,
    required TResult Function(double data, String? message, bool isValid)
        invalid,
  }) {
    return invalid(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double data, String? message, bool isValid)? initial,
    TResult? Function(double data, String? message, bool isValid)? valid,
    TResult? Function(double data, String? message, bool isValid)? invalid,
  }) {
    return invalid?.call(data, message, isValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double data, String? message, bool isValid)? initial,
    TResult Function(double data, String? message, bool isValid)? valid,
    TResult Function(double data, String? message, bool isValid)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(data, message, isValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CompensationStateInitial value) initial,
    required TResult Function(_CompensationStateValid value) valid,
    required TResult Function(_CompensationStateInvalid value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CompensationStateInitial value)? initial,
    TResult? Function(_CompensationStateValid value)? valid,
    TResult? Function(_CompensationStateInvalid value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CompensationStateInitial value)? initial,
    TResult Function(_CompensationStateValid value)? valid,
    TResult Function(_CompensationStateInvalid value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _CompensationStateInvalid implements CompensationState {
  const factory _CompensationStateInvalid(
      {required final double data,
      required final String? message,
      required final bool isValid}) = _$CompensationStateInvalidImpl;

  @override
  double get data;
  @override
  String? get message;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$CompensationStateInvalidImplCopyWith<_$CompensationStateInvalidImpl>
      get copyWith => throw _privateConstructorUsedError;
}
