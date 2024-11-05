import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item_duration_stats.freezed.dart';
part 'library_item_duration_stats.g.dart';

@freezed
class LibraryItemDurationStats with _$LibraryItemDurationStats {
  const factory LibraryItemDurationStats({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "duration") required double duration,
    @JsonKey(name: "title") required String title,
  }) = _LibraryItemDurationStats;

  factory LibraryItemDurationStats.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemDurationStatsFromJson(json);
}
