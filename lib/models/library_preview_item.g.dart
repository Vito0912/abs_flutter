// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_preview_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryPreviewItemImpl _$$LibraryPreviewItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryPreviewItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      mediaType: json['mediaType'] as String,
      episodeId: json['episodeId'] as String?,
      seriesLabel: json['seriesLabel'] as String?,
      seriesName: json['seriesName'] as String?,
      hasBook: json['hasBook'] as bool?,
      hasAudio: json['hasAudio'] as bool?,
      collapsedSeries: json['collapsedSeries'] == null
          ? null
          : CollapsedSeries.fromJson(
              json['collapsedSeries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LibraryPreviewItemImplToJson(
        _$LibraryPreviewItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'mediaType': instance.mediaType,
      'episodeId': instance.episodeId,
      'seriesLabel': instance.seriesLabel,
      'seriesName': instance.seriesName,
      'hasBook': instance.hasBook,
      'hasAudio': instance.hasAudio,
      'collapsedSeries': instance.collapsedSeries,
    };
