import 'dart:convert';

import 'package:abs_flutter/api/library/collapsed_series.dart';
import 'package:abs_flutter/features/library/item_components/top_label.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/shimmer_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LibraryItemWidget extends StatelessWidget {
  final LibraryPreviewItem? item;
  final bool isLoading;
  final CollapsedSeries? collapseSeries;

  const LibraryItemWidget._(
      {super.key, this.item, required this.isLoading, this.collapseSeries});

  factory LibraryItemWidget.loading() {
    return const LibraryItemWidget._(
      isLoading: true,
      collapseSeries: null,
    );
  }

  factory LibraryItemWidget(
      {required LibraryPreviewItem item, CollapsedSeries? collapseSeries}) {
    return LibraryItemWidget._(
        item: item, isLoading: false, collapseSeries: collapseSeries);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: 16,
      onTap: isLoading
          ? null
          : () {
              if (collapseSeries != null) {
                String base64Id = Uri.encodeComponent(base64.encode(utf8.encode(collapseSeries!.id)));
                String base64Name = Uri.encodeComponent(base64.encode(utf8.encode(collapseSeries!.name ?? '')));
                context.push(
                    '/series-view/$base64Name/$base64Id');
              } else {
                context.push('/view/${item!.mediaType}/${item!.id}');
              }
            },
      child: _content(context),
    );
  }

  Widget _content(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 175),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: isLoading
            ? _buildLoadingContent(context)
            : _buildLoadedContent(context),
      ),
    );
  }

  List<Widget> _buildLoadedContent(BuildContext context) {
    return [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              AlbumImage(
                item!.id,
                hasAudio: item?.hasAudio ?? false,
                hasBook: item?.hasBook ?? false,
                label: collapseSeries?.numBooks != null
                    ? S.of(context).numBooksInSeries(collapseSeries!.numBooks!)
                    : null,
              ),
              if (item!.mediaType != 'podcast' || item!.episodeId != null)
                Consumer(
                  builder:
                      (BuildContext context, WidgetRef ref, Widget? child) {
                    final progress = ref.watch(progressProviderWithItemId(
                        ItemEpisodeId(item!.id, item!.episodeId)));
                    num progressValue = progress?.progress ?? 0.0;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        item?.seriesLabel == null
                            ? const SizedBox.shrink()
                            : TopLabel(item!.seriesLabel!),
                        LinearProgressIndicator(
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
                      ],
                    );
                  },
                ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 4.0),
      PlatformText(
          item?.collapsedSeries == null
              ? item!.title
              : item!.collapsedSeries!.name!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelLarge),
      if (item!.subtitle.isNotEmpty && item?.collapsedSeries == null)
        PlatformText(item!.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall),
      const SizedBox(height: 4.0),
      if (item!.authors.isNotEmpty)
        PlatformText(item!.authors.join(", "),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall),
    ];
  }

  List<Widget> _buildLoadingContent(BuildContext context) {
    return [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: const AspectRatio(
          aspectRatio: 1,
          child: ShimmerPlaceholder(),
        ),
      ),
      const SizedBox(height: 4.0),
      const ShimmerPlaceholder(
        height: 16.0,
        width: 150.0,
      ),
      const SizedBox(height: 4.0),
      const ShimmerPlaceholder(
        height: 14.0,
        width: 80.0,
      ),
      const SizedBox(height: 4.0),
      const ShimmerPlaceholder(
        height: 14.0,
        width: 50.0,
      ),
    ];
  }
}
