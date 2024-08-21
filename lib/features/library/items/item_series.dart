import 'dart:math';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ItemSeries extends ConsumerWidget {
  const ItemSeries({super.key, required this.series, this.clickable = true});
  final LibrarySeriesPreview series;
  final bool clickable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      final width = constraints.maxWidth / 2 - 8;
      return InkWell(
        onTap: clickable
            ? () {
                ref.read(libraryItemSearchProvider.notifier).state =
                    ref.read(libraryItemSearchProvider.notifier).state.copyWith(
                          filterKey: 'series',
                          filter: series.id,
                          sort: 'sequence',
                          desc: 1,
                        );
                context.push('/series-view/${series.name}');
              }
            : null,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width * 2,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SizedBox(
                    height: width,
                    child: Stack(
                      children: [
                        ..._buildItems(width),
                        Consumer(
                          builder: (BuildContext context, WidgetRef ref,
                              Widget? child) {
                            final progress = ref.watch(progressProvider);

                            List<MediaProgress?> progressList = [];

                            for (var book in series.books) {
                              progressList
                                  .add(progress.progress?[book.id.toString()]);
                            }

                            final progressValue = progressList
                                    .map((e) => e?.progress ?? 0.0)
                                    .reduce((a, b) => a + b) /
                                progressList.length;

                            return Align(
                              alignment: Alignment.bottomCenter,
                              child: LinearProgressIndicator(
                                value: progressValue.toDouble(),
                                semanticsValue:
                                    progressValue.toStringAsFixed(2),
                                semanticsLabel: S.of(context).progressNum(
                                    progressValue.toStringAsFixed(2)),
                                minHeight: 5.0,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.green),
                                backgroundColor: Colors.white.withOpacity(0.3),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                PlatformText(
                  series.name,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                PlatformText(
                  S
                      .of(context)
                      .numBooksInSeries(series.books.length.toString()),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  List<Widget> _buildItems(double width) {
    List<Widget> items = [];
    for (var i = 0; i < min(series.books.length, 6); i++) {
      items.add(
        Padding(
            padding: EdgeInsets.only(
                left: ((width) / (min(series.books.length, 6) - 1)) * i),
            child: AlbumImage(series.books[i].id, size: width)),
      );
    }
    return items.reversed.toList();
  }
}
