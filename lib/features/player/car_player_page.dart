import 'package:abs_flutter/features/player/modules/progress_bar.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/chapter_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'modules/play_button.dart';
import 'modules/seeking_buttons.dart';

class CarPlayerPage extends ConsumerWidget {
  const CarPlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final player = ref.watch(playerProvider);
    final currentChapter = ref.watch(chapterProvider);
    final positionStream = player.positionStream;
    final bufferStream = player.audioService.player.bufferedPositionStream;

    const double size = 60.0;

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(S.of(context).carPlayer),
        trailingActions: [
          PlatformIconButton(
            icon: const Icon(Icons.play_circle_fill_outlined),
            onPressed: () => context.replace('/player'),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
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
                          player.audioService.mediaItem.value?.title ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontSize: 28),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SeekingButtons(
                        positionStream: positionStream,
                        player: player,
                        size: size,
                        isForward: false,
                      ),
                      PlayButton(
                          size: size, playerStatusProvider: playerStatus),
                      SeekingButtons(
                        positionStream: positionStream,
                        player: player,
                        size: size,
                        isForward: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 32),
                    child: ProgressBar(
                      positionStream: positionStream,
                      player: player,
                      showPerChapter: false,
                      size: size,
                      currentChapter: currentChapter,
                      bufferStream: bufferStream,
                      disabled: true,
                      hideChapter: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
