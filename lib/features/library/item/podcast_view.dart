import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/components/download_button.dart';
import 'package:abs_flutter/features/library/item/components/play_button.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

class PodcastView extends HookConsumerWidget {
  PodcastView({super.key, required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProvider(itemId));

    if (item.value == null || item.value!.media!.episodes == null) {
      if (item.isLoading) {
        return _buildShimmerLoading(context);
      } else {
        return const ErrorText('Error: Episodes or item not found');
      }
    }

    final episodes = useState(item.value!.media!.episodes!.reversed.toList());
    final filter = useState<String>('Show All');
    final sort = useState<String>('Pub Date');
    final isAscending = useState<bool>(false);

    List<PodcastEpisode> filteredEpisodes =
        _filterEpisodes(episodes.value, filter.value, ref);
    filteredEpisodes =
        _sortEpisodes(filteredEpisodes, sort.value, isAscending.value);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(item.value!.media!.metadata!.title!),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                AlbumImage(
                  itemId,
                  size: 200,
                ),
                const SizedBox(height: 16),
                PlatformText(
                  item.value!.media!.metadata!.title!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton<String>(
                      value: filter.value,
                      items: [
                        'Show All',
                        'Incomplete',
                        'Complete',
                        'In Progress'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        filter.value = newValue!;
                      },
                    ),
                    PlatformIconButton(
                      icon: Icon(Icons.filter_alt_outlined),
                      onPressed: () =>
                          _showSortOptions(context, sort, isAscending),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                ...[
                  for (var episode in filteredEpisodes)
                    _buildEpisode(context, ref, episode, item.value),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showSortOptions(BuildContext context, ValueNotifier<String> sort,
      ValueNotifier<bool> isAscending) {
    showPlatformModalSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: _sortOptions.length,
          itemBuilder: (BuildContext context, int index) {
            final sortKey = _sortOptions.keys.elementAt(index);
            final sortValue = _sortOptions.values.elementAt(index);
            final isSelected = sort.value == sortKey;

            return PlatformWidget(
              material: (_, __) => _buildMaterialListTile(
                sortValue,
                isSelected,
                isAscending.value,
                () {
                  if (isSelected) {
                    isAscending.value = !isAscending.value;
                  } else {
                    sort.value = sortKey;
                    isAscending.value = true;
                  }
                  Navigator.of(context).pop();
                },
              ),
              cupertino: (_, __) => _buildCupertinoListTile(
                sortValue,
                isSelected,
                isAscending.value,
                () {
                  if (isSelected) {
                    isAscending.value = !isAscending.value;
                  } else {
                    sort.value = sortKey;
                    isAscending.value = true;
                  }
                  Navigator.of(context).pop();
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildMaterialListTile(
      String sortValue, bool isSelected, bool isAscending, VoidCallback onTap) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sortValue),
          if (isSelected)
            Row(
              children: [
                Icon(isAscending ? Icons.arrow_upward : Icons.arrow_downward),
                const SizedBox(width: 8),
                const Icon(Icons.check),
              ],
            ),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _buildCupertinoListTile(
      String sortValue, bool isSelected, bool isAscending, VoidCallback onTap) {
    return CupertinoListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sortValue),
          if (isSelected)
            Row(
              children: [
                Icon(isAscending
                    ? CupertinoIcons.arrow_up
                    : CupertinoIcons.arrow_down),
                const SizedBox(width: 8),
                const Icon(CupertinoIcons.check_mark),
              ],
            ),
        ],
      ),
      onTap: onTap,
    );
  }

  final Map<String, String> _sortOptions = {
    'Pub Date': 'Publication Date',
    'Episode Title': 'Episode Title',
    'Episode': 'Episode Number',
  };

  List<PodcastEpisode> _filterEpisodes(
      List<PodcastEpisode> episodes, String filter, WidgetRef ref) {
    final progresses = ref.watch(progressProvider);
    switch (filter) {
      case 'Incomplete':
        return episodes.where((episode) {
          final progress = progresses.progress
              ?.where(
                  (p) => p.libraryItemId == itemId && p.episodeId == episode.id)
              .firstOrNull;
          return progress != null && progress.progress! < 1.0;
        }).toList();
      case 'Complete':
        return episodes.where((episode) {
          final progress = progresses.progress
              ?.where(
                  (p) => p.libraryItemId == itemId && p.episodeId == episode.id)
              .firstOrNull;
          return progress != null && progress.progress! == 1.0;
        }).toList();
      case 'In Progress':
        return episodes.where((episode) {
          final progress = progresses.progress
              ?.where(
                  (p) => p.libraryItemId == itemId && p.episodeId == episode.id)
              .firstOrNull;
          return progress != null &&
              progress.progress! > 0 &&
              progress.progress! < 1.0;
        }).toList();
      default:
        return episodes;
    }
  }

  List<PodcastEpisode> _sortEpisodes(
      List<PodcastEpisode> episodes, String sort, bool isAscending) {
    int compare<T extends Comparable<T>>(T? a, T? b) {
      if (a == null && b == null) return 0;
      if (a == null) return isAscending ? -1 : 1;
      if (b == null) return isAscending ? 1 : -1;
      return isAscending ? a.compareTo(b) : b.compareTo(a);
    }

    switch (sort) {
      case 'Episode Title':
        episodes.sort((a, b) => compare(a.title, b.title));
        break;
      case 'Episode':
        episodes.sort((a, b) => compare(a.episode, b.episode));
        break;
      case 'Pub Date':
      default:
        episodes.sort((a, b) =>
            compare(a.publishedAt.toString(), b.publishedAt.toString()));
        break;
    }
    return episodes;
  }

  Widget _buildShimmerLoading(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            width: 200,
            height: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: double.infinity,
                    height: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Column(
                    children:
                        List.generate(3, (index) => _buildShimmerEpisode()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerEpisode() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Container(
            width: 100,
            height: 16,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildEpisode(
      BuildContext context, WidgetRef ref, PodcastEpisode episode, LibraryItemBase? libItem) {
    final isExpanded = useState(false);
    final progresses = ref.watch(progressProvider);

    MediaProgress? progress = progresses.progress?.where((progress) {
      return progress.libraryItemId == itemId &&
          progress.episodeId == episode.id;
    }).firstOrNull;
    final progressPercentage =
        ((progress?.progress ?? 0) * 100).toStringAsPrecision(3);
    final currentUser = ref.read(currentUserProvider);
    return SelectionArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => isExpanded.value = !isExpanded.value,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlatformText(
                        episode.title!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      if (episode.publishedAt != null)
                        PlatformText(
                          DateFormat.yMMMd().format(
                              DateTime.fromMillisecondsSinceEpoch(
                                  episode.publishedAt!)),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      if (episode.subtitle != null)
                        PlatformText(
                          episode.subtitle!,
                        ),
                      if (isExpanded.value) ...[
                        if (episode.description != null)
                          PlatformText(
                            episode.description!,
                          ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              PlayButton(
                itemId: itemId,
                mediaType: 'podcast',
                episodeId: episode.id,
              ),
              const SizedBox(width: 8),
              DownloadButton(libraryItem: libItem!, user: currentUser!, episodeId: episode.id),
            ],
          ),
          const SizedBox(height: 8),
          if (progress != null) ...[
            Tooltip(
              message: 'Progress: $progressPercentage %',
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(16.0),
                value: progress.progress?.toDouble(),
                minHeight: 5.0,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                backgroundColor: Colors.grey[300],
              ),
            ),
          ],
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
