// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      id: json['id'] as String?,
      ownerId: json['ownerId'] as String,
      assignedTo: json['assignedTo'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String,
      rate: (json['rate'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      files: (json['files'] as List<dynamic>).map((e) => e as String).toList(),
      propositionCount: (json['propositionCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ownerId': instance.ownerId,
      'assignedTo': instance.assignedTo,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': instance.status,
      'rate': instance.rate,
      'tags': instance.tags,
      'files': instance.files,
      'propositionCount': instance.propositionCount,
    };
