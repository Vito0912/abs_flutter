import 'dart:async';

import 'package:abs_flutter/util/abs_audio_handler.dart';

class FadeOutHandler {
  Timer? _timer;
  double? _startVolume;

  bool get isActive => _timer?.isActive ?? false;
  double? get startVolume => _startVolume;

  void cancel() {
    _timer?.cancel();
  }

  static FadeOutHandler fadeOutAndStop({
    required double startVolume,
    required AbsAudioHandler player,
    required int durationInMilliseconds,
  }) {
    const int intervalInMilliseconds = 50;
    int elapsedMilliseconds = 0;

    final controller = FadeOutHandler();

    controller._startVolume = startVolume;

    controller._timer = Timer.periodic(
      const Duration(milliseconds: intervalInMilliseconds),
      (Timer timer) {
        elapsedMilliseconds += intervalInMilliseconds;
        final double percent =
            1 - (elapsedMilliseconds / durationInMilliseconds);

        player.setVolume(percent * startVolume);

        if (elapsedMilliseconds >= durationInMilliseconds) {
          timer.cancel();
        }
      },
    );

    return controller;
  }
}
