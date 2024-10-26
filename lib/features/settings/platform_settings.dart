import 'package:abs_flutter/features/settings/components/switch_tile.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:settings_ui/settings_ui.dart';

class PlatformSettings extends ConsumerWidget {
  const PlatformSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(specificKeysSettingsProvider(
        [Constants.CACHING_ENABLED, Constants.LANGUAGE, Constants.DARK_MODE]));

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(S.of(context).settings),
      ),
      body: StatefulBuilder(
        builder: (context, setState) {
          return SettingsList(
            sections: [
              SettingsSection(
                title: PlatformText(S.of(context).general),
                tiles: [
                  SwitchTile(leading: Icon(PlatformIcons(context).brightness), title: S.of(context).darkMode, keyValue: Constants.DARK_MODE, defaultValue: true),
                  //TODO: Language
                  SwitchTile(leading: const Icon(Clarity.switch_line), title: S.of(context).showAccountSwitcher, keyValue: Constants.ACCOUNT_SWITCHER, defaultValue: true, toolTipText: S.of(context).showAccountSwitcherDescription,),
                  //TODO: markItemsFInished (SLider)
                  SwitchTile(leading: const Icon(
                      OctIcons.sidebar_collapse,
                    size: 18,
                  ), title: S.of(context).collapseSeries, keyValue: Constants.COLLAPSE_SERIES, defaultValue: false, toolTipText: S.of(context).collapseSeries,),
                  SwitchTile(leading: const Icon(Clarity.wifi_line), title: S.of(context).downloadsOnlyViaWifi, keyValue: Constants.DOWNLOADS_ONLY_VIA_WIFI, defaultValue: false),
                  SwitchTile(leading: const Icon(Clarity.sync_line), title: S.of(context).syncOnlyViaWifi, keyValue: Constants.SYNC_ONLY_VIA_WIFI, defaultValue: false),
                ],
              ),
              SettingsSection(
                  title: PlatformText(S.of(context).playerSettings),
                tiles: [
                  SwitchTile(leading: const Icon(Iconsax.stop_outline), title: S.of(context).stopPlayerUntilSync, keyValue: Constants.STOP_PLAYER_WHILE_SYNCING, defaultValue: true, toolTipText: S.of(context).stopPlayerWhileSyncingDescription),
                  SwitchTile(leading: Icon(PlatformIcons(context).clockSolid), title: S.of(context).jumpToLastPosition, keyValue: Constants.JUMP_TO_LAST_POSITION, defaultValue: true, toolTipText: S.of(context).jumpToLastPositionDescription),
                  SwitchTile(leading: const Icon(FontAwesome.bars_progress_solid), title: S.of(context).showProgressPerChapters, keyValue: Constants.PROGRESS_AS_CHAPTERS, defaultValue: false, toolTipText: S.of(context).progressAsChaptersDescription,),
                  SwitchTile(leading: const Icon(AntDesign.shake_outline), title: S.of(context).shakeResetTimer, keyValue: Constants.SHAKE_RESET_TIMER, defaultValue: false),
                  SwitchTile(leading: const Icon(OctIcons.lock), title: S.of(context).lockProgressBar, keyValue: Constants.LOCK_SEEKING_NOTIFICATION, defaultValue: false, toolTipText: S.of(context).lockProgressBarDescription,), // TODO: Show Restart Info
                ],
              ),
              SettingsSection(
                title: PlatformText(S.of(context).cachingHeader),
                tiles: [
                  SwitchTile(leading: const Icon(Icons.cached_outlined), title: S.of(context).caching, keyValue: Constants.CACHING_ENABLED, defaultValue: true),
                  SwitchTile(leading: const Icon(Icons.rocket_launch_outlined), title: S.of(context).aggressiveCaching, keyValue: Constants.AGGRESSIVE_CACHING, defaultValue: true, toolTipText: S.of(context).aggressiveCachingDescription),
                  SwitchTile(leading: const Icon(Icons.rocket_outlined), title: S.of(context).boostLoading, keyValue: Constants.BOOST_LOADING, defaultValue: false, toolTipText: S.of(context).boostLoadingDescription),

                ],
              )
            ],
          );
        }
      ),
    );
  }


}
