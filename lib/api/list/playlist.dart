import 'package:abs_flutter/api/list/playlist_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist.freezed.dart';
part 'playlist.g.dart';

@freezed
class Playlist with _$Playlist {
  const factory Playlist({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "libraryId") required String libraryId,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "items") List<PlaylistItem>? items,
    @JsonKey(name: "lastUpdate") required int lastUpdate,
    @JsonKey(name: "createdAt") required int createdAt,
  }) = _Playlist;

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      _$PlaylistFromJson(json);
}
