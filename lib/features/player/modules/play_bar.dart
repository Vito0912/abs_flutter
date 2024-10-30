import 'package:abs_flutter/features/player/modules/chapter_buttons.dart';
import 'package:abs_flutter/features/player/modules/play_button.dart';
import 'package:abs_flutter/features/player/modules/seeking_buttons.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:flutter/material.dart';

class PlayBar extends StatelessWidget {
  final Stream<Duration> positionStream;
  final PlayerProvider player;
  final PlayerStatusProvider playerStatus;
  final double size;
  final Chapter? currentChapter;

  const PlayBar(
      {super.key,
      required this.positionStream,
      required this.player,
      required this.playerStatus,
      required this.size,
      this.currentChapter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (currentChapter != null)
          ChapterButtons(
            positionStream: positionStream,
            player: player,
            size: size,
            isForward: false,
            currentChapter: currentChapter!,
          ),
        SeekingButtons(
          positionStream: positionStream,
          player: player,
          size: size,
          isForward: false,
        ),
        PlayButton(size: size, playerStatusProvider: playerStatus),
        SeekingButtons(
          positionStream: positionStream,
          player: player,
          size: size,
          isForward: true,
        ),
        if (currentChapter != null)
          ChapterButtons(
            positionStream: positionStream,
            player: player,
            size: size,
            isForward: true,
            currentChapter: currentChapter!,
          ),
      ],
    );
  }
}
