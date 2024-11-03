import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/features/player/modules/create_bookmark.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/bookmark_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Bookmarks extends ConsumerWidget {
  final List<Bookmark> bookmarks;
  final String? libraryItemId;
  final Widget child;

  const Bookmarks(
      {super.key,
      required this.bookmarks,
      required this.child,
      required this.libraryItemId})
      : super();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref.watch(playerProvider);
    final isPlaying = player.audioService.mediaItem.value != null;

    return IconButton(
      icon: child,
      onPressed: () {
        // Open the chapters dialog
        showPlatformDialog(
          context: context,
          builder: (_) => PlatformAlertDialog(
            title: Text(S.of(context).chaptersNum(bookmarks.length)),
            content: Container(
              constraints: BoxConstraints(
                maxWidth: 500,
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              width: double.maxFinite,
              child: Consumer(builder: (context, ref, child) {
                final bookmarks = ref
                    .watch(bookmarkProvider)
                    .getBookmarksForItem(libraryItemId);
                if (bookmarks == null) {
                  log('Bookmarks are null', name: 'bookmarks');
                  return ErrorText(S.of(context).error);
                }
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final Bookmark bookmark = bookmarks[index];
                    return ListTile(
                      onTap: isPlaying
                          ? () {
                              player.audioService
                                  .seek(Duration(seconds: bookmark.time));
                            }
                          : null,
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Tooltip(
                                      message: bookmark.title,
                                      child: Text(
                                        bookmark.title,
                                        overflow: TextOverflow.ellipsis,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          PlatformIconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () async {
                              await ref.read(bookmarkProvider).deleteBookmark(
                                  bookmark.libraryItemId, bookmark.time);
                            },
                          ),
                          const SizedBox(width: 16),
                          PlatformText(
                            Helper.formatTimeToClock(bookmark.time),
                            style: Theme.of(context).textTheme.labelSmall,
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: bookmarks.length,
                );
              }),
            ),
            actions: [
              if (libraryItemId != null)
                PlatformDialogAction(
                  child: PlatformText(S.of(context).createBookmark),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    createBookmark(context, player, ref, libraryItemId);
                  },
                ),
              PlatformDialogAction(
                child: PlatformText(S.of(context).close),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
