import 'package:abs_flutter/generated/l10n.dart';
import 'package:tray_manager/tray_manager.dart';
import 'package:window_manager/window_manager.dart';

Menu standardMenu() {
  return Menu(
    items: [
      MenuItem(
        key: 'show',
        label: S.current.show,
        onClick: (item) {
          windowManager.show();
        },
      ),
      MenuItem(
        key: 'hide',
        label: S.current.hide,
        onClick: (item) {
          windowManager.hide();
        },
      ),
      MenuItem(
        key: 'minimize',
        label: S.current.minimize,
        onClick: (item) {
          windowManager.minimize();
        },
      ),
      MenuItem.separator(),
      MenuItem(
        key: 'exit',
        label: S.current.exit,
        onClick: (item) {
          windowManager.close();
        },
      ),
    ],
  );
}

Menu playerMenu() {
  return Menu(
    items: [
      standardMenu().items![0],
      standardMenu().items![1],
      standardMenu().items![2],
      MenuItem.separator(),
      MenuItem(
        key: 'fast_forward',
        label: S.current.fastForward,
      ),
      MenuItem(
        key: 'rewind',
        label: S.current.rewind,
      ),
      MenuItem.submenu(
        label: S.current.player,
        submenu: Menu(
          items: [
            MenuItem(
              key: 'play',
              label: S.current.play,
            ),
            MenuItem(
              key: 'pause',
              label: S.current.pause,
            ),
            MenuItem(
              key: 'stop',
              label: S.current.stop,
            ),
            MenuItem.separator(),
            MenuItem(
              key: 'previous_chapter',
              label: S.current.previousChapter,
            ),
            MenuItem(key: 'next_chapter', label: S.current.nextChapter),
          ],
        ),
      ),
      MenuItem.separator(),
      standardMenu().items![4],
    ],
  );
}

void setStandardMenu() {
  trayManager.setContextMenu(standardMenu());
}

void setPlayerMenu() {
  trayManager.setContextMenu(playerMenu());
}
