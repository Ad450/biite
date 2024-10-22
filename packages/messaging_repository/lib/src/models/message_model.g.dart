// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: json['id'] as String?,
      roomId: json['roomId'] as String,
      ownerId: json['ownerId'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String,
      isRight: json['isRight'] as bool?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roomId': instance.roomId,
      'ownerId': instance.ownerId,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': instance.status,
      'isRight': instance.isRight,
    };
