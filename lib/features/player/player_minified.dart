import 'package:abs_flutter/features/player/modules/play_button.dart';
import 'package:abs_flutter/features/player/modules/progress_bar.dart';
import 'package:abs_flutter/provider/chapter_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/scrolling_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'modules/chapter_buttons.dart';
import 'modules/seeking_buttons.dart';

class PlayerMinified extends ConsumerWidget {
  const PlayerMinified({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider).playStatus;
    final playerStatusProvider = ref.watch(playStatusProvider.notifier);
    final player = ref.watch(playerProvider);
    final user = ref.watch(currentUserProvider);
    final currentChapter = ref.watch(chapterProvider);
    final Stream<Duration> positionStream = player.positionStream;
    final Stream<Duration?> bufferStream =
        player.audioService.player.bufferedPositionStream;

    if (playerStatus == PlayerStatus.stopped ||
        player.audioService.mediaItem.value == null) {
      return const SizedBox
          .shrink(); // return an empty widget if the player is hidden or stopped
    }

    return GestureDetector(
      onTap: () {
        if (Helper.getCurrentRoute(GoRouter.of(context)) != '/player') {
          context.push('/player');
        }
      },
      child: Material(
        child: Column(
          children: [
            Divider(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
              indent: 0,
              endIndent: 0,
              thickness: 1,
              height: 0,
            ),
            Container(
              color: Theme.of(context).colorScheme.surface,
              padding: const EdgeInsets.only(
                  bottom: 8.0, left: 8.0, right: 8.0, top: 4),
              child: Column(
                children: [
                  if (player.audioService.mediaItem.value != null)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AlbumImage(
                                player.audioService.mediaItem.value!
                                    .extras!['libraryItemId'],
                                size: 40,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ScrollingText(
                                      text: player
                                          .audioService.mediaItem.value!.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!,
                                      scrollDuration:
                                          const Duration(seconds: 5),
                                    ),
                                    PlatformText(
                                      player.audioService.mediaItem.value!
                                              .artist ??
                                          '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        MediaQuery.of(context).size.width > 500
                            ? Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: _buildControls(positionStream, player,
                                    playerStatusProvider, true, ref))
                            : _buildControls(positionStream, player,
                                playerStatusProvider, false, ref),
                        MediaQuery.of(context).size.width > 500
                            ? Flexible(child: _buildOptions(context))
                            : _buildOptions(context),
                      ],
                    ),
                  ProgressBar(
                    positionStream: positionStream,
                    player: player,
                    showPerChapter:
                        user?.setting?.settings['progressAsChapters'] ?? false,
                    currentChapter: currentChapter,
                    bufferStream: bufferStream,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildControls(
      Stream<Duration> positionStream,
      PlayerProvider player,
      PlayerStatusProvider playerStatusProvider,
      bool isExpanded,
      WidgetRef ref) {
    final currentChapter = ref.watch(chapterProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (isExpanded && currentChapter != null)
          ChapterButtons(
            positionStream: positionStream,
            player: player,
            isForward: false,
            currentChapter: currentChapter,
          ),
        SeekingButtons(
          positionStream: positionStream,
          player: player,
          isForward: false,
        ),
        PlayButton(playerStatusProvider: playerStatusProvider),
        SeekingButtons(
          positionStream: positionStream,
          player: player,
          isForward: true,
        ),
        if (isExpanded && currentChapter != null)
          ChapterButtons(
            positionStream: positionStream,
            player: player,
            isForward: true,
            currentChapter: currentChapter,
          ),
      ],
    );
  }

  Widget _buildOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {
              if (Helper.getCurrentRoute(GoRouter.of(context)) != '/settings') {
                context.push('/settings');
              }
            },
            icon: const Icon(Icons.more_vert)),
      ],
    );
  }
}
