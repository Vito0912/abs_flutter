import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/chapter_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class ChapterButtons extends StatelessWidget {
  final Stream<Duration> positionStream;
  final PlayerProvider player;
  final bool isForward;
  final Chapter currentChapter;
  const ChapterButtons(
      {super.key,
      required this.positionStream,
      required this.player,
      required this.isForward,
      required this.currentChapter});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Duration>(
        stream: positionStream,
        builder: (BuildContext context, AsyncSnapshot<Duration?> position) {
          if (!position.hasData) {
            return const SizedBox.shrink();
          }
          return PlatformIconButton(
              icon: isForward
                  ? const Icon(Icons.skip_next_outlined)
                  : const Icon(Icons.skip_previous_outlined),
              onPressed: () {
                player.audioService.seek(Duration(
                  seconds: isForward
                      ? currentChapter.end.toInt() + 1
                      : currentChapter.start.toInt() - 1,
                ));
              });
        });
  }
}
