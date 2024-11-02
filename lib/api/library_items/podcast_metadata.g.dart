// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PodcastMetadataImpl _$$PodcastMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$PodcastMetadataImpl(
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      releaseDate: json['releaseDate'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      feedUrl: json['feedUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      itunesPageUrl: json['itunesPageUrl'] as String?,
      itunesId: json['itunesId'] as String?,
      itunesArtistId: json['itunesArtistId'] as String?,
      explicit: json['explicit'] as bool?,
      language: json['language'] as String?,
      type: json['type'] as String?,
      titleIgnorePrefix: json['titleIgnorePrefix'] as String?,
    );

Map<String, dynamic> _$$PodcastMetadataImplToJson(
        _$PodcastMetadataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'releaseDate': instance.releaseDate,
      'genres': instance.genres,
      'feedUrl': instance.feedUrl,
      'imageUrl': instance.imageUrl,
      'itunesPageUrl': instance.itunesPageUrl,
      'itunesId': instance.itunesId,
      'itunesArtistId': instance.itunesArtistId,
      'explicit': instance.explicit,
      'language': instance.language,
      'type': instance.type,
      'titleIgnorePrefix': instance.titleIgnorePrefix,
    };
