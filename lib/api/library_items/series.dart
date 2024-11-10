import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  const factory Series({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "sequence") String? sequence,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "addedAt") int? addedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
    @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
    @JsonKey(name: "nameIgnorePrefixSort") String? nameIgnorePrefixSort,
    @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds,
    @JsonKey(name: "numBooks") int? numBooks,
    @JsonKey(name: "books") List<LibraryItem>? books,
    @JsonKey(name: "totalDuration") double? totalDuration,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
}
