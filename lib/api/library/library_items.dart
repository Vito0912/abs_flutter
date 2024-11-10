import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_items.freezed.dart';
part 'library_items.g.dart';

@freezed
class LibraryItems with _$LibraryItems {
  const factory LibraryItems({
    @JsonKey(name: "results") required List<LibraryItem> results,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "limit") required int limit,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "sortBy") required String sortBy,
    @JsonKey(name: "sortDesc") required bool sortDesc,
    @JsonKey(name: "mediaType") required MediaType mediaType,
    @JsonKey(name: "minified") required bool minified,
    @JsonKey(name: "collapseseries") required bool collapseseries,
    @JsonKey(name: "include") required String include,
    @JsonKey(name: "offset") required int offset,
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
