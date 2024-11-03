import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/bookmark_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

createBookmark(BuildContext context, PlayerProvider player, WidgetRef ref,
    String? libraryItemId) {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  timeController.text =
      Helper.formatTimeToClock(player.audioService.player.position.inSeconds);

  showPlatformDialog(
    context: context,
    builder: (_) => Builder(
      builder: (innerContext) => PlatformAlertDialog(
        title: PlatformText(S.of(innerContext).createBookmarkTitle),
        content: Row(
          children: [
            Expanded(
              child: PlatformTextField(
                controller: titleController,
              ),
            ),
            const SizedBox(width: 16),
            Flexible(
              child: PlatformTextField(
                enabled: false,
                controller: timeController,
              ),
            ),
          ],
        ),
        actions: [
          PlatformDialogAction(
            child: PlatformText(S.of(innerContext).create),
            onPressed: () async {
              final time = player.audioService.player.position.inSeconds;
              await ref
                  .read(bookmarkProvider)
                  .createBookmark(libraryItemId!, time, titleController.text);
              if (innerContext.mounted) {
                Navigator.of(innerContext, rootNavigator: true).pop();
              }
            },
          ),
          PlatformDialogAction(
            child: PlatformText(S.of(innerContext).close),
            onPressed: () {
              Navigator.of(innerContext, rootNavigator: true).pop();
            },
          ),
        ],
      ),
    ),
  );
}
