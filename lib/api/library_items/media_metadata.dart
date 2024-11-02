import 'package:abs_flutter/api/library_items/author.dart';
import 'package:abs_flutter/api/library_items/series.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_metadata.freezed.dart';
part 'media_metadata.g.dart';

@freezed
class MediaMetadata with _$MediaMetadata {
  const factory MediaMetadata({
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "subtitle") String? subtitle,
    @JsonKey(name: "authors") List<Author>? authors,
    @JsonKey(name: "narrators") List<String>? narrators,
    @JsonKey(name: "series") List<Series>? series,
    @JsonKey(name: "genres") List<String>? genres,
    @JsonKey(name: "publishedYear") String? publishedYear,
    @JsonKey(name: "publishedDate") String? publishedDate,
    @JsonKey(name: "publisher") String? publisher,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "isbn") String? isbn,
    @JsonKey(name: "asin") String? asin,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "explicit") bool? explicit,
    @JsonKey(name: "abridged") bool? abridged,
  }) = _MediaMetadata;

  factory MediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataFromJson(json);
}
