import 'dart:developer';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/sleep_timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SleepTimer extends ConsumerWidget {
  final PlayerProvider player;
  final Chapter? currentChapter;
  SleepTimer({super.key, required this.player, required this.currentChapter});

  final Map<String, dynamic> sleepOptions = {
    '1 min': 1.0 * 60.0,
    '5 min': 5.0 * 60.0,
    '10 min': 10.0 * 60.0,
    '15 min': 15.0 * 60.0,
    '30 min': 30.0 * 60.0,
    '45 min': 45.0 * 60.0,
    '1 hour': 60.0 * 60.0,
    'End of chapter': -1.0,
    'Stop': -2.0,
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformPopupMenu(
      options: sleepOptions.entries
          .map((entry) =>
          _buildSpeedOption(entry.key, entry.value, context, ref))
          .toList(),
      icon: Tooltip(
        message: S.of(context).sleepTimer,
        child: Consumer(
          builder: (context, ref, child) {
            final timer = ref.watch(timerProvider);
            return (timer != null && timer > 0.0)
                ? PlatformText(S.of(context).timerText((timer / 60).toStringAsFixed(0)))
                : const Icon(Icons.timer_outlined);
          },
        ),
      ),
    );
  }

  PopupMenuOption _buildSpeedOption(
      String key, double value, BuildContext context, WidgetRef ref) {
    final sleepTimerNotifier = ref.read(sleepTimerProvider.notifier);
    final timerNotifier = ref.read(timerProvider.notifier);

    return PopupMenuOption(
      label: key,
      onTap: (option) {
        // When end of chapter is selected
        if(value == -1 && currentChapter != null) {
          double chapterTimer = currentChapter!.end - player.audioService.player.position.inSeconds;
          if (timerNotifier.isRunning) {
            timerNotifier.updateTimer(chapterTimer); // Update the running timer
          } else {
            timerNotifier.start(chapterTimer); // Start a new timer if not running
          }
        } else if(value == -2) {
          sleepTimerNotifier.state = 0.0;
          timerNotifier.stop();
        } else {
          sleepTimerNotifier.state = value;

          if (timerNotifier.isRunning) {
            timerNotifier.updateTimer(value); // Update the running timer
          } else {
            timerNotifier.start(value); // Start a new timer if not running
          }
        }
      },
    );
  }
}
