// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeImpl _$$EpisodeImplFromJson(Map<String, dynamic> json) =>
    _$EpisodeImpl(
      libraryItemId: json['libraryItemId'] as String,
      id: json['id'] as String,
      index: (json['index'] as num?)?.toInt(),
      season: json['season'] as String?,
      episode: json['episode'] as String?,
      episodeType: json['episodeType'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      description: json['description'] as String?,
      pubDate: json['pubDate'] as String?,
      audioFile: json['audioFile'] == null
          ? null
          : AudioFile.fromJson(json['audioFile'] as Map<String, dynamic>),
      publishedAt: (json['publishedAt'] as num?)?.toInt(),
      addedAt: (json['addedAt'] as num?)?.toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EpisodeImplToJson(_$EpisodeImpl instance) =>
    <String, dynamic>{
      'libraryItemId': instance.libraryItemId,
      'id': instance.id,
      'index': instance.index,
      'season': instance.season,
      'episode': instance.episode,
      'episodeType': instance.episodeType,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'pubDate': instance.pubDate,
      'audioFile': instance.audioFile,
      'publishedAt': instance.publishedAt,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
    };
