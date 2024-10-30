import 'package:abs_flutter/features/player/modules/play_bar.dart';
import 'package:abs_flutter/features/player/modules/player_button_menu.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/chapter_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'modules/progress_bar.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final player = ref.watch(playerProvider);
    final user = ref.watch(currentUserProvider);
    final currentChapter = ref.watch(chapterProvider);
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
                        AlbumImage(
                            player.audioService.mediaItem.value!
                                .extras!['libraryItemId'],
                            size: 200),
                        const SizedBox(height: 16),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: PlatformText(
                              player.audioService.mediaItem.value?.title ?? '',
                              style: Theme.of(context).textTheme.titleLarge,
                            )),
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
                              PlayBar(
                                  positionStream: positionStream,
                                  player: player,
                                  playerStatus: playerStatus,
                                  currentChapter: currentChapter,
                                  size: size),
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
                              PlayerButtonMenu(
                                size: size,
                                speedStream: speedStream,
                                player: player,
                                libraryItemId: libraryItemId,
                                playerStatus: playerStatus,
                                currentChapter: currentChapter,
                              )
                            ],
                          ),
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
