// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      uid: json['uid'] as String,
      profilePic: json['profilePic'] as String?,
      description: json['description'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'uid': instance.uid,
      'profilePic': instance.profilePic,
      'description': instance.description,
      'deviceToken': instance.deviceToken,
    };
