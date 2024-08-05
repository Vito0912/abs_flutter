import 'dart:async';
import 'dart:developer';
import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
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
    final PlaybackSessionBookExpanded? session =
        ref.read(sessionProvider.notifier).session;
    final player = ref.read(playerProvider.notifier);

    if (session == null || api == null) return;

    final currentTime =
        player.audioService.player.position.inMicroseconds / 1000000;
    final listenedSeconds = listenedDuration.inMicroseconds / 1000000.0;

    // Everything under 1 second is considered a fault (like seeking)
    if (listenedSeconds <= 1) return;

    log('Sending data to server: $listenedSeconds');

    api
        .getSessionApi()
        .syncOpenSession(
          id: session.id!,
          currentTime: currentTime,
          timeListened: listenedSeconds,
          duration: session.duration!,
        )
        .then((response) => print(response.data));
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
