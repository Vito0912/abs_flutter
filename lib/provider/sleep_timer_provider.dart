import 'dart:async';

import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/fade_out_handler.dart';
import 'package:abs_flutter/util/shake_handler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vibration/vibration.dart';

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
  TimerNotifier(this.ref) : super(null) {
    _shakeHandler = ShakeHandler(onShake: () async {
      log('Shake detected, continuing timer ($_duration,$_isPaused)',
          name: 'SleepTimer');
      if (_duration != null && !_isPaused) {
        updateTimer(_duration!);
        final settings = ref
            .read(specificKeysSettingsProvider([Constants.DISABEL_VIBRATION]));
        if (!settings[Constants.DISABEL_VIBRATION]) {
          final hasVibration = await Vibration.hasVibrator();
          final hasAmplitudeControl = await Vibration.hasAmplitudeControl();
          if (hasAmplitudeControl != null && hasAmplitudeControl) {
            Vibration.vibrate(duration: 250, intensities: [100]);
          } else if (hasVibration != null && hasVibration) {
            Vibration.vibrate();
          }
        }
      }
    });
  }

  final Ref ref;
  late final ShakeHandler _shakeHandler;
  Timer? _timer;
  double? _duration;
  bool _isPaused = false;
  bool _isRunning = false;
  bool _isDisposed = false;
  FadeOutHandler? fadeOutController;

  bool get isRunning => _isRunning;
  bool get isPaused => _isPaused;

  void start(double duration) {
    if (!_isRunning && !_isDisposed) {
      state = duration;
      _duration = duration;
      _isRunning = true;
      _isPaused = false;
      _startTimer();
    }
  }

  void _startTimer() {
    _timer?.cancel(); // Cancel any existing timer before starting a new one
    final settings =
        ref.read(specificKeysSettingsProvider([Constants.SHAKE_RESET_TIMER]));
    if (settings[Constants.SHAKE_RESET_TIMER]) _shakeHandler.start();

    // When the timer starts to volume down the player
    const int durationInSeconds = 30;

    _timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (_isDisposed || _isPaused) {
        timer.cancel();
        return;
      }
      state ??=
          ref.read(sleepTimerProvider); // Get the current sleep timer duration

      final audioService = ref.read(playerProvider).audioService;
      if (state! <= durationInSeconds &&
          (fadeOutController == null || !fadeOutController!.isActive)) {
        log('Starting fade out', name: 'SleepTimer');
        fadeOutController = FadeOutHandler.fadeOutAndStop(
          startVolume: audioService.player.volume,
          player: audioService,
          durationInMilliseconds: (state! * 1000).toInt(),
        );
      } else if (state! > durationInSeconds && fadeOutController != null) {
        log('Cancelling fade out due to timer reset', name: 'SleepTimer');
        fadeOutController?.cancel();
        audioService.setVolume(fadeOutController!.startVolume!);
      }

      if (state! <= 0) {
        timer.cancel();
        _isRunning = false;
        ref
            .read(playStatusProvider)
            .setPlayStatus(PlayerStatus.stopped, "Sleep timer");
        if (fadeOutController != null) {
          fadeOutController?.cancel();
          if (fadeOutController?.startVolume != null) {
            final audioService = ref.read(playerProvider).audioService;
            audioService.setVolume(fadeOutController!.startVolume!);
          }
        }
      } else {
        state = (state! - 0.5);
      }
    });
  }

  void updateTimer(double newDuration) {
    if (_isDisposed) return;

    // Restart the timer with the new duration
    state = newDuration;
    _duration = newDuration;
    final audioService = ref.read(playerProvider).audioService;

    if (fadeOutController != null) {
      log('Cancelling fade out due to timer reset', name: 'SleepTimer');
      fadeOutController?.cancel();
      audioService.setVolume(fadeOutController!.startVolume!);
    }

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
    _shakeHandler.stop();
    _duration = null;
    _isRunning = false;
    _isPaused = false;
  }

  void pause() {
    if (_isRunning && !_isPaused) {
      _isPaused = true;
      _shakeHandler.pause();
      _timer?.cancel();
    }
  }

  void continueTimer() {
    if (_isRunning && _isPaused) {
      _isPaused = false;
      _shakeHandler.stop();
      _startTimer();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    _duration = null;
    _shakeHandler.stop();
    _timer?.cancel();
    super.dispose();
  }
}
