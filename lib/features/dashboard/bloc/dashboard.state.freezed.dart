// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FeedStateInitialImplCopyWith<$Res> {
  factory _$$FeedStateInitialImplCopyWith(_$FeedStateInitialImpl value,
          $Res Function(_$FeedStateInitialImpl) then) =
      __$$FeedStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedStateInitialImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateInitialImpl>
    implements _$$FeedStateInitialImplCopyWith<$Res> {
  __$$FeedStateInitialImplCopyWithImpl(_$FeedStateInitialImpl _value,
      $Res Function(_$FeedStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedStateInitialImpl extends _FeedStateInitial {
  const _$FeedStateInitialImpl() : super._();

  @override
  String toString() {
    return 'FeedState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
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
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FeedStateInitial extends FeedState {
  const factory _FeedStateInitial() = _$FeedStateInitialImpl;
  const _FeedStateInitial._() : super._();
}

/// @nodoc
abstract class _$$FeedStateFetchActiveProjectsImplCopyWith<$Res> {
  factory _$$FeedStateFetchActiveProjectsImplCopyWith(
          _$FeedStateFetchActiveProjectsImpl value,
          $Res Function(_$FeedStateFetchActiveProjectsImpl) then) =
      __$$FeedStateFetchActiveProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel>? projects, bool? isLoading});
}

/// @nodoc
class __$$FeedStateFetchActiveProjectsImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateFetchActiveProjectsImpl>
    implements _$$FeedStateFetchActiveProjectsImplCopyWith<$Res> {
  __$$FeedStateFetchActiveProjectsImplCopyWithImpl(
      _$FeedStateFetchActiveProjectsImpl _value,
      $Res Function(_$FeedStateFetchActiveProjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$FeedStateFetchActiveProjectsImpl(
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FeedStateFetchActiveProjectsImpl extends _FeedStateFetchActiveProjects {
  const _$FeedStateFetchActiveProjectsImpl(
      {final List<ProjectModel>? projects, this.isLoading})
      : _projects = projects,
        super._();

  final List<ProjectModel>? _projects;
  @override
  List<ProjectModel>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'FeedState.fetchActiveProjects(projects: $projects, isLoading: $isLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateFetchActiveProjectsImplCopyWith<
          _$FeedStateFetchActiveProjectsImpl>
      get copyWith => __$$FeedStateFetchActiveProjectsImplCopyWithImpl<
          _$FeedStateFetchActiveProjectsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return fetchActiveProjects(projects, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return fetchActiveProjects?.call(projects, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchActiveProjects != null) {
      return fetchActiveProjects(projects, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) {
    return fetchActiveProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return fetchActiveProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchActiveProjects != null) {
      return fetchActiveProjects(this);
    }
    return orElse();
  }
}

abstract class _FeedStateFetchActiveProjects extends FeedState {
  const factory _FeedStateFetchActiveProjects(
      {final List<ProjectModel>? projects,
      final bool? isLoading}) = _$FeedStateFetchActiveProjectsImpl;
  const _FeedStateFetchActiveProjects._() : super._();

  List<ProjectModel>? get projects;
  bool? get isLoading;
  @JsonKey(ignore: true)
  _$$FeedStateFetchActiveProjectsImplCopyWith<
          _$FeedStateFetchActiveProjectsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateFetchCreatedProjectsImplCopyWith<$Res> {
  factory _$$FeedStateFetchCreatedProjectsImplCopyWith(
          _$FeedStateFetchCreatedProjectsImpl value,
          $Res Function(_$FeedStateFetchCreatedProjectsImpl) then) =
      __$$FeedStateFetchCreatedProjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel>? projects, bool? isLoading});
}

/// @nodoc
class __$$FeedStateFetchCreatedProjectsImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateFetchCreatedProjectsImpl>
    implements _$$FeedStateFetchCreatedProjectsImplCopyWith<$Res> {
  __$$FeedStateFetchCreatedProjectsImplCopyWithImpl(
      _$FeedStateFetchCreatedProjectsImpl _value,
      $Res Function(_$FeedStateFetchCreatedProjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$FeedStateFetchCreatedProjectsImpl(
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$FeedStateFetchCreatedProjectsImpl
    extends _FeedStateFetchCreatedProjects {
  const _$FeedStateFetchCreatedProjectsImpl(
      {final List<ProjectModel>? projects, this.isLoading})
      : _projects = projects,
        super._();

  final List<ProjectModel>? _projects;
  @override
  List<ProjectModel>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'FeedState.fetchCreatedProjects(projects: $projects, isLoading: $isLoading)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateFetchCreatedProjectsImplCopyWith<
          _$FeedStateFetchCreatedProjectsImpl>
      get copyWith => __$$FeedStateFetchCreatedProjectsImplCopyWithImpl<
          _$FeedStateFetchCreatedProjectsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return fetchCreatedProjects(projects, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return fetchCreatedProjects?.call(projects, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fetchCreatedProjects != null) {
      return fetchCreatedProjects(projects, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) {
    return fetchCreatedProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return fetchCreatedProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchCreatedProjects != null) {
      return fetchCreatedProjects(this);
    }
    return orElse();
  }
}

abstract class _FeedStateFetchCreatedProjects extends FeedState {
  const factory _FeedStateFetchCreatedProjects(
      {final List<ProjectModel>? projects,
      final bool? isLoading}) = _$FeedStateFetchCreatedProjectsImpl;
  const _FeedStateFetchCreatedProjects._() : super._();

  List<ProjectModel>? get projects;
  bool? get isLoading;
  @JsonKey(ignore: true)
  _$$FeedStateFetchCreatedProjectsImplCopyWith<
          _$FeedStateFetchCreatedProjectsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateFileSelectedImplCopyWith<$Res> {
  factory _$$FeedStateFileSelectedImplCopyWith(
          _$FeedStateFileSelectedImpl value,
          $Res Function(_$FeedStateFileSelectedImpl) then) =
      __$$FeedStateFileSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<File> files});
}

/// @nodoc
class __$$FeedStateFileSelectedImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateFileSelectedImpl>
    implements _$$FeedStateFileSelectedImplCopyWith<$Res> {
  __$$FeedStateFileSelectedImplCopyWithImpl(_$FeedStateFileSelectedImpl _value,
      $Res Function(_$FeedStateFileSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$FeedStateFileSelectedImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Set<File>,
    ));
  }
}

/// @nodoc

class _$FeedStateFileSelectedImpl extends _FeedStateFileSelected {
  const _$FeedStateFileSelectedImpl({required final Set<File> files})
      : _files = files,
        super._();

  final Set<File> _files;
  @override
  Set<File> get files {
    if (_files is EqualUnmodifiableSetView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_files);
  }

  @override
  String toString() {
    return 'FeedState.fileSelected(files: $files)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateFileSelectedImplCopyWith<_$FeedStateFileSelectedImpl>
      get copyWith => __$$FeedStateFileSelectedImplCopyWithImpl<
          _$FeedStateFileSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return fileSelected(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return fileSelected?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) {
    return fileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return fileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(this);
    }
    return orElse();
  }
}

abstract class _FeedStateFileSelected extends FeedState {
  const factory _FeedStateFileSelected({required final Set<File> files}) =
      _$FeedStateFileSelectedImpl;
  const _FeedStateFileSelected._() : super._();

  Set<File> get files;
  @JsonKey(ignore: true)
  _$$FeedStateFileSelectedImplCopyWith<_$FeedStateFileSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateErrorImplCopyWith<$Res> {
  factory _$$FeedStateErrorImplCopyWith(_$FeedStateErrorImpl value,
          $Res Function(_$FeedStateErrorImpl) then) =
      __$$FeedStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FeedStateErrorImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateErrorImpl>
    implements _$$FeedStateErrorImplCopyWith<$Res> {
  __$$FeedStateErrorImplCopyWithImpl(
      _$FeedStateErrorImpl _value, $Res Function(_$FeedStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FeedStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FeedStateErrorImpl extends _FeedStateError {
  const _$FeedStateErrorImpl({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'FeedState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateErrorImplCopyWith<_$FeedStateErrorImpl> get copyWith =>
      __$$FeedStateErrorImplCopyWithImpl<_$FeedStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchActiveProjects,
    required TResult Function(List<ProjectModel>? projects, bool? isLoading)
        fetchCreatedProjects,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult? Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchActiveProjects,
    TResult Function(List<ProjectModel>? projects, bool? isLoading)?
        fetchCreatedProjects,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
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
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateFetchActiveProjects value)
        fetchActiveProjects,
    required TResult Function(_FeedStateFetchCreatedProjects value)
        fetchCreatedProjects,
    required TResult Function(_FeedStateFileSelected value) fileSelected,
    required TResult Function(_FeedStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult? Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult? Function(_FeedStateFileSelected value)? fileSelected,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateFetchActiveProjects value)? fetchActiveProjects,
    TResult Function(_FeedStateFetchCreatedProjects value)?
        fetchCreatedProjects,
    TResult Function(_FeedStateFileSelected value)? fileSelected,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FeedStateError extends FeedState {
  const factory _FeedStateError({required final String? message}) =
      _$FeedStateErrorImpl;
  const _FeedStateError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$FeedStateErrorImplCopyWith<_$FeedStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileStateInitial value) initial,
    required TResult Function(_FileStateFileSelected value) fileSelected,
    required TResult Function(_FileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileStateInitial value)? initial,
    TResult? Function(_FileStateFileSelected value)? fileSelected,
    TResult? Function(_FileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileStateInitial value)? initial,
    TResult Function(_FileStateFileSelected value)? fileSelected,
    TResult Function(_FileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileStateCopyWith<$Res> {
  factory $FileStateCopyWith(FileState value, $Res Function(FileState) then) =
      _$FileStateCopyWithImpl<$Res, FileState>;
}

/// @nodoc
class _$FileStateCopyWithImpl<$Res, $Val extends FileState>
    implements $FileStateCopyWith<$Res> {
  _$FileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileStateInitialImplCopyWith<$Res> {
  factory _$$FileStateInitialImplCopyWith(_$FileStateInitialImpl value,
          $Res Function(_$FileStateInitialImpl) then) =
      __$$FileStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileStateInitialImplCopyWithImpl<$Res>
    extends _$FileStateCopyWithImpl<$Res, _$FileStateInitialImpl>
    implements _$$FileStateInitialImplCopyWith<$Res> {
  __$$FileStateInitialImplCopyWithImpl(_$FileStateInitialImpl _value,
      $Res Function(_$FileStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileStateInitialImpl extends _FileStateInitial {
  const _$FileStateInitialImpl() : super._();

  @override
  String toString() {
    return 'FileState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
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
    required TResult Function(_FileStateInitial value) initial,
    required TResult Function(_FileStateFileSelected value) fileSelected,
    required TResult Function(_FileStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileStateInitial value)? initial,
    TResult? Function(_FileStateFileSelected value)? fileSelected,
    TResult? Function(_FileStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileStateInitial value)? initial,
    TResult Function(_FileStateFileSelected value)? fileSelected,
    TResult Function(_FileStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FileStateInitial extends FileState {
  const factory _FileStateInitial() = _$FileStateInitialImpl;
  const _FileStateInitial._() : super._();
}

/// @nodoc
abstract class _$$FileStateFileSelectedImplCopyWith<$Res> {
  factory _$$FileStateFileSelectedImplCopyWith(
          _$FileStateFileSelectedImpl value,
          $Res Function(_$FileStateFileSelectedImpl) then) =
      __$$FileStateFileSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<File> files});
}

/// @nodoc
class __$$FileStateFileSelectedImplCopyWithImpl<$Res>
    extends _$FileStateCopyWithImpl<$Res, _$FileStateFileSelectedImpl>
    implements _$$FileStateFileSelectedImplCopyWith<$Res> {
  __$$FileStateFileSelectedImplCopyWithImpl(_$FileStateFileSelectedImpl _value,
      $Res Function(_$FileStateFileSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$FileStateFileSelectedImpl(
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Set<File>,
    ));
  }
}

/// @nodoc

class _$FileStateFileSelectedImpl extends _FileStateFileSelected {
  const _$FileStateFileSelectedImpl({required final Set<File> files})
      : _files = files,
        super._();

  final Set<File> _files;
  @override
  Set<File> get files {
    if (_files is EqualUnmodifiableSetView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_files);
  }

  @override
  String toString() {
    return 'FileState.fileSelected(files: $files)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileStateFileSelectedImplCopyWith<_$FileStateFileSelectedImpl>
      get copyWith => __$$FileStateFileSelectedImplCopyWithImpl<
          _$FileStateFileSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return fileSelected(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return fileSelected?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FileStateInitial value) initial,
    required TResult Function(_FileStateFileSelected value) fileSelected,
    required TResult Function(_FileStateError value) error,
  }) {
    return fileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileStateInitial value)? initial,
    TResult? Function(_FileStateFileSelected value)? fileSelected,
    TResult? Function(_FileStateError value)? error,
  }) {
    return fileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileStateInitial value)? initial,
    TResult Function(_FileStateFileSelected value)? fileSelected,
    TResult Function(_FileStateError value)? error,
    required TResult orElse(),
  }) {
    if (fileSelected != null) {
      return fileSelected(this);
    }
    return orElse();
  }
}

abstract class _FileStateFileSelected extends FileState {
  const factory _FileStateFileSelected({required final Set<File> files}) =
      _$FileStateFileSelectedImpl;
  const _FileStateFileSelected._() : super._();

  Set<File> get files;
  @JsonKey(ignore: true)
  _$$FileStateFileSelectedImplCopyWith<_$FileStateFileSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileStateErrorImplCopyWith<$Res> {
  factory _$$FileStateErrorImplCopyWith(_$FileStateErrorImpl value,
          $Res Function(_$FileStateErrorImpl) then) =
      __$$FileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FileStateErrorImplCopyWithImpl<$Res>
    extends _$FileStateCopyWithImpl<$Res, _$FileStateErrorImpl>
    implements _$$FileStateErrorImplCopyWith<$Res> {
  __$$FileStateErrorImplCopyWithImpl(
      _$FileStateErrorImpl _value, $Res Function(_$FileStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FileStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FileStateErrorImpl extends _FileStateError {
  const _$FileStateErrorImpl({required this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'FileState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileStateErrorImplCopyWith<_$FileStateErrorImpl> get copyWith =>
      __$$FileStateErrorImplCopyWithImpl<_$FileStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<File> files) fileSelected,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<File> files)? fileSelected,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<File> files)? fileSelected,
    TResult Function(String? message)? error,
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
    required TResult Function(_FileStateInitial value) initial,
    required TResult Function(_FileStateFileSelected value) fileSelected,
    required TResult Function(_FileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FileStateInitial value)? initial,
    TResult? Function(_FileStateFileSelected value)? fileSelected,
    TResult? Function(_FileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FileStateInitial value)? initial,
    TResult Function(_FileStateFileSelected value)? fileSelected,
    TResult Function(_FileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FileStateError extends FileState {
  const factory _FileStateError({required final String? message}) =
      _$FileStateErrorImpl;
  const _FileStateError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$FileStateErrorImplCopyWith<_$FileStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() projectCreated,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? projectCreated,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? projectCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectStateInitial value) initial,
    required TResult Function(_ProjectStateLoading value) loading,
    required TResult Function(_ProjectStateProjectCreated value) projectCreated,
    required TResult Function(_ProjectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectStateInitial value)? initial,
    TResult? Function(_ProjectStateLoading value)? loading,
    TResult? Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult? Function(_ProjectStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectStateInitial value)? initial,
    TResult Function(_ProjectStateLoading value)? loading,
    TResult Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult Function(_ProjectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectStateInitialImplCopyWith<$Res> {
  factory _$$ProjectStateInitialImplCopyWith(_$ProjectStateInitialImpl value,
          $Res Function(_$ProjectStateInitialImpl) then) =
      __$$ProjectStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectStateInitialImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateInitialImpl>
    implements _$$ProjectStateInitialImplCopyWith<$Res> {
  __$$ProjectStateInitialImplCopyWithImpl(_$ProjectStateInitialImpl _value,
      $Res Function(_$ProjectStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectStateInitialImpl extends _ProjectStateInitial {
  const _$ProjectStateInitialImpl() : super._();

  @override
  String toString() {
    return 'ProjectState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() projectCreated,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? projectCreated,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? projectCreated,
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
    required TResult Function(_ProjectStateInitial value) initial,
    required TResult Function(_ProjectStateLoading value) loading,
    required TResult Function(_ProjectStateProjectCreated value) projectCreated,
    required TResult Function(_ProjectStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectStateInitial value)? initial,
    TResult? Function(_ProjectStateLoading value)? loading,
    TResult? Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult? Function(_ProjectStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectStateInitial value)? initial,
    TResult Function(_ProjectStateLoading value)? loading,
    TResult Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult Function(_ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProjectStateInitial extends ProjectState {
  const factory _ProjectStateInitial() = _$ProjectStateInitialImpl;
  const _ProjectStateInitial._() : super._();
}

/// @nodoc
abstract class _$$ProjectStateLoadingImplCopyWith<$Res> {
  factory _$$ProjectStateLoadingImplCopyWith(_$ProjectStateLoadingImpl value,
          $Res Function(_$ProjectStateLoadingImpl) then) =
      __$$ProjectStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectStateLoadingImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateLoadingImpl>
    implements _$$ProjectStateLoadingImplCopyWith<$Res> {
  __$$ProjectStateLoadingImplCopyWithImpl(_$ProjectStateLoadingImpl _value,
      $Res Function(_$ProjectStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectStateLoadingImpl extends _ProjectStateLoading {
  const _$ProjectStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'ProjectState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() projectCreated,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? projectCreated,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? projectCreated,
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
    required TResult Function(_ProjectStateInitial value) initial,
    required TResult Function(_ProjectStateLoading value) loading,
    required TResult Function(_ProjectStateProjectCreated value) projectCreated,
    required TResult Function(_ProjectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectStateInitial value)? initial,
    TResult? Function(_ProjectStateLoading value)? loading,
    TResult? Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult? Function(_ProjectStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectStateInitial value)? initial,
    TResult Function(_ProjectStateLoading value)? loading,
    TResult Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult Function(_ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProjectStateLoading extends ProjectState {
  const factory _ProjectStateLoading() = _$ProjectStateLoadingImpl;
  const _ProjectStateLoading._() : super._();
}

/// @nodoc
abstract class _$$ProjectStateProjectCreatedImplCopyWith<$Res> {
  factory _$$ProjectStateProjectCreatedImplCopyWith(
          _$ProjectStateProjectCreatedImpl value,
          $Res Function(_$ProjectStateProjectCreatedImpl) then) =
      __$$ProjectStateProjectCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectStateProjectCreatedImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateProjectCreatedImpl>
    implements _$$ProjectStateProjectCreatedImplCopyWith<$Res> {
  __$$ProjectStateProjectCreatedImplCopyWithImpl(
      _$ProjectStateProjectCreatedImpl _value,
      $Res Function(_$ProjectStateProjectCreatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectStateProjectCreatedImpl extends _ProjectStateProjectCreated {
  const _$ProjectStateProjectCreatedImpl() : super._();

  @override
  String toString() {
    return 'ProjectState.projectCreated()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() projectCreated,
    required TResult Function(String message) error,
  }) {
    return projectCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? projectCreated,
    TResult? Function(String message)? error,
  }) {
    return projectCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? projectCreated,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (projectCreated != null) {
      return projectCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProjectStateInitial value) initial,
    required TResult Function(_ProjectStateLoading value) loading,
    required TResult Function(_ProjectStateProjectCreated value) projectCreated,
    required TResult Function(_ProjectStateError value) error,
  }) {
    return projectCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectStateInitial value)? initial,
    TResult? Function(_ProjectStateLoading value)? loading,
    TResult? Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult? Function(_ProjectStateError value)? error,
  }) {
    return projectCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectStateInitial value)? initial,
    TResult Function(_ProjectStateLoading value)? loading,
    TResult Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult Function(_ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (projectCreated != null) {
      return projectCreated(this);
    }
    return orElse();
  }
}

abstract class _ProjectStateProjectCreated extends ProjectState {
  const factory _ProjectStateProjectCreated() =
      _$ProjectStateProjectCreatedImpl;
  const _ProjectStateProjectCreated._() : super._();
}

/// @nodoc
abstract class _$$ProjectStateErrorImplCopyWith<$Res> {
  factory _$$ProjectStateErrorImplCopyWith(_$ProjectStateErrorImpl value,
          $Res Function(_$ProjectStateErrorImpl) then) =
      __$$ProjectStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProjectStateErrorImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateErrorImpl>
    implements _$$ProjectStateErrorImplCopyWith<$Res> {
  __$$ProjectStateErrorImplCopyWithImpl(_$ProjectStateErrorImpl _value,
      $Res Function(_$ProjectStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProjectStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProjectStateErrorImpl extends _ProjectStateError {
  const _$ProjectStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStateErrorImplCopyWith<_$ProjectStateErrorImpl> get copyWith =>
      __$$ProjectStateErrorImplCopyWithImpl<_$ProjectStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() projectCreated,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? projectCreated,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? projectCreated,
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
    required TResult Function(_ProjectStateInitial value) initial,
    required TResult Function(_ProjectStateLoading value) loading,
    required TResult Function(_ProjectStateProjectCreated value) projectCreated,
    required TResult Function(_ProjectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProjectStateInitial value)? initial,
    TResult? Function(_ProjectStateLoading value)? loading,
    TResult? Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult? Function(_ProjectStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProjectStateInitial value)? initial,
    TResult Function(_ProjectStateLoading value)? loading,
    TResult Function(_ProjectStateProjectCreated value)? projectCreated,
    TResult Function(_ProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProjectStateError extends ProjectState {
  const factory _ProjectStateError(final String message) =
      _$ProjectStateErrorImpl;
  const _ProjectStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ProjectStateErrorImplCopyWith<_$ProjectStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActiveProjectStateInitial value) initial,
    required TResult Function(_ActiveProjectStateLoading value) loading,
    required TResult Function(_ActiveProjectStateProjectCreated value) fetch,
    required TResult Function(_ActiveProjectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveProjectStateInitial value)? initial,
    TResult? Function(_ActiveProjectStateLoading value)? loading,
    TResult? Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult? Function(_ActiveProjectStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveProjectStateInitial value)? initial,
    TResult Function(_ActiveProjectStateLoading value)? loading,
    TResult Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult Function(_ActiveProjectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveProjectStateCopyWith<$Res> {
  factory $ActiveProjectStateCopyWith(
          ActiveProjectState value, $Res Function(ActiveProjectState) then) =
      _$ActiveProjectStateCopyWithImpl<$Res, ActiveProjectState>;
}

/// @nodoc
class _$ActiveProjectStateCopyWithImpl<$Res, $Val extends ActiveProjectState>
    implements $ActiveProjectStateCopyWith<$Res> {
  _$ActiveProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ActiveProjectStateInitialImplCopyWith<$Res> {
  factory _$$ActiveProjectStateInitialImplCopyWith(
          _$ActiveProjectStateInitialImpl value,
          $Res Function(_$ActiveProjectStateInitialImpl) then) =
      __$$ActiveProjectStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveProjectStateInitialImplCopyWithImpl<$Res>
    extends _$ActiveProjectStateCopyWithImpl<$Res,
        _$ActiveProjectStateInitialImpl>
    implements _$$ActiveProjectStateInitialImplCopyWith<$Res> {
  __$$ActiveProjectStateInitialImplCopyWithImpl(
      _$ActiveProjectStateInitialImpl _value,
      $Res Function(_$ActiveProjectStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveProjectStateInitialImpl extends _ActiveProjectStateInitial {
  const _$ActiveProjectStateInitialImpl() : super._();

  @override
  String toString() {
    return 'ActiveProjectState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_ActiveProjectStateInitial value) initial,
    required TResult Function(_ActiveProjectStateLoading value) loading,
    required TResult Function(_ActiveProjectStateProjectCreated value) fetch,
    required TResult Function(_ActiveProjectStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveProjectStateInitial value)? initial,
    TResult? Function(_ActiveProjectStateLoading value)? loading,
    TResult? Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult? Function(_ActiveProjectStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveProjectStateInitial value)? initial,
    TResult Function(_ActiveProjectStateLoading value)? loading,
    TResult Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult Function(_ActiveProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActiveProjectStateInitial extends ActiveProjectState {
  const factory _ActiveProjectStateInitial() = _$ActiveProjectStateInitialImpl;
  const _ActiveProjectStateInitial._() : super._();
}

/// @nodoc
abstract class _$$ActiveProjectStateLoadingImplCopyWith<$Res> {
  factory _$$ActiveProjectStateLoadingImplCopyWith(
          _$ActiveProjectStateLoadingImpl value,
          $Res Function(_$ActiveProjectStateLoadingImpl) then) =
      __$$ActiveProjectStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveProjectStateLoadingImplCopyWithImpl<$Res>
    extends _$ActiveProjectStateCopyWithImpl<$Res,
        _$ActiveProjectStateLoadingImpl>
    implements _$$ActiveProjectStateLoadingImplCopyWith<$Res> {
  __$$ActiveProjectStateLoadingImplCopyWithImpl(
      _$ActiveProjectStateLoadingImpl _value,
      $Res Function(_$ActiveProjectStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveProjectStateLoadingImpl extends _ActiveProjectStateLoading {
  const _$ActiveProjectStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'ActiveProjectState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_ActiveProjectStateInitial value) initial,
    required TResult Function(_ActiveProjectStateLoading value) loading,
    required TResult Function(_ActiveProjectStateProjectCreated value) fetch,
    required TResult Function(_ActiveProjectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveProjectStateInitial value)? initial,
    TResult? Function(_ActiveProjectStateLoading value)? loading,
    TResult? Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult? Function(_ActiveProjectStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveProjectStateInitial value)? initial,
    TResult Function(_ActiveProjectStateLoading value)? loading,
    TResult Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult Function(_ActiveProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ActiveProjectStateLoading extends ActiveProjectState {
  const factory _ActiveProjectStateLoading() = _$ActiveProjectStateLoadingImpl;
  const _ActiveProjectStateLoading._() : super._();
}

/// @nodoc
abstract class _$$ActiveProjectStateProjectCreatedImplCopyWith<$Res> {
  factory _$$ActiveProjectStateProjectCreatedImplCopyWith(
          _$ActiveProjectStateProjectCreatedImpl value,
          $Res Function(_$ActiveProjectStateProjectCreatedImpl) then) =
      __$$ActiveProjectStateProjectCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$ActiveProjectStateProjectCreatedImplCopyWithImpl<$Res>
    extends _$ActiveProjectStateCopyWithImpl<$Res,
        _$ActiveProjectStateProjectCreatedImpl>
    implements _$$ActiveProjectStateProjectCreatedImplCopyWith<$Res> {
  __$$ActiveProjectStateProjectCreatedImplCopyWithImpl(
      _$ActiveProjectStateProjectCreatedImpl _value,
      $Res Function(_$ActiveProjectStateProjectCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$ActiveProjectStateProjectCreatedImpl(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$ActiveProjectStateProjectCreatedImpl
    extends _ActiveProjectStateProjectCreated {
  const _$ActiveProjectStateProjectCreatedImpl(
      final List<ProjectModel> projects)
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
    return 'ActiveProjectState.fetch(projects: $projects)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveProjectStateProjectCreatedImplCopyWith<
          _$ActiveProjectStateProjectCreatedImpl>
      get copyWith => __$$ActiveProjectStateProjectCreatedImplCopyWithImpl<
          _$ActiveProjectStateProjectCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? error,
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
    required TResult Function(_ActiveProjectStateInitial value) initial,
    required TResult Function(_ActiveProjectStateLoading value) loading,
    required TResult Function(_ActiveProjectStateProjectCreated value) fetch,
    required TResult Function(_ActiveProjectStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveProjectStateInitial value)? initial,
    TResult? Function(_ActiveProjectStateLoading value)? loading,
    TResult? Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult? Function(_ActiveProjectStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveProjectStateInitial value)? initial,
    TResult Function(_ActiveProjectStateLoading value)? loading,
    TResult Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult Function(_ActiveProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _ActiveProjectStateProjectCreated extends ActiveProjectState {
  const factory _ActiveProjectStateProjectCreated(
          final List<ProjectModel> projects) =
      _$ActiveProjectStateProjectCreatedImpl;
  const _ActiveProjectStateProjectCreated._() : super._();

  List<ProjectModel> get projects;
  @JsonKey(ignore: true)
  _$$ActiveProjectStateProjectCreatedImplCopyWith<
          _$ActiveProjectStateProjectCreatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActiveProjectStateErrorImplCopyWith<$Res> {
  factory _$$ActiveProjectStateErrorImplCopyWith(
          _$ActiveProjectStateErrorImpl value,
          $Res Function(_$ActiveProjectStateErrorImpl) then) =
      __$$ActiveProjectStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActiveProjectStateErrorImplCopyWithImpl<$Res>
    extends _$ActiveProjectStateCopyWithImpl<$Res,
        _$ActiveProjectStateErrorImpl>
    implements _$$ActiveProjectStateErrorImplCopyWith<$Res> {
  __$$ActiveProjectStateErrorImplCopyWithImpl(
      _$ActiveProjectStateErrorImpl _value,
      $Res Function(_$ActiveProjectStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActiveProjectStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActiveProjectStateErrorImpl extends _ActiveProjectStateError {
  const _$ActiveProjectStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'ActiveProjectState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveProjectStateErrorImplCopyWith<_$ActiveProjectStateErrorImpl>
      get copyWith => __$$ActiveProjectStateErrorImplCopyWithImpl<
          _$ActiveProjectStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_ActiveProjectStateInitial value) initial,
    required TResult Function(_ActiveProjectStateLoading value) loading,
    required TResult Function(_ActiveProjectStateProjectCreated value) fetch,
    required TResult Function(_ActiveProjectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActiveProjectStateInitial value)? initial,
    TResult? Function(_ActiveProjectStateLoading value)? loading,
    TResult? Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult? Function(_ActiveProjectStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActiveProjectStateInitial value)? initial,
    TResult Function(_ActiveProjectStateLoading value)? loading,
    TResult Function(_ActiveProjectStateProjectCreated value)? fetch,
    TResult Function(_ActiveProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ActiveProjectStateError extends ActiveProjectState {
  const factory _ActiveProjectStateError(final String message) =
      _$ActiveProjectStateErrorImpl;
  const _ActiveProjectStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ActiveProjectStateErrorImplCopyWith<_$ActiveProjectStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatedProjectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatedProjectStateInitial value) initial,
    required TResult Function(_CreatedProjectStateLoading value) loading,
    required TResult Function(_CreatedProjectStateFetch value) fetch,
    required TResult Function(_CreatedProjectStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatedProjectStateInitial value)? initial,
    TResult? Function(_CreatedProjectStateLoading value)? loading,
    TResult? Function(_CreatedProjectStateFetch value)? fetch,
    TResult? Function(_CreatedProjectStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedProjectStateInitial value)? initial,
    TResult Function(_CreatedProjectStateLoading value)? loading,
    TResult Function(_CreatedProjectStateFetch value)? fetch,
    TResult Function(_CreatedProjectStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedProjectStateCopyWith<$Res> {
  factory $CreatedProjectStateCopyWith(
          CreatedProjectState value, $Res Function(CreatedProjectState) then) =
      _$CreatedProjectStateCopyWithImpl<$Res, CreatedProjectState>;
}

/// @nodoc
class _$CreatedProjectStateCopyWithImpl<$Res, $Val extends CreatedProjectState>
    implements $CreatedProjectStateCopyWith<$Res> {
  _$CreatedProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatedProjectStateInitialImplCopyWith<$Res> {
  factory _$$CreatedProjectStateInitialImplCopyWith(
          _$CreatedProjectStateInitialImpl value,
          $Res Function(_$CreatedProjectStateInitialImpl) then) =
      __$$CreatedProjectStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedProjectStateInitialImplCopyWithImpl<$Res>
    extends _$CreatedProjectStateCopyWithImpl<$Res,
        _$CreatedProjectStateInitialImpl>
    implements _$$CreatedProjectStateInitialImplCopyWith<$Res> {
  __$$CreatedProjectStateInitialImplCopyWithImpl(
      _$CreatedProjectStateInitialImpl _value,
      $Res Function(_$CreatedProjectStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatedProjectStateInitialImpl extends _CreatedProjectStateInitial {
  const _$CreatedProjectStateInitialImpl() : super._();

  @override
  String toString() {
    return 'CreatedProjectState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_CreatedProjectStateInitial value) initial,
    required TResult Function(_CreatedProjectStateLoading value) loading,
    required TResult Function(_CreatedProjectStateFetch value) fetch,
    required TResult Function(_CreatedProjectStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatedProjectStateInitial value)? initial,
    TResult? Function(_CreatedProjectStateLoading value)? loading,
    TResult? Function(_CreatedProjectStateFetch value)? fetch,
    TResult? Function(_CreatedProjectStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedProjectStateInitial value)? initial,
    TResult Function(_CreatedProjectStateLoading value)? loading,
    TResult Function(_CreatedProjectStateFetch value)? fetch,
    TResult Function(_CreatedProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreatedProjectStateInitial extends CreatedProjectState {
  const factory _CreatedProjectStateInitial() =
      _$CreatedProjectStateInitialImpl;
  const _CreatedProjectStateInitial._() : super._();
}

/// @nodoc
abstract class _$$CreatedProjectStateLoadingImplCopyWith<$Res> {
  factory _$$CreatedProjectStateLoadingImplCopyWith(
          _$CreatedProjectStateLoadingImpl value,
          $Res Function(_$CreatedProjectStateLoadingImpl) then) =
      __$$CreatedProjectStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatedProjectStateLoadingImplCopyWithImpl<$Res>
    extends _$CreatedProjectStateCopyWithImpl<$Res,
        _$CreatedProjectStateLoadingImpl>
    implements _$$CreatedProjectStateLoadingImplCopyWith<$Res> {
  __$$CreatedProjectStateLoadingImplCopyWithImpl(
      _$CreatedProjectStateLoadingImpl _value,
      $Res Function(_$CreatedProjectStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatedProjectStateLoadingImpl extends _CreatedProjectStateLoading {
  const _$CreatedProjectStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'CreatedProjectState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_CreatedProjectStateInitial value) initial,
    required TResult Function(_CreatedProjectStateLoading value) loading,
    required TResult Function(_CreatedProjectStateFetch value) fetch,
    required TResult Function(_CreatedProjectStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatedProjectStateInitial value)? initial,
    TResult? Function(_CreatedProjectStateLoading value)? loading,
    TResult? Function(_CreatedProjectStateFetch value)? fetch,
    TResult? Function(_CreatedProjectStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedProjectStateInitial value)? initial,
    TResult Function(_CreatedProjectStateLoading value)? loading,
    TResult Function(_CreatedProjectStateFetch value)? fetch,
    TResult Function(_CreatedProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CreatedProjectStateLoading extends CreatedProjectState {
  const factory _CreatedProjectStateLoading() =
      _$CreatedProjectStateLoadingImpl;
  const _CreatedProjectStateLoading._() : super._();
}

/// @nodoc
abstract class _$$CreatedProjectStateFetchImplCopyWith<$Res> {
  factory _$$CreatedProjectStateFetchImplCopyWith(
          _$CreatedProjectStateFetchImpl value,
          $Res Function(_$CreatedProjectStateFetchImpl) then) =
      __$$CreatedProjectStateFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProjectModel> projects});
}

/// @nodoc
class __$$CreatedProjectStateFetchImplCopyWithImpl<$Res>
    extends _$CreatedProjectStateCopyWithImpl<$Res,
        _$CreatedProjectStateFetchImpl>
    implements _$$CreatedProjectStateFetchImplCopyWith<$Res> {
  __$$CreatedProjectStateFetchImplCopyWithImpl(
      _$CreatedProjectStateFetchImpl _value,
      $Res Function(_$CreatedProjectStateFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = null,
  }) {
    return _then(_$CreatedProjectStateFetchImpl(
      null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc

class _$CreatedProjectStateFetchImpl extends _CreatedProjectStateFetch {
  const _$CreatedProjectStateFetchImpl(final List<ProjectModel> projects)
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
    return 'CreatedProjectState.fetch(projects: $projects)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedProjectStateFetchImplCopyWith<_$CreatedProjectStateFetchImpl>
      get copyWith => __$$CreatedProjectStateFetchImplCopyWithImpl<
          _$CreatedProjectStateFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
    TResult Function(String message)? error,
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
    required TResult Function(_CreatedProjectStateInitial value) initial,
    required TResult Function(_CreatedProjectStateLoading value) loading,
    required TResult Function(_CreatedProjectStateFetch value) fetch,
    required TResult Function(_CreatedProjectStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatedProjectStateInitial value)? initial,
    TResult? Function(_CreatedProjectStateLoading value)? loading,
    TResult? Function(_CreatedProjectStateFetch value)? fetch,
    TResult? Function(_CreatedProjectStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedProjectStateInitial value)? initial,
    TResult Function(_CreatedProjectStateLoading value)? loading,
    TResult Function(_CreatedProjectStateFetch value)? fetch,
    TResult Function(_CreatedProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _CreatedProjectStateFetch extends CreatedProjectState {
  const factory _CreatedProjectStateFetch(final List<ProjectModel> projects) =
      _$CreatedProjectStateFetchImpl;
  const _CreatedProjectStateFetch._() : super._();

  List<ProjectModel> get projects;
  @JsonKey(ignore: true)
  _$$CreatedProjectStateFetchImplCopyWith<_$CreatedProjectStateFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedProjectStateErrorImplCopyWith<$Res> {
  factory _$$CreatedProjectStateErrorImplCopyWith(
          _$CreatedProjectStateErrorImpl value,
          $Res Function(_$CreatedProjectStateErrorImpl) then) =
      __$$CreatedProjectStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreatedProjectStateErrorImplCopyWithImpl<$Res>
    extends _$CreatedProjectStateCopyWithImpl<$Res,
        _$CreatedProjectStateErrorImpl>
    implements _$$CreatedProjectStateErrorImplCopyWith<$Res> {
  __$$CreatedProjectStateErrorImplCopyWithImpl(
      _$CreatedProjectStateErrorImpl _value,
      $Res Function(_$CreatedProjectStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreatedProjectStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatedProjectStateErrorImpl extends _CreatedProjectStateError {
  const _$CreatedProjectStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CreatedProjectState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedProjectStateErrorImplCopyWith<_$CreatedProjectStateErrorImpl>
      get copyWith => __$$CreatedProjectStateErrorImplCopyWithImpl<
          _$CreatedProjectStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProjectModel> projects) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProjectModel> projects)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProjectModel> projects)? fetch,
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
    required TResult Function(_CreatedProjectStateInitial value) initial,
    required TResult Function(_CreatedProjectStateLoading value) loading,
    required TResult Function(_CreatedProjectStateFetch value) fetch,
    required TResult Function(_CreatedProjectStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatedProjectStateInitial value)? initial,
    TResult? Function(_CreatedProjectStateLoading value)? loading,
    TResult? Function(_CreatedProjectStateFetch value)? fetch,
    TResult? Function(_CreatedProjectStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedProjectStateInitial value)? initial,
    TResult Function(_CreatedProjectStateLoading value)? loading,
    TResult Function(_CreatedProjectStateFetch value)? fetch,
    TResult Function(_CreatedProjectStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CreatedProjectStateError extends CreatedProjectState {
  const factory _CreatedProjectStateError(final String message) =
      _$CreatedProjectStateErrorImpl;
  const _CreatedProjectStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$CreatedProjectStateErrorImplCopyWith<_$CreatedProjectStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TagsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> tags) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> tags)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> tags)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagsStateInitial value) initial,
    required TResult Function(_TagsStateSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TagsStateInitial value)? initial,
    TResult? Function(_TagsStateSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagsStateInitial value)? initial,
    TResult Function(_TagsStateSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsStateCopyWith<$Res> {
  factory $TagsStateCopyWith(TagsState value, $Res Function(TagsState) then) =
      _$TagsStateCopyWithImpl<$Res, TagsState>;
}

/// @nodoc
class _$TagsStateCopyWithImpl<$Res, $Val extends TagsState>
    implements $TagsStateCopyWith<$Res> {
  _$TagsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TagsStateInitialImplCopyWith<$Res> {
  factory _$$TagsStateInitialImplCopyWith(_$TagsStateInitialImpl value,
          $Res Function(_$TagsStateInitialImpl) then) =
      __$$TagsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TagsStateInitialImplCopyWithImpl<$Res>
    extends _$TagsStateCopyWithImpl<$Res, _$TagsStateInitialImpl>
    implements _$$TagsStateInitialImplCopyWith<$Res> {
  __$$TagsStateInitialImplCopyWithImpl(_$TagsStateInitialImpl _value,
      $Res Function(_$TagsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TagsStateInitialImpl implements _TagsStateInitial {
  const _$TagsStateInitialImpl();

  @override
  String toString() {
    return 'TagsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TagsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> tags) selected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> tags)? selected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> tags)? selected,
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
    required TResult Function(_TagsStateInitial value) initial,
    required TResult Function(_TagsStateSelected value) selected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TagsStateInitial value)? initial,
    TResult? Function(_TagsStateSelected value)? selected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagsStateInitial value)? initial,
    TResult Function(_TagsStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TagsStateInitial implements TagsState {
  const factory _TagsStateInitial() = _$TagsStateInitialImpl;
}

/// @nodoc
abstract class _$$TagsStateSelectedImplCopyWith<$Res> {
  factory _$$TagsStateSelectedImplCopyWith(_$TagsStateSelectedImpl value,
          $Res Function(_$TagsStateSelectedImpl) then) =
      __$$TagsStateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> tags});
}

/// @nodoc
class __$$TagsStateSelectedImplCopyWithImpl<$Res>
    extends _$TagsStateCopyWithImpl<$Res, _$TagsStateSelectedImpl>
    implements _$$TagsStateSelectedImplCopyWith<$Res> {
  __$$TagsStateSelectedImplCopyWithImpl(_$TagsStateSelectedImpl _value,
      $Res Function(_$TagsStateSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = null,
  }) {
    return _then(_$TagsStateSelectedImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$TagsStateSelectedImpl implements _TagsStateSelected {
  const _$TagsStateSelectedImpl({required final List<String> tags})
      : _tags = tags;

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'TagsState.selected(tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagsStateSelectedImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagsStateSelectedImplCopyWith<_$TagsStateSelectedImpl> get copyWith =>
      __$$TagsStateSelectedImplCopyWithImpl<_$TagsStateSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<String> tags) selected,
  }) {
    return selected(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<String> tags)? selected,
  }) {
    return selected?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<String> tags)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TagsStateInitial value) initial,
    required TResult Function(_TagsStateSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TagsStateInitial value)? initial,
    TResult? Function(_TagsStateSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TagsStateInitial value)? initial,
    TResult Function(_TagsStateSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _TagsStateSelected implements TagsState {
  const factory _TagsStateSelected({required final List<String> tags}) =
      _$TagsStateSelectedImpl;

  List<String> get tags;
  @JsonKey(ignore: true)
  _$$TagsStateSelectedImplCopyWith<_$TagsStateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
