import 'package:abs_flutter/features/player/modules/chapter_buttons.dart';
import 'package:abs_flutter/features/player/modules/chapters.dart';
import 'package:abs_flutter/features/player/modules/play_button.dart';
import 'package:abs_flutter/features/player/modules/queue_button.dart';
import 'package:abs_flutter/features/player/modules/seeking_buttons.dart';
import 'package:abs_flutter/features/player/modules/sleep_timer.dart';
import 'package:abs_flutter/features/player/modules/speed_control.dart';
import 'package:abs_flutter/features/player/modules/volume.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/chapter_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

import 'modules/progress_bar.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final player = ref.watch(playerProvider);
    final user = ref.watch(currentUserProvider);
    final currentChapter = ref.watch(chapterProvider);
    final volumeStream = player.audioService.player.volumeStream;
    final positionStream = player.audioService.player.positionStream;
    final durationStream = player.audioService.player.durationStream;
    final speedStream = player.audioService.player.speedStream;
    final bufferStream = player.audioService.player.bufferedPositionStream;
    final libraryItemId =
        player.audioService.mediaItem.value?.extras?['libraryItemId'];

    const double size = 32.0;

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(S.of(context).player),
        trailingActions: [
          PlatformIconButton(
            icon: Icon(context.platformIcons.car),
            onPressed: () => context.replace('/car-player'),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 600,
                  minHeight: constraints
                      .maxHeight, // Ensure the column takes up the full height
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey[300],
                          ),
                          child: AlbumImage(player.audioService.mediaItem.value!
                              .extras!['libraryItemId']),
                        ),
                        const SizedBox(height: 16),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              PlatformText(
                                player.audioService.mediaItem.value?.title ??
                                    '',
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        PlatformText(
                          player.audioService.mediaItem.value?.artist ?? '',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (currentChapter != null)
                                    ChapterButtons(
                                      positionStream: positionStream,
                                      player: player,
                                      size: size,
                                      isForward: false,
                                      currentChapter: currentChapter,
                                    ),
                                  SeekingButtons(
                                    positionStream: positionStream,
                                    player: player,
                                    size: size,
                                    isForward: false,
                                  ),
                                  PlayButton(
                                      size: size,
                                      playerStatusProvider: playerStatus),
                                  SeekingButtons(
                                    positionStream: positionStream,
                                    player: player,
                                    size: size,
                                    isForward: true,
                                  ),
                                  if (currentChapter != null)
                                    ChapterButtons(
                                      positionStream: positionStream,
                                      player: player,
                                      size: size,
                                      isForward: true,
                                      currentChapter: currentChapter,
                                    ),
                                ],
                              ),
                              ProgressBar(
                                positionStream: positionStream,
                                durationStream: durationStream,
                                player: player,
                                showPerChapter: user?.setting
                                        ?.settings['progressAsChapters'] ??
                                    false,
                                currentChapter: currentChapter,
                                bufferStream: bufferStream,
                                size: size,
                              ),
                              const SizedBox(height: 16),
                              Row(
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
                                  if (player.audioService.mediaItem.value
                                          ?.extras?['chapters'] !=
                                      null)
                                    Chapters(
                                      chapters: player.audioService.mediaItem
                                          .value!.extras!['chapters'],
                                      child: const Icon(
                                        EvaIcons.book_open_outline,
                                        size: size,
                                      ),
                                    ),
                                  const QueueButton(size: size),
                                  if (libraryItemId != null)
                                    PlatformIconButton(
                                      icon: const Icon(
                                        size: size,
                                        AntDesign.history_outline,
                                      ),
                                      onPressed: () {
                                        context.push('/history/$libraryItemId');
                                      },
                                    ),
                                  PlatformIconButton(
                                    icon: const Icon(size: size, Icons.close),
                                    onPressed: () {
                                      final queue = ref.read(queueProvider);
                                      queue.clear();
                                      ref
                                          .read(queueProvider.notifier)
                                          .update((state) => [...queue]);
                                      playerStatus.setPlayStatus(
                                          PlayerStatus.stopped, "Close player");
                                      context.pop();
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Volume(
                          volumeStream: volumeStream,
                          player: player,
                          size: size,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
