import 'package:abs_flutter/api/library_items/episode.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/models/queue.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddQueueButton extends ConsumerWidget {
  const AddQueueButton({super.key, required this.item, this.episode});

  final LibraryItem item;
  final Episode? episode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queue = ref.watch(queueProvider);
    final playerStatus = ref.watch(playStatusProvider);

    Queue queueItem = Queue(
      itemId: item.id,
      episodeId: episode?.id,
      title: episode?.title ?? item.media!.bookMedia!.metadata.title,
    );

    if (queue
            .where((element) =>
                element.itemId == queueItem.itemId &&
                element.episodeId == queueItem.episodeId)
            .isNotEmpty ||
        playerStatus.playStatus != PlayerStatus.playing) {
      return const SizedBox.shrink();
    }

    return PlatformElevatedButton(
      onPressed: () {
        if (queue.contains(queueItem)) {
          queue.remove(queueItem);
        } else {
          queue.add(queueItem);
        }

        ref.read(queueProvider.notifier).update((state) => [...state]);
      },
      child: queue.contains(queueItem)
          ? Icon(PlatformIcons(context).remove)
          : Icon(PlatformIcons(context).add),
    );
  }
}
