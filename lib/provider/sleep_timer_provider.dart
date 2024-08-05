import 'dart:async';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sleepTimerProvider = StateProvider<double>((ref) {
  return 20.0;
});

final timerProvider = StateNotifierProvider<TimerNotifier, double?>((ref) {
  final timerNotifier = TimerNotifier(ref);

  ref.listen<double>(sleepTimerProvider, (previous, next) {
    if (timerNotifier.isRunning) {
      timerNotifier.updateTimer(
          next); // Update the timer duration without resetting the timer
    }
  });

  return timerNotifier;
});

class TimerNotifier extends StateNotifier<double?> {
  TimerNotifier(this.ref) : super(null);

  final Ref ref;
  Timer? _timer;
  bool _isPaused = false;
  bool _isRunning = false;
  bool _isDisposed = false;

  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;

  void start(double duration) {
    if (!_isRunning && !_isDisposed) {
      state = duration;
      _isRunning = true;
      _isPaused = false;
      _startTimer();
    }
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer before starting a new one
    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (_isDisposed || _isPaused) {
        timer.cancel();
        return;
      }
      state ??=
          ref.read(sleepTimerProvider); // Get the current sleep timer duration
      if (state! <= 0) {
        timer.cancel();
        _isRunning = false;
        ref
            .read(playStatusProvider)
            .setPlayStatus(PlayerStatus.stopped, "Sleep timer");
      } else {
        state = (state! - 0.5);
      }
    });
  }

  void updateTimer(double newDuration) {
    if (_isDisposed) return;

    // Restart the timer with the new duration
    state = newDuration;
    if (_isRunning && !_isPaused) {
      _timer?.cancel();
      _startTimer();
    } else if (!_isRunning) {
      start(newDuration);
    }
  }

  void stop() {
    if (_isDisposed) return;
    _timer?.cancel();
    _isRunning = false;
    _isPaused = false;
  }

  void pause() {
    if (_isRunning && !_isPaused) {
      _isPaused = true;
      _timer?.cancel();
    }
  }

  void continueTimer() {
    if (_isRunning && _isPaused) {
      _isPaused = false;
      _startTimer();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _timer?.cancel();
    super.dispose();
  }
}
