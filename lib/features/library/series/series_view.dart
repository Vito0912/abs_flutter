import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/items/item_series.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/series_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeriesView extends ConsumerWidget {
  const SeriesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final series = ref.watch(seriesProvider);

    if (series.value == null || series.value!.results == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final ignoredEmpty = series.value!.results!
        .where((element) => element.books != null && element.books!.isNotEmpty)
        .toList();

    if(ignoredEmpty.isEmpty) {
      return const Center(child: Text('No series found'));
    }

    return Center(
      child: SizedBox(
        width: 180 * 2,
        child: ListView.builder(
          itemCount: ignoredEmpty.length,
          itemBuilder: (BuildContext context, int index) {
            final SeriesBooks currentSeries = ignoredEmpty[index];
            final List<LibraryPreviewItem> books = [];
            String? libraryId;

            for (LibraryItemSequence bookItem in currentSeries.books ?? []) {
              if (bookItem.libraryId != null) libraryId = bookItem.libraryId!;
              final LibraryPreviewItem book = LibraryPreviewItem(
                  id: bookItem.id!,
                  title: bookItem.media!.metadata!.title!,
                  subtitle: bookItem.media!.metadata!.subtitle ?? '',
                  authors: bookItem.media!.metadata!.authors
                          ?.map((e) => e.name!)
                          .toList() ??
                      [],
                  mediaType: bookItem.mediaType!.name);
              books.add(book);
            }

            final LibrarySeriesPreview seriesItem = LibrarySeriesPreview(
                books: books,
                total: series.value!.total ?? 0,
                page: series.value!.page ?? 0,
                id: currentSeries.id!,
                libraryId: libraryId!,
                name: currentSeries.name!);

            return ItemSeries(series: seriesItem);
          },
        ),
      ),
    );
  }
}
