import 'package:abs_flutter/api/library_items/audio_file.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/features/library/item/book/progress.dart';
import 'package:abs_flutter/features/player/modules/bookmarks.dart';
import 'package:abs_flutter/features/player/modules/chapters.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/bookmark_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Metainfo extends ConsumerWidget {
  const Metainfo({super.key, required this.castItem});

  final LibraryItem castItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Bookmark>? bookmarks =
        ref.watch(bookmarkProvider).getBookmarksForItem(castItem.id);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Progress(
          item: castItem,
        ),
        const SizedBox(height: 16.0),
        if (castItem.media?.bookMedia?.audioFiles != null) ...[
          PlatformText(
            S.of(context).itemLength(Helper.formatTimeToReadable(_totalDuration(
                castItem.media!.bookMedia!.audioFiles!.toList()))),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        const SizedBox(height: 4.0),
        if (castItem.media!.bookMedia?.metadata.publishedYear != null) ...[
          PlatformText(
            S.of(context).itemPublishedYear(
                castItem.media!.bookMedia!.metadata.publishedYear.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        if (castItem.media!.bookMedia?.chapters != null &&
            castItem.media!.bookMedia!.chapters!.isNotEmpty) ...[
          const SizedBox(height: 4.0),
          PlatformText(
            S.of(context).itemNumChapters(
                castItem.media!.bookMedia!.chapters!.length.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 4.0),
          Chapters(
              chapters: castItem.media!.bookMedia!.chapters!
                  .map((e) => {
                        'title': e.title,
                        'start': e.start,
                        'end': e.end,
                      })
                  .toList(),
              child: PlatformText(S.of(context).viewChapters)),
          const SizedBox(height: 4.0),
          if (bookmarks != null && bookmarks.isNotEmpty)
            Bookmarks(
              bookmarks: bookmarks,
              libraryItemId: castItem.id,
              child: PlatformText(S.of(context).viewBookmarks),
            ),
        ],
      ],
    );
  }

  double _totalDuration(List<AudioFile> files) {
    double total = 0;
    for (var file in files) {
      total += file.duration!;
    }
    return total;
  }
}
