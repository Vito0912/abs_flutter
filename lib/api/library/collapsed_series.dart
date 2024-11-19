import 'package:freezed_annotation/freezed_annotation.dart';

part 'collapsed_series.freezed.dart';
part 'collapsed_series.g.dart';

@freezed
class CollapsedSeries with _$CollapsedSeries {
  const factory CollapsedSeries({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
    @JsonKey(name: "sequence") String? sequence,
    @JsonKey(name: "numBooks") int? numBooks,
    @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds,
  }) = _CollapsedSeries;

  factory CollapsedSeries.fromJson(Map<String, dynamic> json) =>
      _$CollapsedSeriesFromJson(json);
}
