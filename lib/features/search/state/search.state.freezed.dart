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

/// @nodoc
mixin _$PropositionCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int count) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int count)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int count)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PropositionCountStateInitial value) initial,
    required TResult Function(_PropositionCountStateLoading value) loading,
    required TResult Function(_PropositionCountStateCreate value) fetch,
    required TResult Function(_PropositionCountStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionCountStateInitial value)? initial,
    TResult? Function(_PropositionCountStateLoading value)? loading,
    TResult? Function(_PropositionCountStateCreate value)? fetch,
    TResult? Function(_PropositionCountStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionCountStateInitial value)? initial,
    TResult Function(_PropositionCountStateLoading value)? loading,
    TResult Function(_PropositionCountStateCreate value)? fetch,
    TResult Function(_PropositionCountStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropositionCountStateCopyWith<$Res> {
  factory $PropositionCountStateCopyWith(PropositionCountState value,
          $Res Function(PropositionCountState) then) =
      _$PropositionCountStateCopyWithImpl<$Res, PropositionCountState>;
}

/// @nodoc
class _$PropositionCountStateCopyWithImpl<$Res,
        $Val extends PropositionCountState>
    implements $PropositionCountStateCopyWith<$Res> {
  _$PropositionCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PropositionCountStateInitialImplCopyWith<$Res> {
  factory _$$PropositionCountStateInitialImplCopyWith(
          _$PropositionCountStateInitialImpl value,
          $Res Function(_$PropositionCountStateInitialImpl) then) =
      __$$PropositionCountStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropositionCountStateInitialImplCopyWithImpl<$Res>
    extends _$PropositionCountStateCopyWithImpl<$Res,
        _$PropositionCountStateInitialImpl>
    implements _$$PropositionCountStateInitialImplCopyWith<$Res> {
  __$$PropositionCountStateInitialImplCopyWithImpl(
      _$PropositionCountStateInitialImpl _value,
      $Res Function(_$PropositionCountStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PropositionCountStateInitialImpl extends _PropositionCountStateInitial {
  const _$PropositionCountStateInitialImpl() : super._();

  @override
  String toString() {
    return 'PropositionCountState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int count) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int count)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int count)? fetch,
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
    required TResult Function(_PropositionCountStateInitial value) initial,
    required TResult Function(_PropositionCountStateLoading value) loading,
    required TResult Function(_PropositionCountStateCreate value) fetch,
    required TResult Function(_PropositionCountStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionCountStateInitial value)? initial,
    TResult? Function(_PropositionCountStateLoading value)? loading,
    TResult? Function(_PropositionCountStateCreate value)? fetch,
    TResult? Function(_PropositionCountStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionCountStateInitial value)? initial,
    TResult Function(_PropositionCountStateLoading value)? loading,
    TResult Function(_PropositionCountStateCreate value)? fetch,
    TResult Function(_PropositionCountStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PropositionCountStateInitial extends PropositionCountState {
  const factory _PropositionCountStateInitial() =
      _$PropositionCountStateInitialImpl;
  const _PropositionCountStateInitial._() : super._();
}

/// @nodoc
abstract class _$$PropositionCountStateLoadingImplCopyWith<$Res> {
  factory _$$PropositionCountStateLoadingImplCopyWith(
          _$PropositionCountStateLoadingImpl value,
          $Res Function(_$PropositionCountStateLoadingImpl) then) =
      __$$PropositionCountStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PropositionCountStateLoadingImplCopyWithImpl<$Res>
    extends _$PropositionCountStateCopyWithImpl<$Res,
        _$PropositionCountStateLoadingImpl>
    implements _$$PropositionCountStateLoadingImplCopyWith<$Res> {
  __$$PropositionCountStateLoadingImplCopyWithImpl(
      _$PropositionCountStateLoadingImpl _value,
      $Res Function(_$PropositionCountStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PropositionCountStateLoadingImpl extends _PropositionCountStateLoading {
  const _$PropositionCountStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'PropositionCountState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int count) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int count)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int count)? fetch,
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
    required TResult Function(_PropositionCountStateInitial value) initial,
    required TResult Function(_PropositionCountStateLoading value) loading,
    required TResult Function(_PropositionCountStateCreate value) fetch,
    required TResult Function(_PropositionCountStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionCountStateInitial value)? initial,
    TResult? Function(_PropositionCountStateLoading value)? loading,
    TResult? Function(_PropositionCountStateCreate value)? fetch,
    TResult? Function(_PropositionCountStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionCountStateInitial value)? initial,
    TResult Function(_PropositionCountStateLoading value)? loading,
    TResult Function(_PropositionCountStateCreate value)? fetch,
    TResult Function(_PropositionCountStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PropositionCountStateLoading extends PropositionCountState {
  const factory _PropositionCountStateLoading() =
      _$PropositionCountStateLoadingImpl;
  const _PropositionCountStateLoading._() : super._();
}

/// @nodoc
abstract class _$$PropositionCountStateCreateImplCopyWith<$Res> {
  factory _$$PropositionCountStateCreateImplCopyWith(
          _$PropositionCountStateCreateImpl value,
          $Res Function(_$PropositionCountStateCreateImpl) then) =
      __$$PropositionCountStateCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$PropositionCountStateCreateImplCopyWithImpl<$Res>
    extends _$PropositionCountStateCopyWithImpl<$Res,
        _$PropositionCountStateCreateImpl>
    implements _$$PropositionCountStateCreateImplCopyWith<$Res> {
  __$$PropositionCountStateCreateImplCopyWithImpl(
      _$PropositionCountStateCreateImpl _value,
      $Res Function(_$PropositionCountStateCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$PropositionCountStateCreateImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PropositionCountStateCreateImpl extends _PropositionCountStateCreate {
  const _$PropositionCountStateCreateImpl(this.count) : super._();

  @override
  final int count;

  @override
  String toString() {
    return 'PropositionCountState.fetch(count: $count)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropositionCountStateCreateImplCopyWith<_$PropositionCountStateCreateImpl>
      get copyWith => __$$PropositionCountStateCreateImplCopyWithImpl<
          _$PropositionCountStateCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int count) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int count)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int count)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PropositionCountStateInitial value) initial,
    required TResult Function(_PropositionCountStateLoading value) loading,
    required TResult Function(_PropositionCountStateCreate value) fetch,
    required TResult Function(_PropositionCountStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionCountStateInitial value)? initial,
    TResult? Function(_PropositionCountStateLoading value)? loading,
    TResult? Function(_PropositionCountStateCreate value)? fetch,
    TResult? Function(_PropositionCountStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionCountStateInitial value)? initial,
    TResult Function(_PropositionCountStateLoading value)? loading,
    TResult Function(_PropositionCountStateCreate value)? fetch,
    TResult Function(_PropositionCountStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _PropositionCountStateCreate extends PropositionCountState {
  const factory _PropositionCountStateCreate(final int count) =
      _$PropositionCountStateCreateImpl;
  const _PropositionCountStateCreate._() : super._();

  int get count;
  @JsonKey(ignore: true)
  _$$PropositionCountStateCreateImplCopyWith<_$PropositionCountStateCreateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropositionCountStateErrorImplCopyWith<$Res> {
  factory _$$PropositionCountStateErrorImplCopyWith(
          _$PropositionCountStateErrorImpl value,
          $Res Function(_$PropositionCountStateErrorImpl) then) =
      __$$PropositionCountStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PropositionCountStateErrorImplCopyWithImpl<$Res>
    extends _$PropositionCountStateCopyWithImpl<$Res,
        _$PropositionCountStateErrorImpl>
    implements _$$PropositionCountStateErrorImplCopyWith<$Res> {
  __$$PropositionCountStateErrorImplCopyWithImpl(
      _$PropositionCountStateErrorImpl _value,
      $Res Function(_$PropositionCountStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PropositionCountStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PropositionCountStateErrorImpl extends _PropositionCountStateError {
  const _$PropositionCountStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'PropositionCountState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropositionCountStateErrorImplCopyWith<_$PropositionCountStateErrorImpl>
      get copyWith => __$$PropositionCountStateErrorImplCopyWithImpl<
          _$PropositionCountStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int count) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int count)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int count)? fetch,
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
    required TResult Function(_PropositionCountStateInitial value) initial,
    required TResult Function(_PropositionCountStateLoading value) loading,
    required TResult Function(_PropositionCountStateCreate value) fetch,
    required TResult Function(_PropositionCountStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PropositionCountStateInitial value)? initial,
    TResult? Function(_PropositionCountStateLoading value)? loading,
    TResult? Function(_PropositionCountStateCreate value)? fetch,
    TResult? Function(_PropositionCountStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PropositionCountStateInitial value)? initial,
    TResult Function(_PropositionCountStateLoading value)? loading,
    TResult Function(_PropositionCountStateCreate value)? fetch,
    TResult Function(_PropositionCountStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PropositionCountStateError extends PropositionCountState {
  const factory _PropositionCountStateError(final String message) =
      _$PropositionCountStateErrorImpl;
  const _PropositionCountStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$PropositionCountStateErrorImplCopyWith<_$PropositionCountStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchSingleProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProjectModel model) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProjectModel model)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProjectModel model)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSingleProjectStateInitial value) initial,
    required TResult Function(FetchSingleProjectStateLoading value) loading,
    required TResult Function(FetchSingleProjectStateFetch value) fetch,
    required TResult Function(_FetchSingleProjectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSingleProjectStateInitial value)? initial,
    TResult? Function(FetchSingleProjectStateLoading value)? loading,
    TResult? Function(FetchSingleProjectStateFetch value)? fetch,
    TResult? Function(_FetchSingleProjectStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSingleProjectStateInitial value)? initial,
    TResult Function(FetchSingleProjectStateLoading value)? loading,
    TResult Function(FetchSingleProjectStateFetch value)? fetch,
    TResult Function(_FetchSingleProjectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSingleProjectStateCopyWith<$Res> {
  factory $FetchSingleProjectStateCopyWith(FetchSingleProjectState value,
          $Res Function(FetchSingleProjectState) then) =
      _$FetchSingleProjectStateCopyWithImpl<$Res, FetchSingleProjectState>;
}

/// @nodoc
class _$FetchSingleProjectStateCopyWithImpl<$Res,
        $Val extends FetchSingleProjectState>
    implements $FetchSingleProjectStateCopyWith<$Res> {
  _$FetchSingleProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchSingleProjectStateInitialImplCopyWith<$Res> {
  factory _$$FetchSingleProjectStateInitialImplCopyWith(
          _$FetchSingleProjectStateInitialImpl value,
          $Res Function(_$FetchSingleProjectStateInitialImpl) then) =
      __$$FetchSingleProjectStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSingleProjectStateInitialImplCopyWithImpl<$Res>
    extends _$FetchSingleProjectStateCopyWithImpl<$Res,
        _$FetchSingleProjectStateInitialImpl>
    implements _$$FetchSingleProjectStateInitialImplCopyWith<$Res> {
  __$$FetchSingleProjectStateInitialImplCopyWithImpl(
      _$FetchSingleProjectStateInitialImpl _value,
      $Res Function(_$FetchSingleProjectStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSingleProjectStateInitialImpl
    extends _FetchSingleProjectStateInitial {
  const _$FetchSingleProjectStateInitialImpl() : super._();

  @override
  String toString() {
    return 'FetchSingleProjectState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProjectModel model) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProjectModel model)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProjectModel model)? fetch,
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
    required TResult Function(_FetchSingleProjectStateInitial value) initial,
    required TResult Function(FetchSingleProjectStateLoading value) loading,
    required TResult Function(FetchSingleProjectStateFetch value) fetch,
    required TResult Function(_FetchSingleProjectStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSingleProjectStateInitial value)? initial,
    TResult? Function(FetchSingleProjectStateLoading value)? loading,
    TResult? Function(FetchSingleProjectStateFetch value)? fetch,
    TResult? Function(_FetchSingleProjectStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSingleProjectStateInitial value)? initial,
    TResult Function(FetchSingleProjectStateLoading value)? loading,
    TResult Function(FetchSingleProjectStateFetch value)? fetch,
    TResult Function(_FetchSingleProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchSingleProjectStateInitial extends FetchSingleProjectState {
  const factory _FetchSingleProjectStateInitial() =
      _$FetchSingleProjectStateInitialImpl;
  const _FetchSingleProjectStateInitial._() : super._();
}

/// @nodoc
abstract class _$$FetchSingleProjectStateLoadingImplCopyWith<$Res> {
  factory _$$FetchSingleProjectStateLoadingImplCopyWith(
          _$FetchSingleProjectStateLoadingImpl value,
          $Res Function(_$FetchSingleProjectStateLoadingImpl) then) =
      __$$FetchSingleProjectStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchSingleProjectStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchSingleProjectStateCopyWithImpl<$Res,
        _$FetchSingleProjectStateLoadingImpl>
    implements _$$FetchSingleProjectStateLoadingImplCopyWith<$Res> {
  __$$FetchSingleProjectStateLoadingImplCopyWithImpl(
      _$FetchSingleProjectStateLoadingImpl _value,
      $Res Function(_$FetchSingleProjectStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchSingleProjectStateLoadingImpl
    extends FetchSingleProjectStateLoading {
  const _$FetchSingleProjectStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'FetchSingleProjectState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProjectModel model) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProjectModel model)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProjectModel model)? fetch,
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
    required TResult Function(_FetchSingleProjectStateInitial value) initial,
    required TResult Function(FetchSingleProjectStateLoading value) loading,
    required TResult Function(FetchSingleProjectStateFetch value) fetch,
    required TResult Function(_FetchSingleProjectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSingleProjectStateInitial value)? initial,
    TResult? Function(FetchSingleProjectStateLoading value)? loading,
    TResult? Function(FetchSingleProjectStateFetch value)? fetch,
    TResult? Function(_FetchSingleProjectStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSingleProjectStateInitial value)? initial,
    TResult Function(FetchSingleProjectStateLoading value)? loading,
    TResult Function(FetchSingleProjectStateFetch value)? fetch,
    TResult Function(_FetchSingleProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FetchSingleProjectStateLoading extends FetchSingleProjectState {
  const factory FetchSingleProjectStateLoading() =
      _$FetchSingleProjectStateLoadingImpl;
  const FetchSingleProjectStateLoading._() : super._();
}

/// @nodoc
abstract class _$$FetchSingleProjectStateFetchImplCopyWith<$Res> {
  factory _$$FetchSingleProjectStateFetchImplCopyWith(
          _$FetchSingleProjectStateFetchImpl value,
          $Res Function(_$FetchSingleProjectStateFetchImpl) then) =
      __$$FetchSingleProjectStateFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectModel model});

  $ProjectModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$FetchSingleProjectStateFetchImplCopyWithImpl<$Res>
    extends _$FetchSingleProjectStateCopyWithImpl<$Res,
        _$FetchSingleProjectStateFetchImpl>
    implements _$$FetchSingleProjectStateFetchImplCopyWith<$Res> {
  __$$FetchSingleProjectStateFetchImplCopyWithImpl(
      _$FetchSingleProjectStateFetchImpl _value,
      $Res Function(_$FetchSingleProjectStateFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$FetchSingleProjectStateFetchImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProjectModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectModelCopyWith<$Res> get model {
    return $ProjectModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$FetchSingleProjectStateFetchImpl extends FetchSingleProjectStateFetch {
  const _$FetchSingleProjectStateFetchImpl(this.model) : super._();

  @override
  final ProjectModel model;

  @override
  String toString() {
    return 'FetchSingleProjectState.fetch(model: $model)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSingleProjectStateFetchImplCopyWith<
          _$FetchSingleProjectStateFetchImpl>
      get copyWith => __$$FetchSingleProjectStateFetchImplCopyWithImpl<
          _$FetchSingleProjectStateFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProjectModel model) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProjectModel model)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProjectModel model)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchSingleProjectStateInitial value) initial,
    required TResult Function(FetchSingleProjectStateLoading value) loading,
    required TResult Function(FetchSingleProjectStateFetch value) fetch,
    required TResult Function(_FetchSingleProjectStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSingleProjectStateInitial value)? initial,
    TResult? Function(FetchSingleProjectStateLoading value)? loading,
    TResult? Function(FetchSingleProjectStateFetch value)? fetch,
    TResult? Function(_FetchSingleProjectStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSingleProjectStateInitial value)? initial,
    TResult Function(FetchSingleProjectStateLoading value)? loading,
    TResult Function(FetchSingleProjectStateFetch value)? fetch,
    TResult Function(_FetchSingleProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchSingleProjectStateFetch extends FetchSingleProjectState {
  const factory FetchSingleProjectStateFetch(final ProjectModel model) =
      _$FetchSingleProjectStateFetchImpl;
  const FetchSingleProjectStateFetch._() : super._();

  ProjectModel get model;
  @JsonKey(ignore: true)
  _$$FetchSingleProjectStateFetchImplCopyWith<
          _$FetchSingleProjectStateFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSingleProjectStateErrorImplCopyWith<$Res> {
  factory _$$FetchSingleProjectStateErrorImplCopyWith(
          _$FetchSingleProjectStateErrorImpl value,
          $Res Function(_$FetchSingleProjectStateErrorImpl) then) =
      __$$FetchSingleProjectStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchSingleProjectStateErrorImplCopyWithImpl<$Res>
    extends _$FetchSingleProjectStateCopyWithImpl<$Res,
        _$FetchSingleProjectStateErrorImpl>
    implements _$$FetchSingleProjectStateErrorImplCopyWith<$Res> {
  __$$FetchSingleProjectStateErrorImplCopyWithImpl(
      _$FetchSingleProjectStateErrorImpl _value,
      $Res Function(_$FetchSingleProjectStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchSingleProjectStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSingleProjectStateErrorImpl extends _FetchSingleProjectStateError {
  const _$FetchSingleProjectStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'FetchSingleProjectState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSingleProjectStateErrorImplCopyWith<
          _$FetchSingleProjectStateErrorImpl>
      get copyWith => __$$FetchSingleProjectStateErrorImplCopyWithImpl<
          _$FetchSingleProjectStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ProjectModel model) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ProjectModel model)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ProjectModel model)? fetch,
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
    required TResult Function(_FetchSingleProjectStateInitial value) initial,
    required TResult Function(FetchSingleProjectStateLoading value) loading,
    required TResult Function(FetchSingleProjectStateFetch value) fetch,
    required TResult Function(_FetchSingleProjectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchSingleProjectStateInitial value)? initial,
    TResult? Function(FetchSingleProjectStateLoading value)? loading,
    TResult? Function(FetchSingleProjectStateFetch value)? fetch,
    TResult? Function(_FetchSingleProjectStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchSingleProjectStateInitial value)? initial,
    TResult Function(FetchSingleProjectStateLoading value)? loading,
    TResult Function(FetchSingleProjectStateFetch value)? fetch,
    TResult Function(_FetchSingleProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FetchSingleProjectStateError extends FetchSingleProjectState {
  const factory _FetchSingleProjectStateError(final String message) =
      _$FetchSingleProjectStateErrorImpl;
  const _FetchSingleProjectStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FetchSingleProjectStateErrorImplCopyWith<
          _$FetchSingleProjectStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
