import 'package:abs_flutter/features/player/modules/chapters.dart';
import 'package:abs_flutter/features/player/modules/queue_button.dart';
import 'package:abs_flutter/features/player/modules/sleep_timer.dart';
import 'package:abs_flutter/features/player/modules/speed_control.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class PlayerButtonMenu extends StatelessWidget {
  final double size;
  final Stream<double> speedStream;
  final String? libraryItemId;
  final PlayerProvider player;
  final PlayerStatusProvider playerStatus;
  final Chapter? currentChapter;
  const PlayerButtonMenu(
      {super.key,
      required this.size,
      required this.speedStream,
      this.libraryItemId,
      required this.player,
      required this.playerStatus,
      this.currentChapter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpeedControl(
          player: player,
          size: size,
          speedStream: speedStream,
        ),
        SleepTimer(
          player: player,
          size: size,
          currentChapter: currentChapter,
        ),
        if (player.audioService.mediaItem.value?.extras?['chapters'] != null)
          Chapters(
            chapters: player.audioService.mediaItem.value!.extras!['chapters'],
            child: Icon(
              EvaIcons.book_open_outline,
              size: size,
            ),
          ),
        QueueButton(size: size),
        if (libraryItemId != null)
          PlatformIconButton(
            icon: Icon(
              size: size,
              AntDesign.history_outline,
            ),
            onPressed: () {
              context.push('/history/$libraryItemId');
            },
          ),
        Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return PlatformIconButton(
            icon: Icon(size: size, Icons.close),
            onPressed: () {
              final queue = ref.read(queueProvider);
              queue.clear();
              ref.read(queueProvider.notifier).update((state) => [...queue]);
              playerStatus.setPlayStatus(PlayerStatus.stopped, "Close player");
              context.pop();
            },
          );
        })
      ],
    );
  }
}
