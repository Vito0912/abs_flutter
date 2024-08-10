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

@freezed
class History with _$History {
  const History._();

  const factory History({
    required DateTime date,
    required HistoryType type,
    required double position,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}

@freezed
class HistoryView with _$HistoryView {
  const factory HistoryView({
    required HistoryType type,
    required List<History> histories,
  }) = _HistoryView;

  const HistoryView._();

  History get first => histories.first;

  History get last => histories.last;

  bool get isCompressed => histories.length > 1;

  factory HistoryView.fromJson(Map<String, dynamic> json) => _$HistoryViewFromJson(json);

  factory HistoryView.fromHistories(List<History> histories) {
    return HistoryView(
      type: histories.first.type,
      histories: histories,
    );
  }
}