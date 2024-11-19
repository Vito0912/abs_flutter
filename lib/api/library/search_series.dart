import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/library_items/series.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_series.freezed.dart';
part 'search_series.g.dart';

@freezed
class SearchSeries with _$SearchSeries {
  const factory SearchSeries({
    @JsonKey(name: "series") required Series series,
    @JsonKey(name: "books") required List<LibraryItem> books,
  }) = _SearchSeries;

  factory SearchSeries.fromJson(Map<String, dynamic> json) =>
      _$SearchSeriesFromJson(json);
}
