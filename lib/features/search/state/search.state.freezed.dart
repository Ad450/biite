// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) errro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? errro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? errro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateFetch value) fetch,
    required TResult Function(_SearchStateError value) errro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateFetch value)? fetch,
    TResult? Function(_SearchStateError value)? errro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateFetch value)? fetch,
    TResult Function(_SearchStateError value)? errro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchStateInitialImplCopyWith<$Res> {
  factory _$$SearchStateInitialImplCopyWith(_$SearchStateInitialImpl value,
          $Res Function(_$SearchStateInitialImpl) then) =
      __$$SearchStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateInitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateInitialImpl>
    implements _$$SearchStateInitialImplCopyWith<$Res> {
  __$$SearchStateInitialImplCopyWithImpl(_$SearchStateInitialImpl _value,
      $Res Function(_$SearchStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateInitialImpl extends _SearchStateInitial {
  const _$SearchStateInitialImpl() : super._();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) errro,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? errro,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? errro,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateFetch value) fetch,
    required TResult Function(_SearchStateError value) errro,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateFetch value)? fetch,
    TResult? Function(_SearchStateError value)? errro,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateFetch value)? fetch,
    TResult Function(_SearchStateError value)? errro,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchStateInitial extends SearchState {
  const factory _SearchStateInitial() = _$SearchStateInitialImpl;
  const _SearchStateInitial._() : super._();
}

/// @nodoc
abstract class _$$SearchStateLoadingImplCopyWith<$Res> {
  factory _$$SearchStateLoadingImplCopyWith(_$SearchStateLoadingImpl value,
          $Res Function(_$SearchStateLoadingImpl) then) =
      __$$SearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchStateLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateLoadingImpl>
    implements _$$SearchStateLoadingImplCopyWith<$Res> {
  __$$SearchStateLoadingImplCopyWithImpl(_$SearchStateLoadingImpl _value,
      $Res Function(_$SearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchStateLoadingImpl extends _SearchStateLoading {
  const _$SearchStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) errro,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? errro,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? errro,
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
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateFetch value) fetch,
    required TResult Function(_SearchStateError value) errro,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateFetch value)? fetch,
    TResult? Function(_SearchStateError value)? errro,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateFetch value)? fetch,
    TResult Function(_SearchStateError value)? errro,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchStateLoading extends SearchState {
  const factory _SearchStateLoading() = _$SearchStateLoadingImpl;
  const _SearchStateLoading._() : super._();
}

/// @nodoc
abstract class _$$SearchStateFetchImplCopyWith<$Res> {
  factory _$$SearchStateFetchImplCopyWith(_$SearchStateFetchImpl value,
          $Res Function(_$SearchStateFetchImpl) then) =
      __$$SearchStateFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$SearchStateFetchImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateFetchImpl>
    implements _$$SearchStateFetchImplCopyWith<$Res> {
  __$$SearchStateFetchImplCopyWithImpl(_$SearchStateFetchImpl _value,
      $Res Function(_$SearchStateFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$SearchStateFetchImpl(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$SearchStateFetchImpl extends _SearchStateFetch {
  const _$SearchStateFetchImpl(final List<ProjectModel> projects)
      : _projects = projects,
        super._();

  final List<ProjectModel> _projects;
  @override
  List<ProjectModel> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'SearchState.fetch(projects: $projects)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateFetchImplCopyWith<_$SearchStateFetchImpl> get copyWith =>
      __$$SearchStateFetchImplCopyWithImpl<_$SearchStateFetchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) errro,
  }) {
    return fetch(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? errro,
  }) {
    return fetch?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? errro,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateFetch value) fetch,
    required TResult Function(_SearchStateError value) errro,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateFetch value)? fetch,
    TResult? Function(_SearchStateError value)? errro,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateFetch value)? fetch,
    TResult Function(_SearchStateError value)? errro,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _SearchStateFetch extends SearchState {
  const factory _SearchStateFetch(final List<ProjectModel> projects) =
      _$SearchStateFetchImpl;
  const _SearchStateFetch._() : super._();

  List<ProjectModel> get projects;
  @JsonKey(ignore: true)
  _$$SearchStateFetchImplCopyWith<_$SearchStateFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchStateErrorImplCopyWith<$Res> {
  factory _$$SearchStateErrorImplCopyWith(_$SearchStateErrorImpl value,
          $Res Function(_$SearchStateErrorImpl) then) =
      __$$SearchStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchStateErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateErrorImpl>
    implements _$$SearchStateErrorImplCopyWith<$Res> {
  __$$SearchStateErrorImplCopyWithImpl(_$SearchStateErrorImpl _value,
      $Res Function(_$SearchStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchStateErrorImpl extends _SearchStateError {
  const _$SearchStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.errro(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateErrorImplCopyWith<_$SearchStateErrorImpl> get copyWith =>
      __$$SearchStateErrorImplCopyWithImpl<_$SearchStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) errro,
  }) {
    return errro(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? errro,
  }) {
    return errro?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? errro,
    required TResult orElse(),
  }) {
    if (errro != null) {
      return errro(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStateInitial value) initial,
    required TResult Function(_SearchStateLoading value) loading,
    required TResult Function(_SearchStateFetch value) fetch,
    required TResult Function(_SearchStateError value) errro,
  }) {
    return errro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStateInitial value)? initial,
    TResult? Function(_SearchStateLoading value)? loading,
    TResult? Function(_SearchStateFetch value)? fetch,
    TResult? Function(_SearchStateError value)? errro,
  }) {
    return errro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStateInitial value)? initial,
    TResult Function(_SearchStateLoading value)? loading,
    TResult Function(_SearchStateFetch value)? fetch,
    TResult Function(_SearchStateError value)? errro,
    required TResult orElse(),
  }) {
    if (errro != null) {
      return errro(this);
    }
    return orElse();
  }
}

abstract class _SearchStateError extends SearchState {
  const factory _SearchStateError(final String message) =
      _$SearchStateErrorImpl;
  const _SearchStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$SearchStateErrorImplCopyWith<_$SearchStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PropositionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() create,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? create,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? create,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PropositionStateInitial value) initial,
    required TResult Function(_PropositionStateLoading value) loading,
    required TResult Function(_PropositionStateCreate value) create,
    required TResult Function(_PropositionStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionStateInitial value)? initial,
    TResult? Function(_PropositionStateLoading value)? loading,
    TResult? Function(_PropositionStateCreate value)? create,
    TResult? Function(_PropositionStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionStateInitial value)? initial,
    TResult Function(_PropositionStateLoading value)? loading,
    TResult Function(_PropositionStateCreate value)? create,
    TResult Function(_PropositionStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropositionStateCopyWith<$Res> {
  factory $PropositionStateCopyWith(
          PropositionState value, $Res Function(PropositionState) then) =
      _$PropositionStateCopyWithImpl<$Res, PropositionState>;
}

/// @nodoc
class _$PropositionStateCopyWithImpl<$Res, $Val extends PropositionState>
    implements $PropositionStateCopyWith<$Res> {
  _$PropositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PropositionStateInitialImplCopyWith<$Res> {
  factory _$$PropositionStateInitialImplCopyWith(
          _$PropositionStateInitialImpl value,
          $Res Function(_$PropositionStateInitialImpl) then) =
      __$$PropositionStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropositionStateInitialImplCopyWithImpl<$Res>
    extends _$PropositionStateCopyWithImpl<$Res, _$PropositionStateInitialImpl>
    implements _$$PropositionStateInitialImplCopyWith<$Res> {
  __$$PropositionStateInitialImplCopyWithImpl(
      _$PropositionStateInitialImpl _value,
      $Res Function(_$PropositionStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PropositionStateInitialImpl extends _PropositionStateInitial {
  const _$PropositionStateInitialImpl() : super._();

  @override
  String toString() {
    return 'PropositionState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() create,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? create,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? create,
    TResult Function(String message)? error,
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
    required TResult Function(_PropositionStateInitial value) initial,
    required TResult Function(_PropositionStateLoading value) loading,
    required TResult Function(_PropositionStateCreate value) create,
    required TResult Function(_PropositionStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionStateInitial value)? initial,
    TResult? Function(_PropositionStateLoading value)? loading,
    TResult? Function(_PropositionStateCreate value)? create,
    TResult? Function(_PropositionStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionStateInitial value)? initial,
    TResult Function(_PropositionStateLoading value)? loading,
    TResult Function(_PropositionStateCreate value)? create,
    TResult Function(_PropositionStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PropositionStateInitial extends PropositionState {
  const factory _PropositionStateInitial() = _$PropositionStateInitialImpl;
  const _PropositionStateInitial._() : super._();
}

/// @nodoc
abstract class _$$PropositionStateLoadingImplCopyWith<$Res> {
  factory _$$PropositionStateLoadingImplCopyWith(
          _$PropositionStateLoadingImpl value,
          $Res Function(_$PropositionStateLoadingImpl) then) =
      __$$PropositionStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropositionStateLoadingImplCopyWithImpl<$Res>
    extends _$PropositionStateCopyWithImpl<$Res, _$PropositionStateLoadingImpl>
    implements _$$PropositionStateLoadingImplCopyWith<$Res> {
  __$$PropositionStateLoadingImplCopyWithImpl(
      _$PropositionStateLoadingImpl _value,
      $Res Function(_$PropositionStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PropositionStateLoadingImpl extends _PropositionStateLoading {
  const _$PropositionStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'PropositionState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() create,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? create,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? create,
    TResult Function(String message)? error,
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
    required TResult Function(_PropositionStateInitial value) initial,
    required TResult Function(_PropositionStateLoading value) loading,
    required TResult Function(_PropositionStateCreate value) create,
    required TResult Function(_PropositionStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionStateInitial value)? initial,
    TResult? Function(_PropositionStateLoading value)? loading,
    TResult? Function(_PropositionStateCreate value)? create,
    TResult? Function(_PropositionStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionStateInitial value)? initial,
    TResult Function(_PropositionStateLoading value)? loading,
    TResult Function(_PropositionStateCreate value)? create,
    TResult Function(_PropositionStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PropositionStateLoading extends PropositionState {
  const factory _PropositionStateLoading() = _$PropositionStateLoadingImpl;
  const _PropositionStateLoading._() : super._();
}

/// @nodoc
abstract class _$$PropositionStateCreateImplCopyWith<$Res> {
  factory _$$PropositionStateCreateImplCopyWith(
          _$PropositionStateCreateImpl value,
          $Res Function(_$PropositionStateCreateImpl) then) =
      __$$PropositionStateCreateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropositionStateCreateImplCopyWithImpl<$Res>
    extends _$PropositionStateCopyWithImpl<$Res, _$PropositionStateCreateImpl>
    implements _$$PropositionStateCreateImplCopyWith<$Res> {
  __$$PropositionStateCreateImplCopyWithImpl(
      _$PropositionStateCreateImpl _value,
      $Res Function(_$PropositionStateCreateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PropositionStateCreateImpl extends _PropositionStateCreate {
  const _$PropositionStateCreateImpl() : super._();

  @override
  String toString() {
    return 'PropositionState.create()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() create,
    required TResult Function(String message) error,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? create,
    TResult? Function(String message)? error,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? create,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PropositionStateInitial value) initial,
    required TResult Function(_PropositionStateLoading value) loading,
    required TResult Function(_PropositionStateCreate value) create,
    required TResult Function(_PropositionStateError value) error,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionStateInitial value)? initial,
    TResult? Function(_PropositionStateLoading value)? loading,
    TResult? Function(_PropositionStateCreate value)? create,
    TResult? Function(_PropositionStateError value)? error,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionStateInitial value)? initial,
    TResult Function(_PropositionStateLoading value)? loading,
    TResult Function(_PropositionStateCreate value)? create,
    TResult Function(_PropositionStateError value)? error,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _PropositionStateCreate extends PropositionState {
  const factory _PropositionStateCreate() = _$PropositionStateCreateImpl;
  const _PropositionStateCreate._() : super._();
}

/// @nodoc
abstract class _$$PropositionStateErrorImplCopyWith<$Res> {
  factory _$$PropositionStateErrorImplCopyWith(
          _$PropositionStateErrorImpl value,
          $Res Function(_$PropositionStateErrorImpl) then) =
      __$$PropositionStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PropositionStateErrorImplCopyWithImpl<$Res>
    extends _$PropositionStateCopyWithImpl<$Res, _$PropositionStateErrorImpl>
    implements _$$PropositionStateErrorImplCopyWith<$Res> {
  __$$PropositionStateErrorImplCopyWithImpl(_$PropositionStateErrorImpl _value,
      $Res Function(_$PropositionStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PropositionStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PropositionStateErrorImpl extends _PropositionStateError {
  const _$PropositionStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'PropositionState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropositionStateErrorImplCopyWith<_$PropositionStateErrorImpl>
      get copyWith => __$$PropositionStateErrorImplCopyWithImpl<
          _$PropositionStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() create,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? create,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? create,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PropositionStateInitial value) initial,
    required TResult Function(_PropositionStateLoading value) loading,
    required TResult Function(_PropositionStateCreate value) create,
    required TResult Function(_PropositionStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionStateInitial value)? initial,
    TResult? Function(_PropositionStateLoading value)? loading,
    TResult? Function(_PropositionStateCreate value)? create,
    TResult? Function(_PropositionStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionStateInitial value)? initial,
    TResult Function(_PropositionStateLoading value)? loading,
    TResult Function(_PropositionStateCreate value)? create,
    TResult Function(_PropositionStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PropositionStateError extends PropositionState {
  const factory _PropositionStateError(final String message) =
      _$PropositionStateErrorImpl;
  const _PropositionStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$PropositionStateErrorImplCopyWith<_$PropositionStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
