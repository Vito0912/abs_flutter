import 'package:abs_flutter/features/settings/components/navigation_tile.dart';
import 'package:abs_flutter/features/settings/components/switch_tile.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      body: StatefulBuilder(builder: (context, setState) {
        return SettingsList(
          sections: [
            SettingsSection(
              title: PlatformText(S.of(context).general),
              tiles: [
                SwitchTile(
                    leading: Icon(PlatformIcons(context).brightness),
                    title: S.of(context).darkMode,
                    keyValue: Constants.DARK_MODE,
                    defaultValue: true),
                //TODO: Language
                SwitchTile(
                  leading: const Icon(Clarity.switch_line),
                  title: S.of(context).showAccountSwitcher,
                  keyValue: Constants.ACCOUNT_SWITCHER,
                  defaultValue: true,
                  toolTipText: S.of(context).showAccountSwitcherDescription,
                ),
                //TODO: markItemsFInished (SLider)
                SwitchTile(
                  leading: const Icon(
                    OctIcons.sidebar_collapse,
                    size: 18,
                  ),
                  title: S.of(context).collapseSeries,
                  keyValue: Constants.COLLAPSE_SERIES,
                  defaultValue: false,
                  toolTipText: S.of(context).collapseSeries,
                ),
                SwitchTile(
                    leading: const Icon(Clarity.wifi_line),
                    title: S.of(context).downloadsOnlyViaWifi,
                    keyValue: Constants.DOWNLOADS_ONLY_VIA_WIFI,
                    defaultValue: false),
                SwitchTile(
                    leading: const Icon(Clarity.sync_line),
                    title: S.of(context).syncOnlyViaWifi,
                    keyValue: Constants.SYNC_ONLY_VIA_WIFI,
                    defaultValue: false),
              ],
            ),
            SettingsSection(
              title: PlatformText(S.of(context).playerSettings),
              tiles: [
                SwitchTile(
                    leading: const Icon(Iconsax.stop_outline),
                    title: S.of(context).stopPlayerUntilSync,
                    keyValue: Constants.STOP_PLAYER_WHILE_SYNCING,
                    defaultValue: true,
                    toolTipText:
                        S.of(context).stopPlayerWhileSyncingDescription),
                SwitchTile(
                    leading: Icon(PlatformIcons(context).clockSolid),
                    title: S.of(context).jumpToLastPosition,
                    keyValue: Constants.JUMP_TO_LAST_POSITION,
                    defaultValue: true,
                    toolTipText: S.of(context).jumpToLastPositionDescription),
                SwitchTile(
                  leading: const Icon(FontAwesome.bars_progress_solid),
                  title: S.of(context).showProgressPerChapters,
                  keyValue: Constants.PROGRESS_AS_CHAPTERS,
                  defaultValue: false,
                  toolTipText: S.of(context).progressAsChaptersDescription,
                ),
                SwitchTile(
                    leading: const Icon(AntDesign.shake_outline),
                    title: S.of(context).shakeResetTimer,
                    keyValue: Constants.SHAKE_RESET_TIMER,
                    defaultValue: false),
                SwitchTile(
                  leading: const Icon(OctIcons.lock),
                  title: S.of(context).lockProgressBar,
                  keyValue: Constants.LOCK_SEEKING_NOTIFICATION,
                  defaultValue: false,
                  toolTipText: S.of(context).lockProgressBarDescription,
                ), // TODO: Show Restart Info
              ],
            ),
            SettingsSection(
              title: PlatformText(S.of(context).cachingHeader),
              tiles: [
                SwitchTile(
                    leading: const Icon(Icons.cached_outlined),
                    title: S.of(context).caching,
                    keyValue: Constants.CACHING_ENABLED,
                    defaultValue: true),
                SwitchTile(
                    leading: const Icon(Icons.rocket_launch_outlined),
                    title: S.of(context).aggressiveCaching,
                    keyValue: Constants.AGGRESSIVE_CACHING,
                    defaultValue: true,
                    toolTipText: S.of(context).aggressiveCachingDescription),
                SwitchTile(
                    leading: const Icon(Icons.rocket_outlined),
                    title: S.of(context).boostLoading,
                    keyValue: Constants.BOOST_LOADING,
                    defaultValue: false,
                    toolTipText: S.of(context).boostLoadingDescription),
                NavigationTile(
                  (BuildContext context) => Helper.clearCache(),
                  leading: Icon(PlatformIcons(context).delete),
                  title: S.of(context).clearCache,
                ),
                SwitchTile(
                    leading: const Icon(Icons.developer_mode),
                    title: S.of(context).logging,
                    keyValue: Constants.LOGGING_ENABLED,
                    defaultValue: true),
              ],
            ),
            SettingsSection(
              title: PlatformText(S.of(context).user),
              tiles: [
                NavigationTile(
                  (BuildContext context) => context.push('/select-server'),
                  leading: Icon(PlatformIcons(context).personAdd),
                  title: S.of(context).addANewUser,
                ),
                ..._getOtherUsers(ref, context),
                NavigationTile(
                  (BuildContext context) => ref
                      .watch(currentUserProvider.notifier)
                      .removeUser(context),
                  leading: Icon(PlatformIcons(context).exitToApp),
                  title: S.of(context).signOut,
                ),
              ],
            ),
            SettingsSection(
              title: PlatformText(S.of(context).miscellaneous),
              tiles: [
                NavigationTile(
                  (BuildContext context) => Helper.launchUrl(
                      'https://github.com/vito0912/abs_flutter'),
                  title: S.of(context).viewOnGithub,
                  leading: const Icon(Bootstrap.github),
                ),
                NavigationTile(
                  (BuildContext context) => Helper.launchUrl(
                      'https://github.com/Vito0912/abs_flutter/issues/new'),
                  title: S.of(context).reportAnIssue,
                  leading: const Icon(Bootstrap.github),
                ),
                NavigationTile(
                  (BuildContext context) =>
                      Helper.launchUrl('https://www.audiobookshelf.org/'),
                  title: S.of(context).openProjectLink,
                  leading: Helper.returnLibraryItem('audiobookshelf', context),
                ),
                NavigationTile(
                  (BuildContext context) => showLicensePage(
                    context: context,
                    applicationName: appTitle,
                    applicationVersion: version,
                    applicationLegalese: 'Vito',
                  ),
                  title: S.of(context).attribution,
                  leading: Icon(PlatformIcons(context).info),
                ),
                NavigationTile(
                  (BuildContext context) => null,
                  title:
                      S.of(context).deviceInfo(deviceName, osVersion, version),
                  leading: Icon(PlatformIcons(context).info),
                ),
              ],
            )
          ],
        );
      }),
    );
  }

  List<NavigationTile> _getOtherUsers(WidgetRef ref, BuildContext context) {
    final users = ref.read(usersProvider);
    final selectedUser = ref.read(selectedUserProvider);

    return users.asMap().entries.map((entry) {
      final index = entry.key;
      final user = entry.value;
      return NavigationTile(
        (BuildContext context) {
          ref.watch(selectedUserProvider.notifier).state = index;
          context.pop();
        },
        title: user.username ?? '',
        description: user.server?.url ?? '',
        leading: Icon(PlatformIcons(context).person),
        enabled: index != selectedUser,
      );
    }).toList();
  }
}