// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidModelImpl _$$BidModelImplFromJson(Map<String, dynamic> json) =>
    _$BidModelImpl(
      id: json['id'] as String?,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: json['status'] as String,
      rate: (json['rate'] as num).toDouble(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BidModelImplToJson(_$BidModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': instance.status,
      'rate': instance.rate,
      'tags': instance.tags,
    };
