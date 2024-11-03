import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Bookmarks extends ConsumerWidget {
  final List<Bookmark> bookmarks;
  final Widget child;

  const Bookmarks({super.key, required this.bookmarks, required this.child})
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
              child: ListView.builder(
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
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        PlatformText(Helper.formatTimeToClock(bookmark.time),
                            style: Theme.of(context).textTheme.labelSmall)
                      ],
                    ),
                  );
                },
                itemCount: bookmarks.length,
              ),
            ),
            actions: [
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
