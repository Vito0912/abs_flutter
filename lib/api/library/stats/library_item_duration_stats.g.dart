// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_duration_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemDurationStatsImpl _$$LibraryItemDurationStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryItemDurationStatsImpl(
      id: json['id'] as String,
      duration: (json['duration'] as num).toDouble(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$LibraryItemDurationStatsImplToJson(
        _$LibraryItemDurationStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration,
      'title': instance.title,
    };
