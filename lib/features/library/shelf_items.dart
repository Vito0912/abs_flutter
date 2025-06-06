import 'dart:convert';
import 'dart:ui';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item_components/item_series.dart';
import 'package:abs_flutter/features/library/item_components/library_item_widget.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:abs_flutter/models/library_series_preview.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/shelf_provider.dart';
import 'package:abs_flutter/widgets/shimmer_placeholder.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ShelfItems extends ConsumerWidget {
  const ShelfItems({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shelf = ref.watch(shelfProvider);

    if (shelf.value == null) {
      return _buildShimmerLoading(context);
    }

    final sections = {
      'continue-listening': S.of(context).continueListening,
      'continue-series': S.of(context).continueSeries,
      'newest-episodes': S.of(context).newestEpisodes,
      'recently-added': S.of(context).recentlyAdded,
      'recent-series': S.of(context).recentSeries,
      'discover': S.of(context).discover,
      'listen-again': S.of(context).listenAgain,
    };

    return RefreshIndicator.adaptive(
      onRefresh: () {
        return Future.wait([
          ref.refresh(shelfProvider.future),
          ref.read(progressProvider).getAllProgress()
        ]);
      },
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sections.entries
              .map((entry) =>
                  _buildSection(context, shelf.value!, entry.key, entry.value))
              .where((widget) => widget != null)
              .cast<Widget>()
              .toList(),
        ),
      ),
    );
  }

  Widget _buildShimmerLoading(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
            List.generate(5, (index) => _buildShimmerSection(context)).toList(),
      ),
    );
  }

  Widget _buildShimmerSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: ShimmerPlaceholder(
                height: 24.0,
                width: 250,
              )),
          const SizedBox(height: 8.0),
          ScrollConfiguration(
            behavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown,
              },
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    List.generate(5, (index) => _buildShimmerItem(context))
                        .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerItem(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(8.0),
        child: ShimmerPlaceholder(
          width: 175,
          height: 200,
        ));
  }

  Widget? _buildSection(BuildContext context, BuiltList<LibraryShelf> shelf,
      String id, String title) {
    final section = shelf.firstWhereOrNull((element) => element.id == id);
    if (section == null) return null;

    late final List<Widget> content;

    switch (id) {
      case 'newest-episodes':
        content = _buildEpisodesContent(section.entities!, context);
      case 'recent-series':
        content = _buildSeriesContent(section.entities!, context);
        break;
      default:
        content = _buildItemContent(section.entities!, context);
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: PlatformText(title,
                style: Theme.of(context).textTheme.titleLarge),
          ),
          const SizedBox(height: 8.0),
          ScrollConfiguration(
            behavior: const MaterialScrollBehavior().copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
                PointerDeviceKind.stylus,
                PointerDeviceKind.unknown,
              },
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: content),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildItemContent(
      BuiltList<LibraryShelfEntitiesInner> entities, BuildContext context) {
    return entities.map((item) {
      final libItem = LibraryPreviewItem(
        id: item.id!,
        title: item.media!.metadata!.title!,
        subtitle: item.media!.metadata?.subtitle ?? '',
        authors: item.media!.metadata?.authorName?.split(',') ?? [],
        mediaType: item.mediaType!.name,
      );
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: LibraryItemWidget(item: libItem),
      );
    }).toList();
  }

  List<Widget> _buildSeriesContent(
      BuiltList<LibraryShelfEntitiesInner> entities, BuildContext context) {
    return entities.map((item) {
      final books = item.books?.map((book) {
            return LibraryPreviewItem(
              id: book.id!,
              title: book.media!.metadata!.title!,
              subtitle: book.media!.metadata!.subtitle ?? '',
              authors: book.media?.metadata?.authorName?.split(',') ?? [],
              mediaType: book.mediaType!.name,
            );
          }).toList() ??
          [];

      final series = LibrarySeriesPreview(
        books: books,
        total: books.length,
        page: 1,
        id: item.id!,
        libraryId: item.libraryId!,
        name: item.name!,
        description: item.description,
      );
      String base64Id = Uri.encodeComponent(base64.encode(utf8.encode(series.id)));
      String base64Name = Uri.encodeComponent(base64.encode(utf8.encode(series.name ?? '')));
      return Container(
          constraints: const BoxConstraints(maxWidth: 350),
          child: MultiItem('/series-view/$base64Name/$base64Id',
              series: series));
    }).toList();
  }

  List<Widget> _buildEpisodesContent(
      BuiltList<LibraryShelfEntitiesInner> entities, BuildContext context) {
    return entities.map((item) {
      final libItem = LibraryPreviewItem(
        id: item.id!,
        title: item.recentEpisode!.title!,
        authors:
            item.media!.metadata?.authors?.map((e) => e.name!).toList() ?? [],
        mediaType: item.mediaType!.name,
        subtitle: item.media!.metadata!.title!,
        episodeId: item.recentEpisode?.id,
      );
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: LibraryItemWidget(item: libItem),
      );
    }).toList();
  }
}
