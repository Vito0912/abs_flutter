import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_items.freezed.dart';
part 'library_items.g.dart';

@freezed
class LibraryItems with _$LibraryItems {
  const factory LibraryItems({
    @JsonKey(name: "results") required List<LibraryItem> results,
    @JsonKey(name: "total") int? total,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "sortBy") String? sortBy,
    @JsonKey(name: "sortDesc") bool? sortDesc,
    @JsonKey(name: "filterBy") String? filterBy,
    @JsonKey(name: "mediaType") MediaType? mediaType,
    @JsonKey(name: "minified") bool? minified,
    @JsonKey(name: "collapseseries") bool? collapseseries,
    @JsonKey(name: "include") String? include,
    @JsonKey(name: "offset") int? offset,
  }) = _LibraryItems;

  factory LibraryItems.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemsFromJson(json);
}

enum MediaType {
  @JsonValue("book")
  BOOK,
  @JsonValue("podcast")
  PODCAST
}
