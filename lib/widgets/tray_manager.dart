import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/util/tray_menu_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tray_manager/tray_manager.dart';

class TrayManager extends ConsumerStatefulWidget {
  const TrayManager(this.child, {super.key});

  final Widget child;

  @override
  TrayManagerState createState() => TrayManagerState();
}

class TrayManagerState extends ConsumerState<TrayManager> with TrayListener {
  @override
  void initState() {
    trayManager.addListener(this);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      setStandardMenu();
    });
    super.initState();
  }

  @override
  void dispose() {
    trayManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void onTrayIconMouseDown() {
    trayManager.popUpContextMenu();
  }

  @override
  void onTrayIconRightMouseDown() {}

  @override
  void onTrayIconRightMouseUp() {}

  @override
  void onTrayMenuItemClick(MenuItem menuItem) {
    switch (menuItem.key) {
      case 'fast_forward':
        ref.read(playerProvider.notifier).audioService.fastForward();
        break;
      case 'rewind':
        ref.read(playerProvider.notifier).audioService.rewind();
        break;
      case 'play':
        ref
            .read(playStatusProvider.notifier)
            .setPlayStatus(PlayerStatus.playing, 'tray');
        break;
      case 'pause':
        ref
            .read(playStatusProvider.notifier)
            .setPlayStatus(PlayerStatus.paused, 'tray');
        break;
      case 'stop':
        ref
            .read(playStatusProvider.notifier)
            .setPlayStatus(PlayerStatus.stopped, 'tray');
        break;
      case 'previous_chapter':
        ref.read(playerProvider.notifier).audioService.skipToPrevious();
        break;
      case 'next_chapter':
        ref.read(playerProvider.notifier).audioService.skipToNext();
        break;
    }
  }
}
