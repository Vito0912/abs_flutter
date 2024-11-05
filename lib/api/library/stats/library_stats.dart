import 'package:abs_flutter/api/library/stats/author_stats.dart';
import 'package:abs_flutter/api/library/stats/genre_stats.dart';
import 'package:abs_flutter/api/library/stats/library_item_duration_stats.dart';
import 'package:abs_flutter/api/library/stats/library_item_size_stats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_stats.freezed.dart';
part 'library_stats.g.dart';

@freezed
class LibraryStats with _$LibraryStats {
  const factory LibraryStats({
    @JsonKey(name: "totalItems") int? totalItems,
    @JsonKey(name: "totalAuthors") int? totalAuthors,
    @JsonKey(name: "totalGenres") int? totalGenres,
    @JsonKey(name: "totalDuration") double? totalDuration,
    @JsonKey(name: "longestItems") List<LibraryItemDurationStats>? longestItems,
    @JsonKey(name: "numAudioTracks") int? numAudioTracks,
    @JsonKey(name: "totalSize") int? totalSize,
    @JsonKey(name: "largestItems") List<LibraryItemSizeStats>? largestItems,
    @JsonKey(name: "authorsWithCount") List<AuthorStats>? authorsWithCount,
    @JsonKey(name: "genresWithCount") List<GenreStats>? genresWithCount,
  }) = _LibraryStats;

  factory LibraryStats.fromJson(Map<String, dynamic> json) =>
      _$LibraryStatsFromJson(json);
}
