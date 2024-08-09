import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlayButton extends StatelessWidget {
  final PlayerStatusProvider playerStatusProvider;
  final double? size;
  const PlayButton({super.key, required this.playerStatusProvider, this.size});

  @override
  Widget build(BuildContext context) {
    final playerStatus = playerStatusProvider.playStatus;
    return PlatformIconButton(
        icon: _getIcon(playerStatus, context),
        onPressed: () {
          _actionButtonPressed(playerStatus, playerStatusProvider);
        });
  }

  Widget _getIcon(PlayerStatus playerStatus, BuildContext context) {
    switch (playerStatus) {
      case PlayerStatus.playing:
        return Icon(size: size, PlatformIcons(context).pause);
      case PlayerStatus.paused:
        return Icon(size: size, PlatformIcons(context).playArrow);
      case PlayerStatus.loading:
        return PlatformCircularProgressIndicator();
      default:
        return Icon(size: size, PlatformIcons(context).playArrow);
    }
  }

  void _actionButtonPressed(
      PlayerStatus playerStatus, PlayerStatusProvider playerStatusProvider) {
    switch (playerStatus) {
      case PlayerStatus.playing:
        playerStatusProvider.setPlayStatus(PlayerStatus.paused, "Pause button pressed");
        break;
      case PlayerStatus.paused:
        playerStatusProvider.setPlayStatus(PlayerStatus.playing, "Play button pressed");
        break;
      case PlayerStatus.loading:
        break;
      default:
        playerStatusProvider.setPlayStatus(PlayerStatus.playing, "Play button pressed");
    }
  }
}
