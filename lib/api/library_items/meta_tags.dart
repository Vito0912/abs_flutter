import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_tags.freezed.dart';
part 'meta_tags.g.dart';

@freezed
class MetaTags with _$MetaTags {
  const factory MetaTags({
    @JsonKey(name: "tagAlbum") String? tagAlbum,
    @JsonKey(name: "tagAlbumSort") String? tagAlbumSort,
    @JsonKey(name: "tagArtist") String? tagArtist,
    @JsonKey(name: "tagArtistSort") String? tagArtistSort,
    @JsonKey(name: "tagGenre") String? tagGenre,
    @JsonKey(name: "tagTitle") String? tagTitle,
    @JsonKey(name: "tagTitleSort") String? tagTitleSort,
    @JsonKey(name: "tagSeries") String? tagSeries,
    @JsonKey(name: "tagSeriesPart") String? tagSeriesPart,
    @JsonKey(name: "tagTrack") String? tagTrack,
    @JsonKey(name: "tagDisc") String? tagDisc,
    @JsonKey(name: "tagDate") String? tagDate,
    @JsonKey(name: "tagComment") String? tagComment,
    @JsonKey(name: "tagEncoder") String? tagEncoder,
    @JsonKey(name: "tagLanguage") String? tagLanguage,
    @JsonKey(name: "tagItunesId") String? tagItunesId,
    @JsonKey(name: "tagPodcastType") String? tagPodcastType,
  }) = _MetaTags;

  factory MetaTags.fromJson(Map<String, dynamic> json) =>
      _$MetaTagsFromJson(json);
}
