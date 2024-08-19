import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_filter_sort.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_list.dart';
import 'package:abs_flutter/features/library/item/podcast/shimmer_loading.dart';
import 'package:abs_flutter/features/library/item/podcast/sort_options.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PodcastView extends HookConsumerWidget {
  const PodcastView({super.key, required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProvider(itemId));

    if (item.value == null || item.value!.media!.episodes == null) {
      return item.isLoading
          ? const ShimmerLoading()
          : const ErrorText('Error: Episodes or item not found');
    }

    final episodes = useState(item.value!.media!.episodes!.reversed.toList());
    final filter = useState<String>('Show All');
    final sort = useState<String>('Pub Date');
    final isAscending = useState<bool>(false);

    List<PodcastEpisode> filteredEpisodes =
        filterEpisodes(episodes.value, filter.value, ref);
    filteredEpisodes =
        sortEpisodes(filteredEpisodes, sort.value, isAscending.value);
    final progress = ref.read(progressProvider.notifier).getAllProgress();

    final nextEpisode = findLastProgressEpisode(
      filteredEpisodes,
      ref.read(progressProvider).progress ?? {},
    );

    final _scrollController = ScrollController();

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(item.value!.media!.metadata!.title!),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                AlbumImage(itemId, size: 200),
                const SizedBox(height: 16),
                PlatformText(
                  item.value!.media!.metadata!.title!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                PlatformText('Episodes: ${filteredEpisodes.length}'),
                const SizedBox(height: 8),
                PlatformElevatedButton(
                  onPressed: nextEpisode != null
                      ? () => ref
                          .read(sessionProvider.notifier)
                          .load(nextEpisode.libraryItemId!, nextEpisode.id)
                      : null,
                  child: PlatformText(S.of(context).playNextEpisode),
                ),
                const SizedBox(height: 16),
                SortOptions(
                    filter: filter, sort: sort, isAscending: isAscending),
                const SizedBox(height: 32),
                EpisodeList(
                    episodes: filteredEpisodes,
                    itemId: itemId,
                    scrollController: _scrollController),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PodcastEpisode? findLastProgressEpisode(
    List<PodcastEpisode> podcastEpisodes,
    Map<String, MediaProgress> mediaProgressList, {
    bool reverse = false,
  }) {
    final range = reverse
        ? Iterable<int>.generate(podcastEpisodes.length).toList().reversed
        : Iterable<int>.generate(podcastEpisodes.length);

    bool found = false;
    for (var i in range) {
      if (found && (!reverse ? i - 2 >= 0 : i + 2 < range.length)) {
        return podcastEpisodes[reverse ? i + 2 : i - 2];
      } else {
        if (found) {
          return null;
        }
        found = false;
      }
      final episode = podcastEpisodes[i];
      // Find matching MediaProgress for this episodeId
      final matchingProgress =
          mediaProgressList['${episode.libraryItemId}${episode.id ?? ''}'];
      if (matchingProgress != null &&
          i != range.length &&
          matchingProgress.progress! <= 0.95 &&
          !matchingProgress.isFinished!) {
        found = true;
      }
    }

    return null;
  }
}
