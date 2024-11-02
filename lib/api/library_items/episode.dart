import 'package:abs_flutter/api/library_items/audio_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode.freezed.dart';
part 'episode.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "index") int? index,
    @JsonKey(name: "season") String? season,
    @JsonKey(name: "episode") String? episode,
    @JsonKey(name: "episodeType") String? episodeType,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "subtitle") String? subtitle,
    @JsonKey(name: "description") String? description,
    //TODO: PodcastEnclosure
    @JsonKey(name: "pubDate") String? pubDate,
    @JsonKey(name: "audioFile") AudioFile? audioFile,
    @JsonKey(name: "publishedAt") int? publishedAt,
    @JsonKey(name: "addedAt") int? addedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}
