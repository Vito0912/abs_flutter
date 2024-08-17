import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/components/add_to_queue_button.dart';
import 'package:abs_flutter/features/library/item/components/download_button.dart';
import 'package:abs_flutter/features/library/item/components/play_button.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EpisodeActions extends HookConsumerWidget {
  final String itemId;
  final PodcastEpisode episode;

  const EpisodeActions({super.key, required this.itemId, required this.episode});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.read(currentUserProvider);
    final libItem = ref.read(itemProvider(itemId)).value;

    return Row(
      children: [
        PlayButton(
          itemId: itemId,
          mediaType: 'podcast',
          episodeId: episode.id,
        ),
        const SizedBox(width: 8),
        DownloadButton(
          libraryItem: libItem!,
          user: currentUser!,
          episodeId: episode.id,
        ),
        const SizedBox(width: 8),
        AddQueueButton(
          item: libItem,
          episode: episode,
        ),
      ],
    );
  }
}
