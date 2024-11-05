// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorStatsImpl _$$AuthorStatsImplFromJson(Map<String, dynamic> json) =>
    _$AuthorStatsImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$AuthorStatsImplToJson(_$AuthorStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'count': instance.count,
    };
