import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LibraryItemWidget extends StatelessWidget {
  const LibraryItemWidget({super.key, required this.item});
  final LibraryPreviewItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        radius: 16,
        onTap: () {
          context.push('/view/${item.mediaType}/${item.id}');
        },
        child: _content(context));
  }

  Widget _content(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 175),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(children: [
                AlbumImage(item.id),
                if (item.mediaType != 'podcast' || item.episodeId != null)
                  Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) {
                      final progress = ref.watch(progressProviderWithItemId(
                          ItemEpisodeId(item.id, item.episodeId)));
                      num progressValue = progress?.progress ?? 0.0;

                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: LinearProgressIndicator(
                          value: progressValue.toDouble(),
                          semanticsValue: progressValue.toStringAsFixed(2),
                          semanticsLabel: S
                              .of(context)
                              .progressNum(progressValue.toStringAsFixed(2)),
                          minHeight: 5.0,
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.green),
                          backgroundColor: Colors.white.withOpacity(0.3),
                        ),
                      );
                    },
                  )
              ]),
            ),
          ),
          const SizedBox(height: 4.0),
          PlatformText(item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge),
          if (item.subtitle.isNotEmpty)
            PlatformText(item.subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 4.0),
          if (item.authors.isNotEmpty)
            PlatformText(item.authors.join(", "),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall)
        ],
      ),
    );
  }
}
