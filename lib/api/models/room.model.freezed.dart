// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  String? get id => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get peerId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get peerName => throw _privateConstructorUsedError;
  String? get latestMessageText => throw _privateConstructorUsedError;
  String? get peerProfilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {String? id,
      String ownerId,
      String peerId,
      DateTime? createdAt,
      String peerName,
      String? latestMessageText,
      String? peerProfilePic});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = null,
    Object? peerId = null,
    Object? createdAt = freezed,
    Object? peerName = null,
    Object? latestMessageText = freezed,
    Object? peerProfilePic = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      peerName: null == peerName
          ? _value.peerName
          : peerName // ignore: cast_nullable_to_non_nullable
              as String,
      latestMessageText: freezed == latestMessageText
          ? _value.latestMessageText
          : latestMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      peerProfilePic: freezed == peerProfilePic
          ? _value.peerProfilePic
          : peerProfilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String ownerId,
      String peerId,
      DateTime? createdAt,
      String peerName,
      String? latestMessageText,
      String? peerProfilePic});
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = null,
    Object? peerId = null,
    Object? createdAt = freezed,
    Object? peerName = null,
    Object? latestMessageText = freezed,
    Object? peerProfilePic = freezed,
  }) {
    return _then(_$RoomModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      peerId: null == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      peerName: null == peerName
          ? _value.peerName
          : peerName // ignore: cast_nullable_to_non_nullable
              as String,
      latestMessageText: freezed == latestMessageText
          ? _value.latestMessageText
          : latestMessageText // ignore: cast_nullable_to_non_nullable
              as String?,
      peerProfilePic: freezed == peerProfilePic
          ? _value.peerProfilePic
          : peerProfilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomModelImpl implements _RoomModel {
  _$RoomModelImpl(
      {this.id,
      required this.ownerId,
      required this.peerId,
      this.createdAt,
      required this.peerName,
      this.latestMessageText,
      this.peerProfilePic});

  factory _$RoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String ownerId;
  @override
  final String peerId;
  @override
  final DateTime? createdAt;
  @override
  final String peerName;
  @override
  final String? latestMessageText;
  @override
  final String? peerProfilePic;

  @override
  String toString() {
    return 'RoomModel(id: $id, ownerId: $ownerId, peerId: $peerId, createdAt: $createdAt, peerName: $peerName, latestMessageText: $latestMessageText, peerProfilePic: $peerProfilePic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.peerId, peerId) || other.peerId == peerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.peerName, peerName) ||
                other.peerName == peerName) &&
            (identical(other.latestMessageText, latestMessageText) ||
                other.latestMessageText == latestMessageText) &&
            (identical(other.peerProfilePic, peerProfilePic) ||
                other.peerProfilePic == peerProfilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ownerId, peerId, createdAt,
      peerName, latestMessageText, peerProfilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomModelImplToJson(
      this,
    );
  }
}

abstract class _RoomModel implements RoomModel {
  factory _RoomModel(
      {final String? id,
      required final String ownerId,
      required final String peerId,
      final DateTime? createdAt,
      required final String peerName,
      final String? latestMessageText,
      final String? peerProfilePic}) = _$RoomModelImpl;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$RoomModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get ownerId;
  @override
  String get peerId;
  @override
  DateTime? get createdAt;
  @override
  String get peerName;
  @override
  String? get latestMessageText;
  @override
  String? get peerProfilePic;
  @override
  @JsonKey(ignore: true)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
