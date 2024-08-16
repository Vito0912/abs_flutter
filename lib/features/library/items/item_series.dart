import 'dart:math';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/library_items_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemSeries extends StatelessWidget {
  const ItemSeries({super.key, required this.series});
  final LibrarySeriesPreview series;
  static const double width = 175;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final container = ProviderContainer();
        container.read(libraryItemSearchProvider.notifier).state = container.read(libraryItemSearchProvider.notifier).state.copyWith(
          filterKey: 'series',
          filter: series.id,
        );
        tabController.setIndex(context, 0);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: width * 2,
          child: Column(
            children: [
              Stack(
                children: _buildItems(),
              ),
              PlatformText(
                series.name,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8.0),
              PlatformText(
                series.books.length.toString(),
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    List<Widget> items = [];
    for (var i = 0; i < min(series.books.length, 6); i++) {
      items.add(
        Padding(
          padding: EdgeInsets.only(left: ((width) / (min(series.books.length, 6) - 1)) * i),
          child: AlbumImage(series.books[i].id, size: width)
        ),
      );
    }
    return items;
  }
}
