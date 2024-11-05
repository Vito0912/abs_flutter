import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/library/stats/author_stats.dart';
import 'package:abs_flutter/api/library/stats/genre_stats.dart';
import 'package:abs_flutter/api/library/stats/library_item_duration_stats.dart';
import 'package:abs_flutter/api/library/stats/library_item_size_stats.dart';
import 'package:abs_flutter/api/library/stats/library_stats.dart' as abs;
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/stats_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryStats extends ConsumerWidget {
  const LibraryStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final abs.LibraryStats? libraryStats = ref.watch(libraryStatsProvider);
    final ModelLibrary? currentLibrary = ref.watch(currentLibraryProvider);

    if (libraryStats == null || currentLibrary == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlatformText(
                  currentLibrary.name!,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  runAlignment: WrapAlignment.spaceBetween,
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    _buildInfoRow(
                        Icons.book,
                        libraryStats.totalItems.toString(),
                        S.of(context).totalItems,
                        context,
                        padding: 8),
                    _buildInfoRow(
                        Icons.timer,
                        Helper.formatTimeToReadable(libraryStats.totalDuration,
                            short: true),
                        S.of(context).totalDuration,
                        context,
                        padding: 8),
                    _buildInfoRow(
                        Icons.person,
                        libraryStats.totalAuthors.toString(),
                        S.of(context).totalAuthors,
                        context,
                        padding: 8),
                    _buildInfoRow(
                        Icons.category,
                        libraryStats.totalGenres.toString(),
                        S.of(context).totalGenres,
                        context,
                        padding: 8),
                  ],
                ),
                const SizedBox(height: 32),
                PlatformText(
                  S.of(context).longestItems,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      runSpacing: 4.0,
                      children: _buildLongestItems(context, libraryStats)),
                ),
                const SizedBox(height: 16),
                PlatformText(
                  S.of(context).largestItems,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      runSpacing: 4.0,
                      children: _buildLargestItems(context, libraryStats)),
                ),
                const SizedBox(height: 16),
                PlatformText(
                  S.of(context).topAuthors,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      runSpacing: 4.0,
                      children: _buildAuthorItems(context, libraryStats)),
                ),
                const SizedBox(height: 16),
                PlatformText(
                  S.of(context).topGenres,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                      runSpacing: 4.0,
                      children: _buildGenresItems(context, libraryStats)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildLongestItems(
      BuildContext context, abs.LibraryStats libraryStats) {
    List<Widget> items = [];

    if(libraryStats.longestItems == null) {
      items.add( PlatformText('No items found'));
      return items;
    }

    for (LibraryItemDurationStats item in libraryStats.longestItems!) {
      items.add(_buildBarChart(
          context,
          item.title,
          Helper.formatTimeToReadable(item.duration, short: true),
          item.duration / libraryStats.longestItems![0].duration));
    }

    return items;
  }

  List<Widget> _buildLargestItems(
      BuildContext context, abs.LibraryStats libraryStats) {
    List<Widget> items = [];

    if(libraryStats.largestItems == null) {
      items.add( PlatformText('No items found'));
      return items;
    }

    for (LibraryItemSizeStats item in libraryStats.largestItems!) {
      items.add(_buildBarChart(
        context,
        item.title,
        Helper.formatBytes(item.size),
        item.size / libraryStats.largestItems![0].size,
      ));
    }

    return items;
  }

  List<Widget> _buildAuthorItems(
      BuildContext context, abs.LibraryStats libraryStats) {
    List<Widget> items = [];

    if(libraryStats.authorsWithCount == null) {
      items.add( PlatformText('No items found'));
      return items;
    }

    for (AuthorStats item in libraryStats.authorsWithCount!) {
      items.add(_buildBarChart(
        context,
        item.name,
        item.count.toString(),
        item.count / libraryStats.authorsWithCount![0].count,
        endWidth: 50,
        percentage: 0.2,
      ));
    }

    return items;
  }

  List<Widget> _buildGenresItems(
      BuildContext context, abs.LibraryStats libraryStats) {
    List<Widget> items = [];

    if(libraryStats.genresWithCount == null) {
      items.add( PlatformText('No items found'));
      return items;
    }

    for (GenreStats item in libraryStats.genresWithCount!) {
      items.add(_buildBarChart(
        context,
        item.genre,
        item.count.toString(),
        item.count / libraryStats.genresWithCount![0].count,
        endWidth: 50,
        percentage: 0.2,
      ));
    }

    return items;
  }

  Widget _buildBarChart(
      BuildContext context, String title, String subtitle, double value,
      {double endWidth = 75, double percentage = 0.35}) {
    return LayoutBuilder(builder: (context, BoxConstraints constraints) {
      return Row(
        children: [
          Container(
            width: constraints.maxWidth * percentage,
            constraints: const BoxConstraints(maxWidth: 200),
            child: Tooltip(
              message: title,
              child: PlatformText(
                title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Theme.of(context).colorScheme.onSurface,
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
          SizedBox(
            width: endWidth,
            child: PlatformText(
              subtitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ],
      );
    });
  }

  Widget _buildInfoRow(
      IconData icon, String mainText, String subText, BuildContext context,
      {double? padding = 2}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.all(padding ?? 0),
          child: Icon(
            icon,
            size: 48 - ((padding ?? 0) * 2),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlatformText(
              mainText,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 1,
            ),
            PlatformText(
              subText,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge,
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
