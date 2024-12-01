import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpeedControl extends ConsumerWidget {
  final PlayerProvider player;
  final Stream<double> speedStream;
  final double? size;
  SpeedControl(
      {super.key, required this.player, required this.speedStream, this.size});

  final Map<String, dynamic> speedOptions = {
    '0.5x': 0.5,
    '0.75x': 0.75,
    '0.9x': 0.9,
    '1.0x': 1.0,
    '1.2x': 1.2,
    '1.5x': 1.5,
    '1.75x': 1.75,
    '2.0x': 2.0,
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
      String key, double value, BuildContext context, WidgetRef ref) {
    return PopupMenuOption(
        label: key,
        onTap: (option) {
          final users = ref.read(usersProvider);
          final userIndex = ref.read(selectedUserProvider);
          final user = users[userIndex];

          final updatedUser = user.copyWith(
            setting: user.setting!.copyWith(
              settings: {
                ...user.setting!.settings,
                Constants.PLAYBACK_SPEED: value
              },
            ),
          );

          ref
              .read(usersProvider.notifier)
              .updateUserAtIndex(userIndex, updatedUser);
          player.audioService.player.setSpeed(value);
        });
  }
}
