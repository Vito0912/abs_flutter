import 'dart:async';
import 'dart:convert';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/history_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final progressTimerProvider = StateNotifierProvider<TimerNotifier, DateTime?>(
  (ref) => TimerNotifier(ref),
);

class TimerNotifier extends StateNotifier<DateTime?> {
  final Ref ref;
  Timer? _timer;
  DateTime? _lastSentTimestamp;

  TimerNotifier(this.ref) : super(null);

  void startSending(Duration interval) {
    // Avoid starting a new timer if one is already active
    if (_timer != null && _timer!.isActive) {
      return;
    }

    _lastSentTimestamp = DateTime.now();
    state = _lastSentTimestamp;

    _timer = Timer.periodic(interval, (timer) {
      final now = DateTime.now();
      final elapsed = now.difference(_lastSentTimestamp!);

      // Send data with the elapsed time
      _sendDataToServer(elapsed);

      // Update the last sent timestamp
      _lastSentTimestamp = now;
      state = now;

      // Ensure the actual interval and handle cases where elapsed time exceeds the interval
      _ensureAccurateTiming(interval, elapsed);
    });
  }

  void _sendDataToServer(Duration listenedDuration) {
    final AbsApi? api = ref.read(apiProvider);
    final connection = ref.read(connectionProvider.notifier);
    final player = ref.read(playerProvider.notifier);

    final currentTime =
        player.audioService.player.position.inMicroseconds / 1000000;
    final duration =
        (player.audioService.player.duration?.inMicroseconds ?? -1) / 1000000;
    bool shouldFinish = false;
    if (duration >= 0) {
      final settings = ref.read(
          specificKeysSettingsProvider([Constants.MARK_ITEMS_FINISHED_AFTER]));
      shouldFinish = (currentTime + 1) >=
          duration -
              (double.tryParse(settings[Constants.MARK_ITEMS_FINISHED_AFTER]
                      .toString()) ??
                  0);
      log("Should finish: $shouldFinish", name: 'progress_timer_provider');
    }

    final listenedSeconds = listenedDuration.inMicroseconds / 1000000.0;
    final settings = ref.read(settingsProvider);

    // Everything under 1 second is considered a fault (like seeking)
    if (listenedSeconds <= 1 ||
        listenedSeconds > ((settings[Constants.SYNC_INTERVAL] ?? 60) * 2))
      return;

    final PlaybackSessionBookExpanded? bookSession =
        ref.read(sessionProvider.notifier).book;
    final PlaybackSessionPodcastExpanded? podcastSession =
        ref.read(sessionProvider.notifier).podcast;

    final shouldSyncOnline = (settings[Constants.SYNC_ONLY_VIA_WIFI] == false ||
        connection.currentConnectivity.contains(ConnectivityResult.wifi) ||
        connection.currentConnectivity.contains(ConnectivityResult.ethernet));

    if (connection.state &&
        (bookSession != null || podcastSession != null) &&
        api != null &&
        shouldSyncOnline) {
      log('Sending data to server: $listenedSeconds');

      SyncOpenSessionRequestBuilder syncSession =
          SyncOpenSessionRequestBuilder()
            ..id = bookSession?.id ?? podcastSession!.id
            ..timeListened = listenedSeconds
            ..currentTime = shouldFinish
                ? (duration.toDouble() +
                        (settings[Constants.SYNC_INTERVAL] ?? 60))
                    .toDouble()
                : currentTime;

      try {
        api
            .getSessionApi()
            .syncOpenSession(
              id: bookSession?.id ?? podcastSession!.id!,
              syncOpenSessionRequest: syncSession.build(),
            )
            .then((response) => log(response.data.toString(), name: 'Sync'));
      } catch (e) {
        log(e.toString());
      }
    } else {
      log('Saving data offline: $listenedSeconds');
      final user = ref.read(currentUserProvider);
      if (user == null ||
          player.audioService.mediaItem.value?.extras == null ||
          player.audioService.mediaItem.value?.duration == null) return;
      final offlineProgressProvider =
          ref.read(offlineProgressProviderHandler.notifier);

      List<ProgressItem> progressItems = offlineProgressProvider.state;
      ProgressItem? progressItem = progressItems
          .where((element) =>
              element.itemId ==
                  player
                      .audioService.mediaItem.value!.extras!['libraryItemId'] &&
              element.userId == user.id! &&
              element.episodeId ==
                  player.audioService.mediaItem.value!.extras!['episodeId'])
          .firstOrNull;

      if (progressItem != null) {
        log('Updating offline progress: $listenedSeconds',
            name: 'progress_timer_provider');
        offlineProgressProvider.updateProgress(progressItem.copyWith(
          currentTime: shouldFinish
              ? (duration.toDouble() +
                      (settings[Constants.SYNC_INTERVAL] ?? 60))
                  .toDouble()
              : currentTime,
          timeListened: listenedSeconds + progressItem.timeListened,
          updatedAt: DateTime.now(),
          durationOfItem: player
              .audioService.mediaItem.value!.duration!.inSeconds
              .toDouble(),
        ));
      } else {
        log('Adding offline progress: $listenedSeconds',
            name: 'progress_timer_provider');
        final String? episodeId =
            player.audioService.mediaItem.value!.extras!['episodeId'];
        ProgressItem newProgress = ProgressItem(
          itemId: player.audioService.mediaItem.value!.extras!['libraryItemId'],
          userId: user.id!,
          sessionId: bookSession?.id ?? podcastSession?.id,
          episodeId: episodeId,
          currentTime: shouldFinish
              ? (duration.toDouble() +
                      (settings[Constants.SYNC_INTERVAL] ?? 60))
                  .toDouble()
              : currentTime,
          timeListened: listenedSeconds,
          createdAt: DateTime.now(),
          type: (episodeId != null || episodeId.toString().isEmpty)
              ? 'podcast'
              : 'book',
          durationOfItem: player
              .audioService.mediaItem.value!.duration!.inSeconds
              .toDouble(),
          startTime: currentTime,
          updatedAt: DateTime.now(),
        );

        offlineProgressProvider.addProgress(newProgress);
      }
    }

    final progressProv = ref.read(progressProvider.notifier);
    final itemId =
        player.audioService.mediaItem.value!.extras!['libraryItemId'];
    final episodeId = player.audioService.mediaItem.value!.extras!['episodeId'];

    progressProv.updateProgressForItem(
        itemId, episodeId, currentTime, currentTime / duration);

    ref
        .read(historyProviderFamily(itemId).notifier)
        .addHistory(HistoryType.sync, currentTime);
  }

  void _ensureAccurateTiming(Duration interval, Duration elapsed) {
    if (elapsed > interval) {
      // Reset the timer to maintain accuracy for future intervals
      _timer?.cancel();
      startSending(interval);
    }
  }

  void stopSending() {
    if (_timer != null && _timer!.isActive) {
      _timer?.cancel();

      if (_lastSentTimestamp != null) {
        final now = DateTime.now();
        final elapsed = now.difference(_lastSentTimestamp!);

        // Send the last elapsed time
        _sendDataToServer(elapsed);

        // Clean up
        _lastSentTimestamp = null;
        state = null;
      }
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

final offlineProgressProviderHandler =
    StateNotifierProvider<OfflineProgressProvider, List<ProgressItem>>((ref) {
  return OfflineProgressProvider();
});

class OfflineProgressProvider extends StateNotifier<List<ProgressItem>> {
  OfflineProgressProvider() : super([]) {
    _loadProgress();
    addListener((state) {
      _saveProgress();
    });
  }

  _loadProgress() {
    final progressString = sp.getString('offlineProgress');
    if (progressString != null) {
      final List<dynamic> decodedJson = jsonDecode(progressString);
      final List<ProgressItem> progressItems =
          decodedJson.map((json) => ProgressItem.fromJson(json)).toList();
      state = progressItems;
    }
  }

  _saveProgress() {
    log('Number of offline progress items: ${state.length}',
        name: 'OfflineProgress');
    sp.setString('offlineProgress', jsonEncode(state));
  }

  addProgress(ProgressItem progress) {
    state = [...state, progress];
  }

  ProgressItem? getProgressByItemAndUser(String itemId, String userId) {
    return state
        .where(
            (element) => element.itemId == itemId && element.userId == userId)
        .firstOrNull;
  }

  List<ProgressItem> getProgressByUser(String userId) {
    return state.where((element) => element.userId == userId).toList();
  }

  List<ProgressItem> getProgressBySession(String sessionId) {
    return state.where((element) => element.sessionId == sessionId).toList();
  }

  removeProgress(ProgressItem progress) {
    state = state.where((element) => element != progress).toList();
  }

  removeListProgress(List<ProgressItem> progresses) {
    state = state.where((element) => !progresses.contains(element)).toList();
  }

  updateProgress(ProgressItem progress) {
    final index = state.indexWhere((element) =>
        element.itemId == progress.itemId &&
        element.userId == progress.userId &&
        element.sessionId == progress.sessionId &&
        element.episodeId == progress.episodeId);
    if (index != -1) {
      state[index] = progress;
    }
  }
}
