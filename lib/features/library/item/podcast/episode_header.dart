import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:intl/intl.dart';

class EpisodeHeader extends StatelessWidget {
  final PodcastEpisode episode;
  final bool isExpanded;

  const EpisodeHeader(
      {super.key, required this.episode, required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          episode.title!,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          children: [
            if (episode.publishedAt != null)
              PlatformText(
                DateFormat.yMMMd().format(
                  DateTime.fromMillisecondsSinceEpoch(episode.publishedAt!),
                ),
                style: Theme.of(context).textTheme.labelSmall,
              ),
            if (episode.season != null) const SizedBox(width: 8),
            if (episode.season != null)
              PlatformText(
                'Season ${episode.season}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            if (episode.episode != null) const SizedBox(width: 8),
            if (episode.episode != null)
              PlatformText(
                'Episode ${episode.episode}',
                style: Theme.of(context).textTheme.labelSmall,
              ),
          ],
        ),
        if (episode.subtitle != null)
          PlatformText(
            episode.subtitle!,
          ),
        if (isExpanded && episode.description != null) ...[
          const Divider(),
          HtmlWidget(
            onTapUrl: (url) => Helper.launchUrl(url),
            episode.description!,
          ),
        ]
      ],
    );
  }
}
