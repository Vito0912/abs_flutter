import 'package:abs_flutter/api/library_items/series.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_items.freezed.dart';
part 'series_items.g.dart';

@freezed
class SeriesItems with _$SeriesItems {
  const factory SeriesItems({
    @JsonKey(name: "results") required List<Series> results,
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "limit") int? limit,
    @JsonKey(name: "sortBy") String? sortBy,
    @JsonKey(name: "sortDesc") bool? sortDesc,
    @JsonKey(name: "filterBy") String? filterBy,
  }) = _SeriesItems;

  factory SeriesItems.fromJson(Map<String, dynamic> json) =>
      _$SeriesItemsFromJson(json);
}
