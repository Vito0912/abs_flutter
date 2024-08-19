import 'dart:async';
import 'dart:math';

import 'package:abs_flutter/provider/log_provider.dart' as dev;
import 'package:sensors_plus/sensors_plus.dart';

typedef ShakeCallback = void Function();

class ShakeHandler {
  final ShakeCallback onShake;
  final double shakeThresholdGravity;
  final int shakeDelayMilliseconds;
  final int shakeCounterResetMilliseconds;
  final int minimumShakeCounter;
  final Duration samplingInterval;
  int lastShakeTimestamp = DateTime.now().millisecondsSinceEpoch;
  int shakeCounter = 0;

  StreamSubscription? accSubscript;

  ShakeHandler({
    required this.onShake,
    this.shakeThresholdGravity = 2.0,
    this.shakeDelayMilliseconds = 5000,
    this.shakeCounterResetMilliseconds = 3000,
    this.minimumShakeCounter = 1,
    this.samplingInterval = const Duration(milliseconds: 1000),
  });

  void start() {
    dev.log('TreeShaker started', name: 'TreeShaker');

    if (accSubscript != null && accSubscript!.isPaused) {
      accSubscript!.resume();
    } else {
      accSubscript = accelerometerEventStream(
        samplingPeriod: samplingInterval,
      ).listen(
        (AccelerometerEvent event) {
          double gX = event.x / 9.80665;
          double gY = event.y / 9.80665;
          double gZ = event.z / 9.80665;

          double shakeForce = sqrt(gX * gX + gY * gY + gZ * gZ);

          if (shakeForce > shakeThresholdGravity) {
            final currentTimestamp = DateTime.now().millisecondsSinceEpoch;

            // Ignore shake events that are too close to each other
            if (lastShakeTimestamp + shakeDelayMilliseconds >
                currentTimestamp) {
              return;
            }

            if (lastShakeTimestamp + shakeCounterResetMilliseconds <
                currentTimestamp) {
              shakeCounter = 0;
            }

            lastShakeTimestamp = currentTimestamp;
            shakeCounter++;

            if (shakeCounter >= minimumShakeCounter) {
              onShake();
            }
          }
        },
        cancelOnError: true,
        onError: (error) {
          dev.log('Error: $error', name: 'TreeShaker');
        },
        onDone: () {
          dev.log('TreeShaker stream completed', name: 'TreeShaker');
        },
      );
    }
  }

  void pause() {
    dev.log('TreeShaker paused', name: 'TreeShaker');
    if (accSubscript != null) {
      accSubscript?.pause();
    }
  }

  void stop() {
    dev.log('TreeShaker stopped', name: 'TreeShaker');
    if (accSubscript != null) {
      accSubscript!.cancel();
    }
  }
}
