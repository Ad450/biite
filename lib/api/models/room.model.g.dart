// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomModelImpl _$$RoomModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomModelImpl(
      id: json['id'] as String?,
      ownerId: json['ownerId'] as String,
      peerId: json['peerId'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      peerName: json['peerName'] as String,
      latestMessageText: json['latestMessageText'] as String?,
      peerProfilePic: json['peerProfilePic'] as String?,
    );

Map<String, dynamic> _$$RoomModelImplToJson(_$RoomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'peerId': instance.peerId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'peerName': instance.peerName,
      'latestMessageText': instance.latestMessageText,
      'peerProfilePic': instance.peerProfilePic,
    };
