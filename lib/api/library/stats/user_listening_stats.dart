import 'package:abs_flutter/api/library/stats/days_of_week.dart';
import 'package:abs_flutter/api/library/stats/items_listened_to.dart';
import 'package:abs_flutter/api/library_items/playback_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_listening_stats.freezed.dart';
part 'user_listening_stats.g.dart';

@freezed
class UserListeningStats with _$UserListeningStats {
  const factory UserListeningStats({
    @JsonKey(name: "totalTime") double? totalTime,
    @JsonKey(name: "items") Map<String, ItemsListenedTo>? items,
    @JsonKey(name: "days") Map<String, double>? days,
    @JsonKey(name: "dayOfWeek") DaysOfWeek? dayOfWeek,
    @JsonKey(name: "today") double? today,
    @JsonKey(name: "recentSessions") List<PlaybackSession>? recentSessions,
  }) = _UserListeningStats;

  factory UserListeningStats.fromJson(Map<String, dynamic> json) =>
      _$UserListeningStatsFromJson(json);
}
