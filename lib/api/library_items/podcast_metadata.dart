import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_metadata.freezed.dart';
part 'podcast_metadata.g.dart';

@freezed
class PodcastMetadata with _$PodcastMetadata {
  const factory PodcastMetadata({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "releaseDate") String? releaseDate,
    @JsonKey(name: "genres") List<String>? genres,
    @JsonKey(name: "feedUrl") String? feedUrl,
    @JsonKey(name: "imageUrl") String? imageUrl,
    @JsonKey(name: "itunesPageUrl") String? itunesPageUrl,
    @JsonKey(name: "itunesId") String? itunesId,
    @JsonKey(name: "itunesArtistId") String? itunesArtistId,
    @JsonKey(name: "explicit") bool? explicit,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "titleIgnorePrefix") String? titleIgnorePrefix,
  }) = _PodcastMetadata;

  factory PodcastMetadata.fromJson(Map<String, dynamic> json) =>
      _$PodcastMetadataFromJson(json);
}
