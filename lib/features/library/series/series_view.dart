import 'package:abs_flutter/features/library/item_components/item_series.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/series_provider.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SeriesView extends ConsumerStatefulWidget {
  const SeriesView({Key? key}) : super(key: key);

  @override
  _SeriesViewState createState() => _SeriesViewState();
}

class _SeriesViewState extends ConsumerState<SeriesView> {
  final ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  int currentPage = 0;
  bool hasMore = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _fetchSeries();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 200 &&
        !isLoading &&
        hasMore) {
      _fetchSeries(loadMore: true);
    }
  }

  Future<void> _fetchSeries({bool loadMore = false}) async {
    if (isLoading) return;

    setState(() {
      isLoading = true;
    });

    try {
      await ref
          .read(seriesProvider.notifier)
          .fetchSeries(page: currentPage, loadMore: loadMore);

      final seriesState = ref.read(seriesProvider);

      seriesState.whenData((data) {
        final totalResults = data?.total ?? 0;
        final fetchedResults = data?.results?.length ?? 0;

        setState(() {
          if (loadMore) {
            currentPage++;
          }
          hasMore = fetchedResults < totalResults;
          isLoading = false;
        });
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        hasMore = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final seriesAsyncValue = ref.watch(seriesProvider);

    ref.listen(currentLibraryProvider, (old, newVal) {
      ref.read(seriesProvider.notifier).resetSeries();
    });

    return seriesAsyncValue.when(
      data: (data) {
        if (data == null || data.results == null || data.results!.isEmpty) {
          return const Center(child: Text('No series found'));
        }

        final seriesList = data.results!
            .where((series) => series.books != null && series.books!.isNotEmpty)
            .toList();

        if (seriesList.isEmpty) {
          return const Center(child: Text('No series found'));
        }

        return RefreshIndicator(
          onRefresh: () {
            return Future.wait([
              ref.read(seriesProvider.notifier).resetSeries(),
              ref.read(progressProvider).getAllProgress()
            ]);
          },
          child: LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount =
                  (constraints.maxWidth / 325).floor().clamp(1, 4);

              return AlignedGridView.count(
                controller: _scrollController,
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 8,
                crossAxisSpacing: 12,
                itemCount: seriesList.length + (isLoading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == seriesList.length) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final currentSeries = seriesList[index];
                  final books = currentSeries.books!
                      .map((bookItem) => LibraryPreviewItem(
                            id: bookItem.id,
                            title: bookItem.media?.bookMedia?.metadata.title ??
                                'Unknown Title',
                            subtitle:
                                bookItem.media?.bookMedia?.metadata.subtitle ??
                                    '',
                            authors: bookItem.media?.bookMedia?.metadata.authors
                                    ?.map((e) => e.name ?? 'Unknown Author')
                                    .toList() ??
                                [],
                            mediaType: bookItem.mediaType ?? 'Unknown',
                          ))
                      .toList();

                  final seriesItem = LibrarySeriesPreview(
                    books: books,
                    total: data.total ?? 0,
                    page: data.page ?? 0,
                    id: currentSeries.id!,
                    libraryId: currentSeries.books!.first.libraryId ?? '',
                    name: currentSeries.name ?? 'Unnamed Series',
                  );

                  return ItemSeries(series: seriesItem);
                },
              );
            },
          ),
        );
      },
      // TODO: Shimmer <loading
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: ErrorText(error.toString())),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
