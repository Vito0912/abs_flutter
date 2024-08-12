import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/queue.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddQueueButton extends ConsumerWidget {
  const AddQueueButton({super.key, required this.item, this.episode});

  final LibraryItemBase item;
  final PodcastEpisode? episode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final queue = ref.watch(queueProvider);

    Queue queueItem = Queue(
      itemId: item.id!,
      episodeId: episode?.id,
      title: episode?.title ?? item.media!.metadata!.title!,
    );

    if (queue
        .where((element) =>
            element.itemId == queueItem.itemId &&
            element.episodeId == queueItem.episodeId)
        .isNotEmpty) {
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
