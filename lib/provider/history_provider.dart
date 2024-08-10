import 'package:abs_flutter/models/history.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HistoryNotifier extends StateNotifier<List<History>> {
  HistoryNotifier() : super([]);

  void addHistory(HistoryType type, double position) {
    state = [
      ...state,
      History(date: DateTime.now(), type: type, position: position)
    ];
  }

  void addAllHistory(List<History> histories) {
    state = [...state, ...histories];
  }

  void removeHistory(History history) {
    state = state.where((h) => h != history).toList();
  }

  void sortHistory() {
    state.sort((a, b) => a.date.compareTo(b.date));
    state = [...state];
  }

  void clearHistory() {
    state = [];
  }
}

final historyProviderFamily =
    StateNotifierProvider.family<HistoryNotifier, List<History>, String>(
  (ref, itemId) {
    return HistoryNotifier();
  },
);
