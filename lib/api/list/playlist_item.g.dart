// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistItemImpl _$$PlaylistItemImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistItemImpl(
      itemId: json['libraryItemId'] as String,
      episodeId: json['episodeId'] as String?,
      episode: json['episode'] == null
          ? null
          : Episode.fromJson(json['episode'] as Map<String, dynamic>),
      libraryItem: json['libraryItem'] == null
          ? null
          : LibraryItem.fromJson(json['libraryItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaylistItemImplToJson(_$PlaylistItemImpl instance) =>
    <String, dynamic>{
      'libraryItemId': instance.itemId,
      'episodeId': instance.episodeId,
      'episode': instance.episode,
      'libraryItem': instance.libraryItem,
    };
