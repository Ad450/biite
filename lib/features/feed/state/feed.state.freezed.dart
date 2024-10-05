// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.state.dart';

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
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
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
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
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
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
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
abstract class _$$FeedStateLoadingImplCopyWith<$Res> {
  factory _$$FeedStateLoadingImplCopyWith(_$FeedStateLoadingImpl value,
          $Res Function(_$FeedStateLoadingImpl) then) =
      __$$FeedStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedStateLoadingImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateLoadingImpl>
    implements _$$FeedStateLoadingImplCopyWith<$Res> {
  __$$FeedStateLoadingImplCopyWithImpl(_$FeedStateLoadingImpl _value,
      $Res Function(_$FeedStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedStateLoadingImpl extends _FeedStateLoading {
  const _$FeedStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'FeedState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
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
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FeedStateLoading extends FeedState {
  const factory _FeedStateLoading() = _$FeedStateLoadingImpl;
  const _FeedStateLoading._() : super._();
}

/// @nodoc
abstract class _$$FeedStateFetchBidsImplCopyWith<$Res> {
  factory _$$FeedStateFetchBidsImplCopyWith(_$FeedStateFetchBidsImpl value,
          $Res Function(_$FeedStateFetchBidsImpl) then) =
      __$$FeedStateFetchBidsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BidModel> bids});
}

/// @nodoc
class __$$FeedStateFetchBidsImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateFetchBidsImpl>
    implements _$$FeedStateFetchBidsImplCopyWith<$Res> {
  __$$FeedStateFetchBidsImplCopyWithImpl(_$FeedStateFetchBidsImpl _value,
      $Res Function(_$FeedStateFetchBidsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = null,
  }) {
    return _then(_$FeedStateFetchBidsImpl(
      null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

class _$FeedStateFetchBidsImpl extends _FeedStateFetchBids {
  const _$FeedStateFetchBidsImpl(final List<BidModel> bids)
      : _bids = bids,
        super._();

  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'FeedState.fetchBids(bids: $bids)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateFetchBidsImplCopyWith<_$FeedStateFetchBidsImpl> get copyWith =>
      __$$FeedStateFetchBidsImplCopyWithImpl<_$FeedStateFetchBidsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return fetchBids(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return fetchBids?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchBids != null) {
      return fetchBids(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return fetchBids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return fetchBids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchBids != null) {
      return fetchBids(this);
    }
    return orElse();
  }
}

abstract class _FeedStateFetchBids extends FeedState {
  const factory _FeedStateFetchBids(final List<BidModel> bids) =
      _$FeedStateFetchBidsImpl;
  const _FeedStateFetchBids._() : super._();

  List<BidModel> get bids;
  @JsonKey(ignore: true)
  _$$FeedStateFetchBidsImplCopyWith<_$FeedStateFetchBidsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FeedStateCreateBidImplCopyWith<$Res> {
  factory _$$FeedStateCreateBidImplCopyWith(_$FeedStateCreateBidImpl value,
          $Res Function(_$FeedStateCreateBidImpl) then) =
      __$$FeedStateCreateBidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedStateCreateBidImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateCreateBidImpl>
    implements _$$FeedStateCreateBidImplCopyWith<$Res> {
  __$$FeedStateCreateBidImplCopyWithImpl(_$FeedStateCreateBidImpl _value,
      $Res Function(_$FeedStateCreateBidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedStateCreateBidImpl extends _FeedStateCreateBid {
  const _$FeedStateCreateBidImpl() : super._();

  @override
  String toString() {
    return 'FeedState.createBid()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return createBid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return createBid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (createBid != null) {
      return createBid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return createBid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return createBid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (createBid != null) {
      return createBid(this);
    }
    return orElse();
  }
}

abstract class _FeedStateCreateBid extends FeedState {
  const factory _FeedStateCreateBid() = _$FeedStateCreateBidImpl;
  const _FeedStateCreateBid._() : super._();
}

/// @nodoc
abstract class _$$FeedStateAcceptBidImplCopyWith<$Res> {
  factory _$$FeedStateAcceptBidImplCopyWith(_$FeedStateAcceptBidImpl value,
          $Res Function(_$FeedStateAcceptBidImpl) then) =
      __$$FeedStateAcceptBidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedStateAcceptBidImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateAcceptBidImpl>
    implements _$$FeedStateAcceptBidImplCopyWith<$Res> {
  __$$FeedStateAcceptBidImplCopyWithImpl(_$FeedStateAcceptBidImpl _value,
      $Res Function(_$FeedStateAcceptBidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeedStateAcceptBidImpl extends _FeedStateAcceptBid {
  const _$FeedStateAcceptBidImpl() : super._();

  @override
  String toString() {
    return 'FeedState.acceptBid()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return acceptBid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return acceptBid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (acceptBid != null) {
      return acceptBid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return acceptBid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return acceptBid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
    TResult Function(_FeedStateError value)? error,
    required TResult orElse(),
  }) {
    if (acceptBid != null) {
      return acceptBid(this);
    }
    return orElse();
  }
}

abstract class _FeedStateAcceptBid extends FeedState {
  const factory _FeedStateAcceptBid() = _$FeedStateAcceptBidImpl;
  const _FeedStateAcceptBid._() : super._();
}

/// @nodoc
abstract class _$$FeedStateErrorImplCopyWith<$Res> {
  factory _$$FeedStateErrorImplCopyWith(_$FeedStateErrorImpl value,
          $Res Function(_$FeedStateErrorImpl) then) =
      __$$FeedStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_$FeedStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FeedStateErrorImpl extends _FeedStateError {
  const _$FeedStateErrorImpl(this.message) : super._();

  @override
  final String message;

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
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetchBids,
    required TResult Function() createBid,
    required TResult Function() acceptBid,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetchBids,
    TResult? Function()? createBid,
    TResult? Function()? acceptBid,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetchBids,
    TResult Function()? createBid,
    TResult Function()? acceptBid,
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
    required TResult Function(_FeedStateInitial value) initial,
    required TResult Function(_FeedStateLoading value) loading,
    required TResult Function(_FeedStateFetchBids value) fetchBids,
    required TResult Function(_FeedStateCreateBid value) createBid,
    required TResult Function(_FeedStateAcceptBid value) acceptBid,
    required TResult Function(_FeedStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FeedStateInitial value)? initial,
    TResult? Function(_FeedStateLoading value)? loading,
    TResult? Function(_FeedStateFetchBids value)? fetchBids,
    TResult? Function(_FeedStateCreateBid value)? createBid,
    TResult? Function(_FeedStateAcceptBid value)? acceptBid,
    TResult? Function(_FeedStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FeedStateInitial value)? initial,
    TResult Function(_FeedStateLoading value)? loading,
    TResult Function(_FeedStateFetchBids value)? fetchBids,
    TResult Function(_FeedStateCreateBid value)? createBid,
    TResult Function(_FeedStateAcceptBid value)? acceptBid,
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
  const factory _FeedStateError(final String message) = _$FeedStateErrorImpl;
  const _FeedStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FeedStateErrorImplCopyWith<_$FeedStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BidState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidStateCopyWith<$Res> {
  factory $BidStateCopyWith(BidState value, $Res Function(BidState) then) =
      _$BidStateCopyWithImpl<$Res, BidState>;
}

/// @nodoc
class _$BidStateCopyWithImpl<$Res, $Val extends BidState>
    implements $BidStateCopyWith<$Res> {
  _$BidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BidStateInitialImplCopyWith<$Res> {
  factory _$$BidStateInitialImplCopyWith(_$BidStateInitialImpl value,
          $Res Function(_$BidStateInitialImpl) then) =
      __$$BidStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BidStateInitialImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateInitialImpl>
    implements _$$BidStateInitialImplCopyWith<$Res> {
  __$$BidStateInitialImplCopyWithImpl(
      _$BidStateInitialImpl _value, $Res Function(_$BidStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BidStateInitialImpl extends _BidStateInitial {
  const _$BidStateInitialImpl() : super._();

  @override
  String toString() {
    return 'BidState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
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
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BidStateInitial extends BidState {
  const factory _BidStateInitial() = _$BidStateInitialImpl;
  const _BidStateInitial._() : super._();
}

/// @nodoc
abstract class _$$BidStateLoadingImplCopyWith<$Res> {
  factory _$$BidStateLoadingImplCopyWith(_$BidStateLoadingImpl value,
          $Res Function(_$BidStateLoadingImpl) then) =
      __$$BidStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BidStateLoadingImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateLoadingImpl>
    implements _$$BidStateLoadingImplCopyWith<$Res> {
  __$$BidStateLoadingImplCopyWithImpl(
      _$BidStateLoadingImpl _value, $Res Function(_$BidStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BidStateLoadingImpl extends _BidStateLoading {
  const _$BidStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'BidState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
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
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BidStateLoading extends BidState {
  const factory _BidStateLoading() = _$BidStateLoadingImpl;
  const _BidStateLoading._() : super._();
}

/// @nodoc
abstract class _$$BidStateAcceptImplCopyWith<$Res> {
  factory _$$BidStateAcceptImplCopyWith(_$BidStateAcceptImpl value,
          $Res Function(_$BidStateAcceptImpl) then) =
      __$$BidStateAcceptImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BidStateAcceptImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateAcceptImpl>
    implements _$$BidStateAcceptImplCopyWith<$Res> {
  __$$BidStateAcceptImplCopyWithImpl(
      _$BidStateAcceptImpl _value, $Res Function(_$BidStateAcceptImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BidStateAcceptImpl extends _BidStateAccept {
  const _$BidStateAcceptImpl() : super._();

  @override
  String toString() {
    return 'BidState.accept()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return accept();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return accept?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _BidStateAccept extends BidState {
  const factory _BidStateAccept() = _$BidStateAcceptImpl;
  const _BidStateAccept._() : super._();
}

/// @nodoc
abstract class _$$BidStateFetchBidsByIdImplCopyWith<$Res> {
  factory _$$BidStateFetchBidsByIdImplCopyWith(
          _$BidStateFetchBidsByIdImpl value,
          $Res Function(_$BidStateFetchBidsByIdImpl) then) =
      __$$BidStateFetchBidsByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BidModel> bids});
}

/// @nodoc
class __$$BidStateFetchBidsByIdImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateFetchBidsByIdImpl>
    implements _$$BidStateFetchBidsByIdImplCopyWith<$Res> {
  __$$BidStateFetchBidsByIdImplCopyWithImpl(_$BidStateFetchBidsByIdImpl _value,
      $Res Function(_$BidStateFetchBidsByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = null,
  }) {
    return _then(_$BidStateFetchBidsByIdImpl(
      null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

class _$BidStateFetchBidsByIdImpl extends _BidStateFetchBidsById {
  const _$BidStateFetchBidsByIdImpl(final List<BidModel> bids)
      : _bids = bids,
        super._();

  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'BidState.fetchBidsById(bids: $bids)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStateFetchBidsByIdImplCopyWith<_$BidStateFetchBidsByIdImpl>
      get copyWith => __$$BidStateFetchBidsByIdImplCopyWithImpl<
          _$BidStateFetchBidsByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return fetchBidsById(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return fetchBidsById?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchBidsById != null) {
      return fetchBidsById(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return fetchBidsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return fetchBidsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchBidsById != null) {
      return fetchBidsById(this);
    }
    return orElse();
  }
}

abstract class _BidStateFetchBidsById extends BidState {
  const factory _BidStateFetchBidsById(final List<BidModel> bids) =
      _$BidStateFetchBidsByIdImpl;
  const _BidStateFetchBidsById._() : super._();

  List<BidModel> get bids;
  @JsonKey(ignore: true)
  _$$BidStateFetchBidsByIdImplCopyWith<_$BidStateFetchBidsByIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BidStateFetchReceivedBidsImplCopyWith<$Res> {
  factory _$$BidStateFetchReceivedBidsImplCopyWith(
          _$BidStateFetchReceivedBidsImpl value,
          $Res Function(_$BidStateFetchReceivedBidsImpl) then) =
      __$$BidStateFetchReceivedBidsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BidModel> bids});
}

/// @nodoc
class __$$BidStateFetchReceivedBidsImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateFetchReceivedBidsImpl>
    implements _$$BidStateFetchReceivedBidsImplCopyWith<$Res> {
  __$$BidStateFetchReceivedBidsImplCopyWithImpl(
      _$BidStateFetchReceivedBidsImpl _value,
      $Res Function(_$BidStateFetchReceivedBidsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = null,
  }) {
    return _then(_$BidStateFetchReceivedBidsImpl(
      null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

class _$BidStateFetchReceivedBidsImpl extends _BidStateFetchReceivedBids {
  const _$BidStateFetchReceivedBidsImpl(final List<BidModel> bids)
      : _bids = bids,
        super._();

  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'BidState.fetchReceivedBids(bids: $bids)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStateFetchReceivedBidsImplCopyWith<_$BidStateFetchReceivedBidsImpl>
      get copyWith => __$$BidStateFetchReceivedBidsImplCopyWithImpl<
          _$BidStateFetchReceivedBidsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return fetchReceivedBids(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return fetchReceivedBids?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetchReceivedBids != null) {
      return fetchReceivedBids(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return fetchReceivedBids(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return fetchReceivedBids?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetchReceivedBids != null) {
      return fetchReceivedBids(this);
    }
    return orElse();
  }
}

abstract class _BidStateFetchReceivedBids extends BidState {
  const factory _BidStateFetchReceivedBids(final List<BidModel> bids) =
      _$BidStateFetchReceivedBidsImpl;
  const _BidStateFetchReceivedBids._() : super._();

  List<BidModel> get bids;
  @JsonKey(ignore: true)
  _$$BidStateFetchReceivedBidsImplCopyWith<_$BidStateFetchReceivedBidsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BidStateErrorImplCopyWith<$Res> {
  factory _$$BidStateErrorImplCopyWith(
          _$BidStateErrorImpl value, $Res Function(_$BidStateErrorImpl) then) =
      __$$BidStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$BidStateErrorImplCopyWithImpl<$Res>
    extends _$BidStateCopyWithImpl<$Res, _$BidStateErrorImpl>
    implements _$$BidStateErrorImplCopyWith<$Res> {
  __$$BidStateErrorImplCopyWithImpl(
      _$BidStateErrorImpl _value, $Res Function(_$BidStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BidStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BidStateErrorImpl extends _BidStateError {
  const _$BidStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'BidState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BidStateErrorImplCopyWith<_$BidStateErrorImpl> get copyWith =>
      __$$BidStateErrorImplCopyWithImpl<_$BidStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(List<BidModel> bids) fetchBidsById,
    required TResult Function(List<BidModel> bids) fetchReceivedBids,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(List<BidModel> bids)? fetchBidsById,
    TResult? Function(List<BidModel> bids)? fetchReceivedBids,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(List<BidModel> bids)? fetchBidsById,
    TResult Function(List<BidModel> bids)? fetchReceivedBids,
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
    required TResult Function(_BidStateInitial value) initial,
    required TResult Function(_BidStateLoading value) loading,
    required TResult Function(_BidStateAccept value) accept,
    required TResult Function(_BidStateFetchBidsById value) fetchBidsById,
    required TResult Function(_BidStateFetchReceivedBids value)
        fetchReceivedBids,
    required TResult Function(_BidStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BidStateInitial value)? initial,
    TResult? Function(_BidStateLoading value)? loading,
    TResult? Function(_BidStateAccept value)? accept,
    TResult? Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult? Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult? Function(_BidStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BidStateInitial value)? initial,
    TResult Function(_BidStateLoading value)? loading,
    TResult Function(_BidStateAccept value)? accept,
    TResult Function(_BidStateFetchBidsById value)? fetchBidsById,
    TResult Function(_BidStateFetchReceivedBids value)? fetchReceivedBids,
    TResult Function(_BidStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _BidStateError extends BidState {
  const factory _BidStateError(final String message) = _$BidStateErrorImpl;
  const _BidStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$BidStateErrorImplCopyWith<_$BidStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FetchReceivedBidState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReceivedBidStateInitial value) initial,
    required TResult Function(_FetchReceivedBidStateLoading value) loading,
    required TResult Function(_FetchReceivedBidStateFetch value) fetch,
    required TResult Function(_FetchReceivedBidStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReceivedBidStateInitial value)? initial,
    TResult? Function(_FetchReceivedBidStateLoading value)? loading,
    TResult? Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult? Function(_FetchReceivedBidStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReceivedBidStateInitial value)? initial,
    TResult Function(_FetchReceivedBidStateLoading value)? loading,
    TResult Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult Function(_FetchReceivedBidStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchReceivedBidStateCopyWith<$Res> {
  factory $FetchReceivedBidStateCopyWith(FetchReceivedBidState value,
          $Res Function(FetchReceivedBidState) then) =
      _$FetchReceivedBidStateCopyWithImpl<$Res, FetchReceivedBidState>;
}

/// @nodoc
class _$FetchReceivedBidStateCopyWithImpl<$Res,
        $Val extends FetchReceivedBidState>
    implements $FetchReceivedBidStateCopyWith<$Res> {
  _$FetchReceivedBidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchReceivedBidStateInitialImplCopyWith<$Res> {
  factory _$$FetchReceivedBidStateInitialImplCopyWith(
          _$FetchReceivedBidStateInitialImpl value,
          $Res Function(_$FetchReceivedBidStateInitialImpl) then) =
      __$$FetchReceivedBidStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReceivedBidStateInitialImplCopyWithImpl<$Res>
    extends _$FetchReceivedBidStateCopyWithImpl<$Res,
        _$FetchReceivedBidStateInitialImpl>
    implements _$$FetchReceivedBidStateInitialImplCopyWith<$Res> {
  __$$FetchReceivedBidStateInitialImplCopyWithImpl(
      _$FetchReceivedBidStateInitialImpl _value,
      $Res Function(_$FetchReceivedBidStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchReceivedBidStateInitialImpl extends _FetchReceivedBidStateInitial {
  const _$FetchReceivedBidStateInitialImpl() : super._();

  @override
  String toString() {
    return 'FetchReceivedBidState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_FetchReceivedBidStateInitial value) initial,
    required TResult Function(_FetchReceivedBidStateLoading value) loading,
    required TResult Function(_FetchReceivedBidStateFetch value) fetch,
    required TResult Function(_FetchReceivedBidStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReceivedBidStateInitial value)? initial,
    TResult? Function(_FetchReceivedBidStateLoading value)? loading,
    TResult? Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult? Function(_FetchReceivedBidStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReceivedBidStateInitial value)? initial,
    TResult Function(_FetchReceivedBidStateLoading value)? loading,
    TResult Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult Function(_FetchReceivedBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FetchReceivedBidStateInitial extends FetchReceivedBidState {
  const factory _FetchReceivedBidStateInitial() =
      _$FetchReceivedBidStateInitialImpl;
  const _FetchReceivedBidStateInitial._() : super._();
}

/// @nodoc
abstract class _$$FetchReceivedBidStateLoadingImplCopyWith<$Res> {
  factory _$$FetchReceivedBidStateLoadingImplCopyWith(
          _$FetchReceivedBidStateLoadingImpl value,
          $Res Function(_$FetchReceivedBidStateLoadingImpl) then) =
      __$$FetchReceivedBidStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchReceivedBidStateLoadingImplCopyWithImpl<$Res>
    extends _$FetchReceivedBidStateCopyWithImpl<$Res,
        _$FetchReceivedBidStateLoadingImpl>
    implements _$$FetchReceivedBidStateLoadingImplCopyWith<$Res> {
  __$$FetchReceivedBidStateLoadingImplCopyWithImpl(
      _$FetchReceivedBidStateLoadingImpl _value,
      $Res Function(_$FetchReceivedBidStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchReceivedBidStateLoadingImpl extends _FetchReceivedBidStateLoading {
  const _$FetchReceivedBidStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'FetchReceivedBidState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_FetchReceivedBidStateInitial value) initial,
    required TResult Function(_FetchReceivedBidStateLoading value) loading,
    required TResult Function(_FetchReceivedBidStateFetch value) fetch,
    required TResult Function(_FetchReceivedBidStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReceivedBidStateInitial value)? initial,
    TResult? Function(_FetchReceivedBidStateLoading value)? loading,
    TResult? Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult? Function(_FetchReceivedBidStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReceivedBidStateInitial value)? initial,
    TResult Function(_FetchReceivedBidStateLoading value)? loading,
    TResult Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult Function(_FetchReceivedBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FetchReceivedBidStateLoading extends FetchReceivedBidState {
  const factory _FetchReceivedBidStateLoading() =
      _$FetchReceivedBidStateLoadingImpl;
  const _FetchReceivedBidStateLoading._() : super._();
}

/// @nodoc
abstract class _$$FetchReceivedBidStateFetchImplCopyWith<$Res> {
  factory _$$FetchReceivedBidStateFetchImplCopyWith(
          _$FetchReceivedBidStateFetchImpl value,
          $Res Function(_$FetchReceivedBidStateFetchImpl) then) =
      __$$FetchReceivedBidStateFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BidModel> bids});
}

/// @nodoc
class __$$FetchReceivedBidStateFetchImplCopyWithImpl<$Res>
    extends _$FetchReceivedBidStateCopyWithImpl<$Res,
        _$FetchReceivedBidStateFetchImpl>
    implements _$$FetchReceivedBidStateFetchImplCopyWith<$Res> {
  __$$FetchReceivedBidStateFetchImplCopyWithImpl(
      _$FetchReceivedBidStateFetchImpl _value,
      $Res Function(_$FetchReceivedBidStateFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = null,
  }) {
    return _then(_$FetchReceivedBidStateFetchImpl(
      null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

class _$FetchReceivedBidStateFetchImpl extends _FetchReceivedBidStateFetch {
  const _$FetchReceivedBidStateFetchImpl(final List<BidModel> bids)
      : _bids = bids,
        super._();

  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'FetchReceivedBidState.fetch(bids: $bids)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReceivedBidStateFetchImplCopyWith<_$FetchReceivedBidStateFetchImpl>
      get copyWith => __$$FetchReceivedBidStateFetchImplCopyWithImpl<
          _$FetchReceivedBidStateFetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReceivedBidStateInitial value) initial,
    required TResult Function(_FetchReceivedBidStateLoading value) loading,
    required TResult Function(_FetchReceivedBidStateFetch value) fetch,
    required TResult Function(_FetchReceivedBidStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReceivedBidStateInitial value)? initial,
    TResult? Function(_FetchReceivedBidStateLoading value)? loading,
    TResult? Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult? Function(_FetchReceivedBidStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReceivedBidStateInitial value)? initial,
    TResult Function(_FetchReceivedBidStateLoading value)? loading,
    TResult Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult Function(_FetchReceivedBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchReceivedBidStateFetch extends FetchReceivedBidState {
  const factory _FetchReceivedBidStateFetch(final List<BidModel> bids) =
      _$FetchReceivedBidStateFetchImpl;
  const _FetchReceivedBidStateFetch._() : super._();

  List<BidModel> get bids;
  @JsonKey(ignore: true)
  _$$FetchReceivedBidStateFetchImplCopyWith<_$FetchReceivedBidStateFetchImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchReceivedBidStateErrorImplCopyWith<$Res> {
  factory _$$FetchReceivedBidStateErrorImplCopyWith(
          _$FetchReceivedBidStateErrorImpl value,
          $Res Function(_$FetchReceivedBidStateErrorImpl) then) =
      __$$FetchReceivedBidStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FetchReceivedBidStateErrorImplCopyWithImpl<$Res>
    extends _$FetchReceivedBidStateCopyWithImpl<$Res,
        _$FetchReceivedBidStateErrorImpl>
    implements _$$FetchReceivedBidStateErrorImplCopyWith<$Res> {
  __$$FetchReceivedBidStateErrorImplCopyWithImpl(
      _$FetchReceivedBidStateErrorImpl _value,
      $Res Function(_$FetchReceivedBidStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FetchReceivedBidStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchReceivedBidStateErrorImpl extends _FetchReceivedBidStateError {
  const _$FetchReceivedBidStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'FetchReceivedBidState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchReceivedBidStateErrorImplCopyWith<_$FetchReceivedBidStateErrorImpl>
      get copyWith => __$$FetchReceivedBidStateErrorImplCopyWithImpl<
          _$FetchReceivedBidStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_FetchReceivedBidStateInitial value) initial,
    required TResult Function(_FetchReceivedBidStateLoading value) loading,
    required TResult Function(_FetchReceivedBidStateFetch value) fetch,
    required TResult Function(_FetchReceivedBidStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchReceivedBidStateInitial value)? initial,
    TResult? Function(_FetchReceivedBidStateLoading value)? loading,
    TResult? Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult? Function(_FetchReceivedBidStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReceivedBidStateInitial value)? initial,
    TResult Function(_FetchReceivedBidStateLoading value)? loading,
    TResult Function(_FetchReceivedBidStateFetch value)? fetch,
    TResult Function(_FetchReceivedBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FetchReceivedBidStateError extends FetchReceivedBidState {
  const factory _FetchReceivedBidStateError(final String message) =
      _$FetchReceivedBidStateErrorImpl;
  const _FetchReceivedBidStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$FetchReceivedBidStateErrorImplCopyWith<_$FetchReceivedBidStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcceptBidState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptBidStateInitial value) initial,
    required TResult Function(_AcceptBidStateLoading value) loading,
    required TResult Function(_AcceptBidStateAccept value) accept,
    required TResult Function(_AcceptBidStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptBidStateInitial value)? initial,
    TResult? Function(_AcceptBidStateLoading value)? loading,
    TResult? Function(_AcceptBidStateAccept value)? accept,
    TResult? Function(_AcceptBidStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptBidStateInitial value)? initial,
    TResult Function(_AcceptBidStateLoading value)? loading,
    TResult Function(_AcceptBidStateAccept value)? accept,
    TResult Function(_AcceptBidStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptBidStateCopyWith<$Res> {
  factory $AcceptBidStateCopyWith(
          AcceptBidState value, $Res Function(AcceptBidState) then) =
      _$AcceptBidStateCopyWithImpl<$Res, AcceptBidState>;
}

/// @nodoc
class _$AcceptBidStateCopyWithImpl<$Res, $Val extends AcceptBidState>
    implements $AcceptBidStateCopyWith<$Res> {
  _$AcceptBidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AcceptBidStateInitialImplCopyWith<$Res> {
  factory _$$AcceptBidStateInitialImplCopyWith(
          _$AcceptBidStateInitialImpl value,
          $Res Function(_$AcceptBidStateInitialImpl) then) =
      __$$AcceptBidStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptBidStateInitialImplCopyWithImpl<$Res>
    extends _$AcceptBidStateCopyWithImpl<$Res, _$AcceptBidStateInitialImpl>
    implements _$$AcceptBidStateInitialImplCopyWith<$Res> {
  __$$AcceptBidStateInitialImplCopyWithImpl(_$AcceptBidStateInitialImpl _value,
      $Res Function(_$AcceptBidStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptBidStateInitialImpl extends _AcceptBidStateInitial {
  const _$AcceptBidStateInitialImpl() : super._();

  @override
  String toString() {
    return 'AcceptBidState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
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
    required TResult Function(_AcceptBidStateInitial value) initial,
    required TResult Function(_AcceptBidStateLoading value) loading,
    required TResult Function(_AcceptBidStateAccept value) accept,
    required TResult Function(_AcceptBidStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptBidStateInitial value)? initial,
    TResult? Function(_AcceptBidStateLoading value)? loading,
    TResult? Function(_AcceptBidStateAccept value)? accept,
    TResult? Function(_AcceptBidStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptBidStateInitial value)? initial,
    TResult Function(_AcceptBidStateLoading value)? loading,
    TResult Function(_AcceptBidStateAccept value)? accept,
    TResult Function(_AcceptBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AcceptBidStateInitial extends AcceptBidState {
  const factory _AcceptBidStateInitial() = _$AcceptBidStateInitialImpl;
  const _AcceptBidStateInitial._() : super._();
}

/// @nodoc
abstract class _$$AcceptBidStateLoadingImplCopyWith<$Res> {
  factory _$$AcceptBidStateLoadingImplCopyWith(
          _$AcceptBidStateLoadingImpl value,
          $Res Function(_$AcceptBidStateLoadingImpl) then) =
      __$$AcceptBidStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptBidStateLoadingImplCopyWithImpl<$Res>
    extends _$AcceptBidStateCopyWithImpl<$Res, _$AcceptBidStateLoadingImpl>
    implements _$$AcceptBidStateLoadingImplCopyWith<$Res> {
  __$$AcceptBidStateLoadingImplCopyWithImpl(_$AcceptBidStateLoadingImpl _value,
      $Res Function(_$AcceptBidStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptBidStateLoadingImpl extends _AcceptBidStateLoading {
  const _$AcceptBidStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'AcceptBidState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
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
    required TResult Function(_AcceptBidStateInitial value) initial,
    required TResult Function(_AcceptBidStateLoading value) loading,
    required TResult Function(_AcceptBidStateAccept value) accept,
    required TResult Function(_AcceptBidStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptBidStateInitial value)? initial,
    TResult? Function(_AcceptBidStateLoading value)? loading,
    TResult? Function(_AcceptBidStateAccept value)? accept,
    TResult? Function(_AcceptBidStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptBidStateInitial value)? initial,
    TResult Function(_AcceptBidStateLoading value)? loading,
    TResult Function(_AcceptBidStateAccept value)? accept,
    TResult Function(_AcceptBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AcceptBidStateLoading extends AcceptBidState {
  const factory _AcceptBidStateLoading() = _$AcceptBidStateLoadingImpl;
  const _AcceptBidStateLoading._() : super._();
}

/// @nodoc
abstract class _$$AcceptBidStateAcceptImplCopyWith<$Res> {
  factory _$$AcceptBidStateAcceptImplCopyWith(_$AcceptBidStateAcceptImpl value,
          $Res Function(_$AcceptBidStateAcceptImpl) then) =
      __$$AcceptBidStateAcceptImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptBidStateAcceptImplCopyWithImpl<$Res>
    extends _$AcceptBidStateCopyWithImpl<$Res, _$AcceptBidStateAcceptImpl>
    implements _$$AcceptBidStateAcceptImplCopyWith<$Res> {
  __$$AcceptBidStateAcceptImplCopyWithImpl(_$AcceptBidStateAcceptImpl _value,
      $Res Function(_$AcceptBidStateAcceptImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptBidStateAcceptImpl extends _AcceptBidStateAccept {
  const _$AcceptBidStateAcceptImpl() : super._();

  @override
  String toString() {
    return 'AcceptBidState.accept()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(String message) error,
  }) {
    return accept();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(String message)? error,
  }) {
    return accept?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AcceptBidStateInitial value) initial,
    required TResult Function(_AcceptBidStateLoading value) loading,
    required TResult Function(_AcceptBidStateAccept value) accept,
    required TResult Function(_AcceptBidStateError value) error,
  }) {
    return accept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptBidStateInitial value)? initial,
    TResult? Function(_AcceptBidStateLoading value)? loading,
    TResult? Function(_AcceptBidStateAccept value)? accept,
    TResult? Function(_AcceptBidStateError value)? error,
  }) {
    return accept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptBidStateInitial value)? initial,
    TResult Function(_AcceptBidStateLoading value)? loading,
    TResult Function(_AcceptBidStateAccept value)? accept,
    TResult Function(_AcceptBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (accept != null) {
      return accept(this);
    }
    return orElse();
  }
}

abstract class _AcceptBidStateAccept extends AcceptBidState {
  const factory _AcceptBidStateAccept() = _$AcceptBidStateAcceptImpl;
  const _AcceptBidStateAccept._() : super._();
}

/// @nodoc
abstract class _$$AcceptBidStateErrorImplCopyWith<$Res> {
  factory _$$AcceptBidStateErrorImplCopyWith(_$AcceptBidStateErrorImpl value,
          $Res Function(_$AcceptBidStateErrorImpl) then) =
      __$$AcceptBidStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AcceptBidStateErrorImplCopyWithImpl<$Res>
    extends _$AcceptBidStateCopyWithImpl<$Res, _$AcceptBidStateErrorImpl>
    implements _$$AcceptBidStateErrorImplCopyWith<$Res> {
  __$$AcceptBidStateErrorImplCopyWithImpl(_$AcceptBidStateErrorImpl _value,
      $Res Function(_$AcceptBidStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AcceptBidStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptBidStateErrorImpl extends _AcceptBidStateError {
  const _$AcceptBidStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AcceptBidState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptBidStateErrorImplCopyWith<_$AcceptBidStateErrorImpl> get copyWith =>
      __$$AcceptBidStateErrorImplCopyWithImpl<_$AcceptBidStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() accept,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? accept,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? accept,
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
    required TResult Function(_AcceptBidStateInitial value) initial,
    required TResult Function(_AcceptBidStateLoading value) loading,
    required TResult Function(_AcceptBidStateAccept value) accept,
    required TResult Function(_AcceptBidStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AcceptBidStateInitial value)? initial,
    TResult? Function(_AcceptBidStateLoading value)? loading,
    TResult? Function(_AcceptBidStateAccept value)? accept,
    TResult? Function(_AcceptBidStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AcceptBidStateInitial value)? initial,
    TResult Function(_AcceptBidStateLoading value)? loading,
    TResult Function(_AcceptBidStateAccept value)? accept,
    TResult Function(_AcceptBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AcceptBidStateError extends AcceptBidState {
  const factory _AcceptBidStateError(final String message) =
      _$AcceptBidStateErrorImpl;
  const _AcceptBidStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$AcceptBidStateErrorImplCopyWith<_$AcceptBidStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SentBidState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SentBidStateInitial value) initial,
    required TResult Function(_SentBidStateLoading value) loading,
    required TResult Function(SentBidStateFetch value) fetch,
    required TResult Function(_SentBidStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentBidStateInitial value)? initial,
    TResult? Function(_SentBidStateLoading value)? loading,
    TResult? Function(SentBidStateFetch value)? fetch,
    TResult? Function(_SentBidStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentBidStateInitial value)? initial,
    TResult Function(_SentBidStateLoading value)? loading,
    TResult Function(SentBidStateFetch value)? fetch,
    TResult Function(_SentBidStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentBidStateCopyWith<$Res> {
  factory $SentBidStateCopyWith(
          SentBidState value, $Res Function(SentBidState) then) =
      _$SentBidStateCopyWithImpl<$Res, SentBidState>;
}

/// @nodoc
class _$SentBidStateCopyWithImpl<$Res, $Val extends SentBidState>
    implements $SentBidStateCopyWith<$Res> {
  _$SentBidStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SentBidStateInitialImplCopyWith<$Res> {
  factory _$$SentBidStateInitialImplCopyWith(_$SentBidStateInitialImpl value,
          $Res Function(_$SentBidStateInitialImpl) then) =
      __$$SentBidStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentBidStateInitialImplCopyWithImpl<$Res>
    extends _$SentBidStateCopyWithImpl<$Res, _$SentBidStateInitialImpl>
    implements _$$SentBidStateInitialImplCopyWith<$Res> {
  __$$SentBidStateInitialImplCopyWithImpl(_$SentBidStateInitialImpl _value,
      $Res Function(_$SentBidStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SentBidStateInitialImpl extends _SentBidStateInitial {
  const _$SentBidStateInitialImpl() : super._();

  @override
  String toString() {
    return 'SentBidState.initial()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_SentBidStateInitial value) initial,
    required TResult Function(_SentBidStateLoading value) loading,
    required TResult Function(SentBidStateFetch value) fetch,
    required TResult Function(_SentBidStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentBidStateInitial value)? initial,
    TResult? Function(_SentBidStateLoading value)? loading,
    TResult? Function(SentBidStateFetch value)? fetch,
    TResult? Function(_SentBidStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentBidStateInitial value)? initial,
    TResult Function(_SentBidStateLoading value)? loading,
    TResult Function(SentBidStateFetch value)? fetch,
    TResult Function(_SentBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SentBidStateInitial extends SentBidState {
  const factory _SentBidStateInitial() = _$SentBidStateInitialImpl;
  const _SentBidStateInitial._() : super._();
}

/// @nodoc
abstract class _$$SentBidStateLoadingImplCopyWith<$Res> {
  factory _$$SentBidStateLoadingImplCopyWith(_$SentBidStateLoadingImpl value,
          $Res Function(_$SentBidStateLoadingImpl) then) =
      __$$SentBidStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentBidStateLoadingImplCopyWithImpl<$Res>
    extends _$SentBidStateCopyWithImpl<$Res, _$SentBidStateLoadingImpl>
    implements _$$SentBidStateLoadingImplCopyWith<$Res> {
  __$$SentBidStateLoadingImplCopyWithImpl(_$SentBidStateLoadingImpl _value,
      $Res Function(_$SentBidStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SentBidStateLoadingImpl extends _SentBidStateLoading {
  const _$SentBidStateLoadingImpl() : super._();

  @override
  String toString() {
    return 'SentBidState.loading()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_SentBidStateInitial value) initial,
    required TResult Function(_SentBidStateLoading value) loading,
    required TResult Function(SentBidStateFetch value) fetch,
    required TResult Function(_SentBidStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentBidStateInitial value)? initial,
    TResult? Function(_SentBidStateLoading value)? loading,
    TResult? Function(SentBidStateFetch value)? fetch,
    TResult? Function(_SentBidStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentBidStateInitial value)? initial,
    TResult Function(_SentBidStateLoading value)? loading,
    TResult Function(SentBidStateFetch value)? fetch,
    TResult Function(_SentBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SentBidStateLoading extends SentBidState {
  const factory _SentBidStateLoading() = _$SentBidStateLoadingImpl;
  const _SentBidStateLoading._() : super._();
}

/// @nodoc
abstract class _$$SentBidStateFetchImplCopyWith<$Res> {
  factory _$$SentBidStateFetchImplCopyWith(_$SentBidStateFetchImpl value,
          $Res Function(_$SentBidStateFetchImpl) then) =
      __$$SentBidStateFetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BidModel> bids});
}

/// @nodoc
class __$$SentBidStateFetchImplCopyWithImpl<$Res>
    extends _$SentBidStateCopyWithImpl<$Res, _$SentBidStateFetchImpl>
    implements _$$SentBidStateFetchImplCopyWith<$Res> {
  __$$SentBidStateFetchImplCopyWithImpl(_$SentBidStateFetchImpl _value,
      $Res Function(_$SentBidStateFetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bids = null,
  }) {
    return _then(_$SentBidStateFetchImpl(
      null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<BidModel>,
    ));
  }
}

/// @nodoc

class _$SentBidStateFetchImpl extends SentBidStateFetch {
  const _$SentBidStateFetchImpl(final List<BidModel> bids)
      : _bids = bids,
        super._();

  final List<BidModel> _bids;
  @override
  List<BidModel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  String toString() {
    return 'SentBidState.fetch(bids: $bids)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentBidStateFetchImplCopyWith<_$SentBidStateFetchImpl> get copyWith =>
      __$$SentBidStateFetchImplCopyWithImpl<_$SentBidStateFetchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return fetch(bids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return fetch?.call(bids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(bids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SentBidStateInitial value) initial,
    required TResult Function(_SentBidStateLoading value) loading,
    required TResult Function(SentBidStateFetch value) fetch,
    required TResult Function(_SentBidStateError value) error,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentBidStateInitial value)? initial,
    TResult? Function(_SentBidStateLoading value)? loading,
    TResult? Function(SentBidStateFetch value)? fetch,
    TResult? Function(_SentBidStateError value)? error,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentBidStateInitial value)? initial,
    TResult Function(_SentBidStateLoading value)? loading,
    TResult Function(SentBidStateFetch value)? fetch,
    TResult Function(_SentBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class SentBidStateFetch extends SentBidState {
  const factory SentBidStateFetch(final List<BidModel> bids) =
      _$SentBidStateFetchImpl;
  const SentBidStateFetch._() : super._();

  List<BidModel> get bids;
  @JsonKey(ignore: true)
  _$$SentBidStateFetchImplCopyWith<_$SentBidStateFetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SentBidStateErrorImplCopyWith<$Res> {
  factory _$$SentBidStateErrorImplCopyWith(_$SentBidStateErrorImpl value,
          $Res Function(_$SentBidStateErrorImpl) then) =
      __$$SentBidStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SentBidStateErrorImplCopyWithImpl<$Res>
    extends _$SentBidStateCopyWithImpl<$Res, _$SentBidStateErrorImpl>
    implements _$$SentBidStateErrorImplCopyWith<$Res> {
  __$$SentBidStateErrorImplCopyWithImpl(_$SentBidStateErrorImpl _value,
      $Res Function(_$SentBidStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SentBidStateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SentBidStateErrorImpl extends _SentBidStateError {
  const _$SentBidStateErrorImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SentBidState.error(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentBidStateErrorImplCopyWith<_$SentBidStateErrorImpl> get copyWith =>
      __$$SentBidStateErrorImplCopyWithImpl<_$SentBidStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BidModel> bids) fetch,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BidModel> bids)? fetch,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BidModel> bids)? fetch,
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
    required TResult Function(_SentBidStateInitial value) initial,
    required TResult Function(_SentBidStateLoading value) loading,
    required TResult Function(SentBidStateFetch value) fetch,
    required TResult Function(_SentBidStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SentBidStateInitial value)? initial,
    TResult? Function(_SentBidStateLoading value)? loading,
    TResult? Function(SentBidStateFetch value)? fetch,
    TResult? Function(_SentBidStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SentBidStateInitial value)? initial,
    TResult Function(_SentBidStateLoading value)? loading,
    TResult Function(SentBidStateFetch value)? fetch,
    TResult Function(_SentBidStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SentBidStateError extends SentBidState {
  const factory _SentBidStateError(final String message) =
      _$SentBidStateErrorImpl;
  const _SentBidStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$SentBidStateErrorImplCopyWith<_$SentBidStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
