// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaylistResponseImpl _$$PlaylistResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaylistResponseImpl(
      items: (json['playlists'] as List<dynamic>)
          .map((e) => Playlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaylistResponseImplToJson(
        _$PlaylistResponseImpl instance) =>
    <String, dynamic>{
      'playlists': instance.items,
    };
