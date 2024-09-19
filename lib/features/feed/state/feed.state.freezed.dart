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
