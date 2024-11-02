// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaImpl _$$MediaImplFromJson(Map<String, dynamic> json) => _$MediaImpl(
      podcastMedia: json['podcastMedia'] == null
          ? null
          : PodcastMedia.fromJson(json['podcastMedia'] as Map<String, dynamic>),
      bookMedia: json['bookMedia'] == null
          ? null
          : BookMedia.fromJson(json['bookMedia'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MediaImplToJson(_$MediaImpl instance) =>
    <String, dynamic>{
      'podcastMedia': instance.podcastMedia,
      'bookMedia': instance.bookMedia,
    };
