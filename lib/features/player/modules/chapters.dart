import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Chapters extends ConsumerWidget {
  final List<dynamic> chapters;
  final Widget child;

  const Chapters({super.key, required this.chapters, required this.child})
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
            title: Text(S.of(context).chaptersNum(chapters.length)),
            content: Container(
              constraints: BoxConstraints(
                maxWidth: 500,
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final chapter = chapters[index];
                  return ListTile(
                    onTap: isPlaying
                        ? () {
                            player.audioService.seek(Duration(
                                seconds:
                                    double.parse(chapter['start'].toString())
                                        .toInt()));
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
                                    message: chapter['title'],
                                    child: Text(
                                      chapter['title'],
                                      overflow: TextOverflow.ellipsis,
                                    )),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        PlatformText(Helper.formatTimeToClock(chapter['start']),
                            style: Theme.of(context).textTheme.labelSmall)
                      ],
                    ),
                    subtitle: PlatformText(
                        Helper.formatTimeToReadable(
                            chapter['end'] - chapter['start'],
                            short: true,
                            precise: true),
                        style: Theme.of(context).textTheme.labelSmall),
                  );
                },
                itemCount: chapters.length,
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
