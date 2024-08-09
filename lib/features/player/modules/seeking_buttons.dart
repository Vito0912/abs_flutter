import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class SeekingButtons extends StatelessWidget {
  final Stream<Duration> positionStream;
  final PlayerProvider player;
  final bool isForward;
  final double? size;
  const SeekingButtons(
      {super.key,
      required this.positionStream,
      required this.player,
      required this.isForward, this.size});

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
                  ? Icon(size: size, Icons.fast_forward_rounded)
                  : Icon(size: size, Icons.fast_rewind_rounded),
              onPressed: () {
                player.audioService.seek(
                    Duration(
                    seconds:
                    isForward
                        ? (position.data!.inSeconds +
                        Settings.getValue('fastForwardSeconds',
                            defaultValue: 10)!)
                        .round()
                        : (position.data!.inSeconds -
                        Settings.getValue('rewindSeconds',
                            defaultValue: 10)!)
                        .round()


                    )
                );
              });
        });
  }
}
