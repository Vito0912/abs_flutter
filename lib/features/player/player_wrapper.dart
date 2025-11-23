import 'package:abs_flutter/features/player/player_minified.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PlayerWrapper extends ConsumerWidget {
  final Widget child;

  const PlayerWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider).playStatus;
    final player = ref.watch(playerProvider);
    final showMiniPlayer = playerStatus != PlayerStatus.stopped &&
        player.audioService.mediaItem.value != null &&
        Helper.getCurrentRoute(GoRouter.of(context)) != '/player';

    return Column(
      children: <Widget>[
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            removeBottom: showMiniPlayer,
            child: showMiniPlayer
                ? child
                : SafeArea(top: false, bottom: true, child: child),
          ),
        ),
        if (showMiniPlayer)
          Container(
            color: Theme.of(context).colorScheme.surface,
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: const PlayerMinified(),
          ),
      ],
    );
  }
}
