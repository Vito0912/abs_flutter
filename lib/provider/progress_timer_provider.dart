import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
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
    final duration = player.audioService.player.duration?.inMicroseconds ?? -1;
    bool shouldFinish = false;
    if (duration >= 0) {
      final settings = ref.read(settingsProvider);
      shouldFinish = currentTime >=
          duration -
              (double.tryParse(settings['markItemsFinishedAfter'].toString()) ??
                  0);
    }

    final listenedSeconds = listenedDuration.inMicroseconds / 1000000.0;
    final settings = ref.read(settingsProvider);

    // Everything under 1 second is considered a fault (like seeking)
    if (listenedSeconds <= 1 ||
        listenedSeconds > ((settings['syncInterval'] ?? 60) * 2)) return;

    final PlaybackSessionBookExpanded? session =
        ref.read(sessionProvider.notifier).session;

    final shouldSyncOnline = (settings['syncOnlyViaWifi'] == false ||
        connection.currentConnectivity.contains(ConnectivityResult.wifi) ||
        connection.currentConnectivity.contains(ConnectivityResult.ethernet));

    if (connection.state &&
        session != null &&
        api != null &&
        shouldSyncOnline) {
      log('Sending data to server: $listenedSeconds');

      SyncOpenSessionRequestBuilder syncSession =
          SyncOpenSessionRequestBuilder()
            ..id = session.id
            ..timeListened = listenedSeconds
            ..currentTime = shouldFinish ? duration.toDouble() : currentTime;

      // TODO: When no session there is no sync
      try {
        api
            .getSessionApi()
            .syncOpenSession(
              id: session.id!,
              syncOpenSessionRequest: syncSession.build(),
            )
            .then((response) => print(response.data));
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

      ProgressItem newProgress = ProgressItem(
        itemId: player.audioService.mediaItem.value!.extras!['libraryItemId'],
        userId: user.id!,
        sessionId: session?.id,
        currentTime: shouldFinish ? duration.toDouble() : currentTime,
        timeListened: listenedSeconds,
        createdAt: DateTime.now(),
        type: 'book',
        durationOfItem:
            player.audioService.mediaItem.value!.duration!.inSeconds.toDouble(),
      );

      offlineProgressProvider.addProgress(newProgress);
    }

    final progressProv = ref.read(progressProvider.notifier);

    progressProv.updateProgressForItem(
        player.audioService.mediaItem.value!.extras!['libraryItemId'],
        currentTime);
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
  return OfflineProgressProvider(ref);
});

class OfflineProgressProvider extends StateNotifier<List<ProgressItem>> {
  final _ref;

  OfflineProgressProvider(this._ref) : super([]) {
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
    print(state.length);
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
}
