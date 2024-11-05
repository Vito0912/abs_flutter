import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_stats.freezed.dart';
part 'genre_stats.g.dart';

@freezed
class GenreStats with _$GenreStats {
  const factory GenreStats({
    @JsonKey(name: "genre") required String genre,
    @JsonKey(name: "count") required int count,
  }) = _GenreStats;

  factory GenreStats.fromJson(Map<String, dynamic> json) =>
      _$GenreStatsFromJson(json);
}
