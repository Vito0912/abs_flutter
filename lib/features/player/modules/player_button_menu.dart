import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/features/player/modules/bookmarks.dart';
import 'package:abs_flutter/features/player/modules/chapters.dart';
import 'package:abs_flutter/features/player/modules/queue_button.dart';
import 'package:abs_flutter/features/player/modules/sleep_timer.dart';
import 'package:abs_flutter/features/player/modules/speed_control.dart';
import 'package:abs_flutter/features/player/modules/volume.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/bookmark_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

class PlayerButtonMenu extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpanded = useState(false);

    final expandedButtons = _expandedButtons(context, ref, player);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ..._neededButtons(isExpanded).map((e) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: e,
                )),
          ],
        ),
        if (isExpanded.value)
          Container(
            padding: const EdgeInsets.only(top: 6.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              children: expandedButtons
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: e,
                      ))
                  .toList(),
            ),
          ),
      ],
    );
  }

  List<Widget> _expandedButtons(
      BuildContext context, WidgetRef ref, PlayerProvider player) {
    final volumeStream = player.audioService.player.volumeStream;
    final List<Bookmark>? bookmarks =
        ref.watch(bookmarkProvider).getBookmarksForItem(libraryItemId);
    return [
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
      if (bookmarks != null && bookmarks.isNotEmpty)
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Bookmarks(
              bookmarks: bookmarks,
              libraryItemId: libraryItemId,
              child: Icon(
                EvaIcons.bookmark,
                size: size,
              )),
        ),
      Volume(
        volumeStream: volumeStream,
        player: player,
        size: size,
      )
    ];
  }

  List<Widget> _neededButtons(isExpanded) {
    return [
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
      Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return PlatformIconButton(
          icon: Icon(size: size, Icons.stop),
          onPressed: () {
            final queue = ref.read(queueProvider);
            queue.clear();
            ref.read(queueProvider.notifier).update((state) => [...queue]);
            playerStatus.setPlayStatus(PlayerStatus.stopped, "Close player");
            context.pop();
          },
        );
      }),
      IconButton(
        icon: Icon(
          size: size,
          isExpanded.value ? Icons.expand_less : Icons.expand_more,
        ),
        onPressed: () {
          isExpanded.value = !isExpanded.value;
        },
      ),
    ];
  }
}
