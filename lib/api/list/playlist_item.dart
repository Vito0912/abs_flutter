import 'package:abs_flutter/api/library_items/episode.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_item.freezed.dart';
part 'playlist_item.g.dart';

@freezed
class PlaylistItem with _$PlaylistItem {
  const factory PlaylistItem({
    @JsonKey(name: "libraryItemId") required String itemId,
    @JsonKey(name: "episodeId") String? episodeId,
    @JsonKey(name: "episode") Episode? episode,
    @JsonKey(name: "libraryItem") LibraryItem? libraryItem,
  }) = _PlaylistItem;

  factory PlaylistItem.fromJson(Map<String, dynamic> json) =>
      _$PlaylistItemFromJson(json);
}
