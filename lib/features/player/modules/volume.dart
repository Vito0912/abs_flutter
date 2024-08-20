import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Volume extends StatelessWidget {
  const Volume(
      {super.key, required this.volumeStream, required this.player, this.size});
  final Stream<double> volumeStream;
  final PlayerProvider player;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(maxWidth: 300),
        child: Row(
          children: [
            Icon(context.platformIcons.volumeDown),
            Expanded(
              child: StreamBuilder<double>(
                  stream: volumeStream,
                  builder:
                      (BuildContext context, AsyncSnapshot<double> snapshot) {
                    return PlatformSlider(
                      value: snapshot.data ?? 0.0,
                      onChanged: (double value) {
                        player.audioService.setVolume(value);
                      },
                    );
                  }),
            ),
            Icon(context.platformIcons.volumeUp),
          ],
        ),
      ),
    );
  }
}
