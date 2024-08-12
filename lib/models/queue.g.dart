// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueueImpl _$$QueueImplFromJson(Map<String, dynamic> json) => _$QueueImpl(
      itemId: json['itemId'] as String,
      title: json['title'] as String,
      episodeId: json['episodeId'] as String?,
    );

Map<String, dynamic> _$$QueueImplToJson(_$QueueImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'title': instance.title,
      'episodeId': instance.episodeId,
    };
