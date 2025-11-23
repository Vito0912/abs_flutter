import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpeedControl extends ConsumerWidget {
  final PlayerProvider player;
  final Stream<double> speedStream;
  final double? size;
  SpeedControl(
      {super.key, required this.player, required this.speedStream, this.size});

  final Map<String, dynamic> speedOptions = {
    '0.9x': 0.9,
    '1.0x': 1.0,
    '1.1x': 1.1,
    '1.2x': 1.2,
    'Custom Speed': "Custom Speed",
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformPopupMenu(
      options: speedOptions.entries
          .map((entry) =>
              _buildSpeedOption(entry.key, entry.value, context, ref))
          .toList(),
      icon: Tooltip(
        message: S.of(context).playbackSpeed,
        child: SizedBox(
          width: size,
          height: size,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
            child: StreamBuilder<double>(
                stream: speedStream,
                builder:
                    (BuildContext context, AsyncSnapshot<double> snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.runtimeType == double) {
                      return PlatformText(
                          '${snapshot.data!.toStringAsFixed(2)}x');
                    }
                    return PlatformText('${snapshot.data.toString()}x');
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
          ),
        ),
      ),
    );
  }

  PopupMenuOption _buildSpeedOption(
      String key, dynamic value, BuildContext context, WidgetRef ref) {
    return PopupMenuOption(
        label: key,
        onTap: (option) {
          if (value.runtimeType == double) {
            _voidUpdateSpeed(ref, value);
          } else {
            _showCustomSpeedModal(context, ref);
          }
        });
  }

  void _showCustomSpeedModal(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
        context: context,
        showDragHandle: true,
        useSafeArea: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        builder: (BuildContext context) {
          final TextEditingController customSpeedController =
              TextEditingController();
          return HookBuilder(builder: (context) {
            final ValueNotifier<double> speed =
                useState(ref.read(settingsProvider)[Constants.PLAYBACK_SPEED]);
            customSpeedController.text = speed.value.toString();
            return Padding(
              padding: EdgeInsets.only(
                  bottom: 16 + MediaQuery.of(context).padding.bottom,
                  left: 16,
                  right: 16),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 36,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: PlatformTextButton(
                        child: PlatformText("-0.05x"),
                        onPressed: () {
                          speed.value = double.parse((speed.value - 0.05)
                              .clamp(0.5, 2.5)
                              .toStringAsFixed(2));
                          _voidUpdateSpeed(ref, speed.value);
                        },
                      ),
                    ),
                    VerticalDivider(
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text("${speed.value.toStringAsFixed(2)}x"),
                    ),
                    VerticalDivider(
                      color: Theme.of(context).dividerColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: PlatformTextButton(
                        child: PlatformText("+0.05x"),
                        onPressed: () {
                          speed.value = double.parse((speed.value + 0.05)
                              .clamp(0.5, 2.0)
                              .toStringAsFixed(2));
                          _voidUpdateSpeed(ref, speed.value);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

  _voidUpdateSpeed(WidgetRef ref, double value) {
    final users = ref.read(usersProvider);
    final userIndex = ref.read(selectedUserProvider);
    final user = users[userIndex];

    final updatedUser = user.copyWith(
      setting: user.setting!.copyWith(
        settings: {...user.setting!.settings, Constants.PLAYBACK_SPEED: value},
      ),
    );

    ref.read(usersProvider.notifier).updateUserAtIndex(userIndex, updatedUser);
    player.audioService.player.setSpeed(value);
  }
}
