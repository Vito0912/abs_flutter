import 'package:abs_flutter/api/library_items/episode.dart';
import 'package:abs_flutter/api/library_items/podcast_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_media.freezed.dart';
part 'podcast_media.g.dart';

@freezed
class PodcastMedia with _$PodcastMedia {
  const factory PodcastMedia({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "metadata") required PodcastMetadata metadata,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "tags") List<String>? tags,
    @JsonKey(name: "episodes") List<Episode>? episodes,
    @JsonKey(name: "autoDownloadEpisodes") bool? autoDownloadEpisodes,
    @JsonKey(name: "autoDownloadSchedule") String? autoDownloadSchedule,
    @JsonKey(name: "lastEpisodeCheck") int? lastEpisodeCheck,
    @JsonKey(name: "maxEpisodesToKeep") int? maxEpisodesToKeep,
    @JsonKey(name: "maxNewEpisodesToDownload") int? maxNewEpisodesToDownload,
  }) = _PodcastMedia;

  factory PodcastMedia.fromJson(Map<String, dynamic> json) =>
      _$PodcastMediaFromJson(json);
}
