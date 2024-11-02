import 'dart:developer' as dev;

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final logProvider =
    StateNotifierProvider<LogNotifier, UnmodifiableListView<Log>>((ref) {
  return LogNotifier();
});

class LogNotifier extends StateNotifier<UnmodifiableListView<Log>> {
  LogNotifier() : super(UnmodifiableListView([]));

  void addLog(Log log) {
    final List<Log> updatedLogs;
    if (state.length >= 1000) {
      updatedLogs = List<Log>.unmodifiable([log, ...state.take(999)]);
    } else {
      updatedLogs = List<Log>.unmodifiable([log, ...state]);
    }
    state = UnmodifiableListView(updatedLogs);
  }

  void clearLogs() {
    state = UnmodifiableListView([]);
  }
}

class Log {
  final String message;
  final String name;
  final DateTime time;
  final LogLevel level;

  const Log({
    required this.message,
    required this.name,
    required this.time,
    required this.level,
  });
}

enum LogLevel {
  debug,
  info,
  warning,
  error,
}

void log(String message, {String? name, LogLevel level = LogLevel.info}) {
  final currentTime = DateTime.now();
  final logEntry = Log(
    message: message,
    name: name ?? 'Unnamed',
    time: currentTime,
    level: level,
  );

  final loggingEnabled =
      provContainer.read(settingsProvider)[Constants.LOGGING_ENABLED];

  if (loggingEnabled != null && !loggingEnabled) return;

  Future.microtask(() {
    dev.log(message, name: name ?? 'Log', time: currentTime);
    provContainer.read(logProvider.notifier).addLog(logEntry);
  });
}
