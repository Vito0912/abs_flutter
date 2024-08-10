import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'history.freezed.dart';

part 'history.g.dart';

enum HistoryType {
  chapterSwitch,
  play,
  pause,
  stop,
  sync, unknown, seek
}

@unfreezed
class History with _$History {
  History._();

  factory History({
    required DateTime date,
    required HistoryType type,
    required double position,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}