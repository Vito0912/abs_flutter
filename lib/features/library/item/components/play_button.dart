import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayButton extends ConsumerWidget {
  const PlayButton(
      {super.key,
      required this.itemId,
      required this.mediaType,
      this.episodeId});

  final String itemId;
  final String mediaType;
  final String? episodeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final session = ref.watch(sessionProvider.notifier);

    return PlatformElevatedButton(
      onPressed: () {
        if (playerStatus.playStatus == PlayerStatus.playing) {
          playerStatus.setPlayStatus(
              PlayerStatus.stopped, "Close player via play button");
        } else {
          session.load(itemId, episodeId);
        }
      },
      child: playerStatus.playStatus == PlayerStatus.loading
          ? SizedBox(
              width: 16, height: 16, child: PlatformCircularProgressIndicator())
          : (playerStatus.playStatus == PlayerStatus.playing &&
                  ((session.session != null &&
                      session.session!.libraryItemId == itemId &&
                      session.session!.episodeId == episodeId)))
              ? const Icon(Icons.stop)
              : const Icon(Icons.play_arrow),
    );
  }
}
