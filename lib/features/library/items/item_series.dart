import 'dart:math';

import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ItemSeries extends StatelessWidget {
  const ItemSeries({super.key, required this.series});
  final LibrarySeriesPreview series;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
    );
  }

  List<Widget> _buildItems() {
    List<Widget> items = [];
    const double width = 350;
    for (var i = 0; i < min(series.books.length, 6); i++) {
      items.add(
        Padding(
          padding: EdgeInsets.only(left: (width / min(series.books.length, 6)) * i),
          child: AlbumImage(series.books[i].id, size: 175)
        ),
      );
    }
    return items;
  }
}
