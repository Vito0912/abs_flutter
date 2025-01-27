import 'package:abs_flutter/api/list/playlist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_response.freezed.dart';
part 'playlist_response.g.dart';

@freezed
class PlaylistResponse with _$PlaylistResponse {
  const factory PlaylistResponse({
    @JsonKey(name: "playlists") required List<Playlist> playlists,
  }) = _PlaylistResponse;

  factory PlaylistResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaylistResponseFromJson(json);
}
