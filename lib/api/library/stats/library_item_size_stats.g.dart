// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_size_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemSizeStatsImpl _$$LibraryItemSizeStatsImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryItemSizeStatsImpl(
      id: json['id'] as String,
      size: (json['size'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$LibraryItemSizeStatsImplToJson(
        _$LibraryItemSizeStatsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'size': instance.size,
      'title': instance.title,
    };
