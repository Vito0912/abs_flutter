import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_action.dart';
import 'package:abs_flutter/features/library/item/podcast/episode_header.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EpisodeList extends StatelessWidget {
  final List<PodcastEpisode> episodes;
  final String itemId;

  const EpisodeList({super.key, required this.episodes, required this.itemId});

  @override
  Widget build(BuildContext context) {
    print('EpisodeList rebuilt');
    return Column(
      children: episodes
          .map((episode) => EpisodeItem(
                episode: episode,
                itemId: itemId,
              ))
          .toList(),
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
          child:
              EpisodeHeader(episode: widget.episode, isExpanded: isExpanded),
        ),
        const SizedBox(height: 8),
        EpisodeActions(itemId: widget.itemId, episode: widget.episode),
        const SizedBox(height: 8),
        Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final progress = ref.watch(progressProviderWithItemId(
                ItemEpisodeId(widget.itemId, widget.episode.id)));

            if(progress != null) {
              return LinearProgressIndicator(value: progress.progress!.toDouble());
            }

            return const LinearProgressIndicator(value: 0);
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
