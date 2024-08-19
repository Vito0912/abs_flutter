import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_action.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_header.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpisodeList extends StatefulWidget {
  final List<PodcastEpisode> episodes;
  final String itemId;
  final int itemsPerPage;
  final ScrollController scrollController;

  const EpisodeList({
    super.key,
    required this.episodes,
    required this.itemId,
    this.itemsPerPage = 10,
    required this.scrollController,
  });

  @override
  _EpisodeListState createState() => _EpisodeListState();
}

class _EpisodeListState extends State<EpisodeList> {
  List<PodcastEpisode> _displayedEpisodes = [];
  int _currentPage = 1;
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_onScroll);

    // Load the first page of episodes
    _loadMoreEpisodes();
  }

  void _loadMoreEpisodes() {
    setState(() {
      final startIndex = (_currentPage - 1) * widget.itemsPerPage;
      final endIndex = startIndex + widget.itemsPerPage;
      final max =
          endIndex > widget.episodes.length ? widget.episodes.length : endIndex;
      final nextEpisodes = widget.episodes.sublist(startIndex, max);
      _displayedEpisodes.addAll(nextEpisodes);
      _currentPage++;
      _isLoadingMore = false;
    });
  }

  void _onScroll() {
    if (widget.scrollController.position.pixels >=
            widget.scrollController.position.maxScrollExtent - 200 &&
        !_isLoadingMore) {
      if (_currentPage * widget.itemsPerPage >= widget.episodes.length) {
        return;
      }
      _isLoadingMore = true;
      _loadMoreEpisodes();
    }
  }

  @override
  void dispose() {
    widget.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('EpisodeList rebuilt');
    return ListView.builder(
      shrinkWrap: true,
      itemCount:
          _displayedEpisodes.length + 1, // Add one for the loading indicator
      itemBuilder: (context, index) {
        if (index == _displayedEpisodes.length) {
          return _isLoadingMore
              ? Center(child: CircularProgressIndicator())
              : SizedBox.shrink();
        }
        return EpisodeItem(
          episode: _displayedEpisodes[index],
          itemId: widget.itemId,
        );
      },
    );
  }
}

class EpisodeItem extends StatefulWidget {
  final PodcastEpisode episode;
  final String itemId;

  const EpisodeItem({
    super.key,
    required this.episode,
    required this.itemId,
  });

  @override
  _EpisodeItemState createState() => _EpisodeItemState();
}

class _EpisodeItemState extends State<EpisodeItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: EpisodeHeader(episode: widget.episode, isExpanded: isExpanded),
        ),
        const SizedBox(height: 8),
        EpisodeActions(itemId: widget.itemId, episode: widget.episode),
        const SizedBox(height: 8),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final progress = ref.watch(progressProviderWithItemId(
                ItemEpisodeId(widget.itemId, widget.episode.id)));

            if (progress != null) {
              return LinearProgressIndicator(
                  value: progress.progress!.toDouble());
            }

            return const LinearProgressIndicator(value: 0);
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
