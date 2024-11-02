import 'package:abs_flutter/features/settings/components/show_restart_info.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(specificKeysSettingsProvider(
        [Constants.CACHING_ENABLED, Constants.LANGUAGE]));

    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(S.of(context).settings),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SettingsGroup(
                title: S.of(context).general,
                children: <Widget>[
                  SwitchSettingsTile(
                    settingKey: 'isDarkMode',
                    title: S.of(context).darkMode,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: true,
                    leading: Icon(PlatformIcons(context).brightness),
                  ),
                  DropDownSettingsTile(
                      title: S.of(context).language,
                      settingKey: 'language',
                      selected: settings[Constants.LANGUAGE] ?? 'en',
                      values: supportedLocales,
                      leading: const Icon(Clarity.language_line)),
                  Tooltip(
                    message: S.of(context).showAccountSwitcherDescription,
                    margin: const EdgeInsets.all(8),
                    child: SwitchSettingsTile(
                      settingKey: 'showAccountSwitcher',
                      title: S.of(context).showAccountSwitcher,
                      subtitle:
                          S.of(context).ifTheQuickAccountSwitcherShouldBeShown,
                      enabledLabel: S.of(context).enabled,
                      disabledLabel: S.of(context).disabled,
                      defaultValue: true,
                      leading: const Icon(Clarity.switch_line),
                    ),
                  ),
                  Tooltip(
                    message: S.of(context).markItemsFinishedAfterDescription,
                    margin: const EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SliderSettingsTile(
                      settingKey: 'markItemsFinishedAfter',
                      title: S.of(context).markItemsFinished,
                      leading: const Icon(Clarity.clock_line),
                      min: 0,
                      max: 180,
                      step: 15,
                      defaultValue: 0,
                      eagerUpdate: false,
                    ),
                  ),
                  Tooltip(
                    message: S.of(context).collapseSeriesDescription,
                    margin: const EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SwitchSettingsTile(
                      settingKey: 'collapseSeries',
                      title: S.of(context).collapseSeries,
                      enabledLabel: S.of(context).enabled,
                      disabledLabel: S.of(context).disabled,
                      defaultValue: false,
                      leading: const Icon(
                        OctIcons.sidebar_collapse,
                        size: 18,
                      ),
                    ),
                  ),
                  SwitchSettingsTile(
                    settingKey: 'downloadsOnlyViaWifi',
                    title: S.of(context).downloadsOnlyViaWifi,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: false,
                    leading: const Icon(Clarity.wifi_line),
                  ),
                  SwitchSettingsTile(
                    settingKey: 'syncOnlyViaWifi',
                    title: S.of(context).syncOnlyViaWifi,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: false,
                    leading: const Icon(Clarity.sync_line),
                  )
                ],
              ),
              SettingsGroup(title: S.of(context).playerSettings, children: [
                Tooltip(
                  message: S.of(context).stopPlayerWhileSyncingDescription,
                  margin: const EdgeInsets.all(8),
                  child: SwitchSettingsTile(
                    settingKey: 'stopPlayerWhileSyncing',
                    title: S.of(context).stopPlayerUntilSync,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: true,
                    leading: const Icon(Iconsax.stop_outline),
                  ),
                ),
                Tooltip(
                  message: S.of(context).jumpToLastPositionDescription,
                  margin: const EdgeInsets.all(8),
                  child: SwitchSettingsTile(
                    settingKey: 'jumpToLastPosition',
                    title: S.of(context).jumpToLastPosition,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: true,
                    leading: Icon(PlatformIcons(context).clockSolid),
                  ),
                ),
                Tooltip(
                  message: S.of(context).progressAsChaptersDescription,
                  margin: const EdgeInsets.all(8),
                  child: SwitchSettingsTile(
                    settingKey: 'progressAsChapters',
                    title: S.of(context).showProgressPerChapters,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: false,
                    leading: const Icon(FontAwesome.bars_progress_solid),
                  ),
                ),
                SwitchSettingsTile(
                  settingKey: 'shakeResetTimer',
                  title: S.of(context).shakeResetTimer,
                  enabledLabel: S.of(context).enabled,
                  disabledLabel: S.of(context).disabled,
                  defaultValue: false,
                  leading: const Icon(AntDesign.shake_outline),
                ),
                Tooltip(
                  message: S.of(context).lockProgressBarDescription,
                  margin: const EdgeInsets.all(8),
                  child: SwitchSettingsTile(
                    settingKey: 'lockSeekingNotification',
                    title: S.of(context).lockProgressBar,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: false,
                    leading: const Icon(OctIcons.lock),
                    onChange: (value) {
                      ShowRestartInfo.show(context);
                    },
                  ),
                ),
                Tooltip(
                  message: S.of(context).fastForwardSecondsDescription,
                  margin: const EdgeInsets.all(8),
                  verticalOffset: 48,
                  child: SliderSettingsTile(
                      settingKey: 'fastForwardSeconds',
                      title: S.of(context).fastForwardSeconds,
                      leading: Icon(PlatformIcons(context).back),
                      min: 5,
                      max: 60,
                      step: 5,
                      defaultValue: 10,
                      eagerUpdate: false),
                ),
                Tooltip(
                  message: S.of(context).rewindSecondsDescription,
                  margin: const EdgeInsets.all(8),
                  verticalOffset: 48,
                  child: SliderSettingsTile(
                    settingKey: 'rewindSeconds',
                    title: S.of(context).rewindSeconds,
                    leading: Icon(PlatformIcons(context).forward),
                    min: 5,
                    max: 60,
                    step: 5,
                    defaultValue: 10,
                    eagerUpdate: false,
                  ),
                ),
                Tooltip(
                  message: S.of(context).syncIntervalDescription,
                  margin: const EdgeInsets.all(8),
                  verticalOffset: 48,
                  child: SliderSettingsTile(
                    settingKey: 'syncInterval',
                    title: S.of(context).syncInterval,
                    leading: Icon(PlatformIcons(context).cloudUpload),
                    min: 10,
                    max: 120,
                    step: 10,
                    defaultValue: 10,
                    eagerUpdate: false,
                    onChangeEnd: (value) {
                      ShowRestartInfo.show(context);
                    },
                  ),
                ),
              ]),
              SettingsGroup(title: S.of(context).cachingHeader, children: [
                SwitchSettingsTile(
                  settingKey: 'cachingEnabled',
                  title: S.of(context).caching,
                  enabledLabel: S.of(context).enabled,
                  disabledLabel: S.of(context).disabled,
                  defaultValue: true,
                  leading: const Icon(Icons.cached_outlined),
                ),
                Tooltip(
                  message: S.of(context).aggressiveCachingDescription,
                  child: SwitchSettingsTile(
                    settingKey: 'aggressiveCaching',
                    title: S.of(context).aggressiveCaching,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: true,
                    leading: const Icon(Icons.rocket_launch_outlined),
                  ),
                ),
                Tooltip(
                  message: S.of(context).boostLoadingDescription,
                  child: SwitchSettingsTile(
                    settingKey: 'boostLoading',
                    title: S.of(context).boostLoading,
                    subtitle: S.of(context).boostLoadingSubtitle,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    defaultValue: false,
                    enabled:
                        (settings[Constants.CACHING_ENABLED] ?? true) == true,
                    leading: const Icon(Icons.rocket_outlined),
                  ),
                ),
                SimpleSettingsTile(
                    title: S.of(context).clearCache,
                    onTap: () {
                      Helper.clearCache();
                    },
                    leading: Icon(PlatformIcons(context).delete)),
                SwitchSettingsTile(
                    title: S.of(context).logging,
                    settingKey: 'loggingEnabled',
                    defaultValue: true,
                    enabledLabel: S.of(context).enabled,
                    disabledLabel: S.of(context).disabled,
                    leading: const Icon(Icons.developer_mode)),
              ]),
              SettingsGroup(title: S.of(context).user, children: [
                SimpleSettingsTile(
                  title: S.of(context).addANewUser,
                  leading: Icon(PlatformIcons(context).personAdd),
                  onTap: () {
                    context.push('/select-server');
                  },
                ),
                ..._getOtherUsers(ref, context),
                SimpleSettingsTile(
                    title: S.of(context).signOut,
                    onTap: () {
                      ref
                          .watch(currentUserProvider.notifier)
                          .removeUser(context);
                    },
                    leading: Icon(PlatformIcons(context).exitToApp)),
              ]),
              ExpandableSettingsTile(
                  title: S.of(context).miscellaneous,
                  children: [
                    SimpleSettingsTile(
                        title: S.of(context).viewOnGithub,
                        onTap: () => Helper.launchUrl(
                            'https://github.com/vito0912/abs_flutter')),
                    SimpleSettingsTile(
                        title: S.of(context).reportAnIssue,
                        onTap: () => Helper.launchUrl(
                            'https://github.com/Vito0912/abs_flutter/issues/new')),
                    SimpleSettingsTile(
                        title: S.of(context).openProjectLink,
                        onTap: () => Helper.launchUrl(
                            'https://www.audiobookshelf.org/')),
                    SimpleSettingsTile(
                        title: S.of(context).attribution,
                        leading: Icon(PlatformIcons(context).info),
                        onTap: () {
                          showLicensePage(
                            context: context,
                            applicationName: appTitle,
                            applicationVersion: version,
                            applicationLegalese: 'Vito',
                          );
                        }),
                    SimpleSettingsTile(
                        title: S
                            .of(context)
                            .deviceInfo(deviceName, osVersion, version),
                        leading: Icon(PlatformIcons(context).info)),
                  ])
            ],
          ),
        ));
  }

  List<Widget> _getOtherUsers(WidgetRef ref, BuildContext context) {
    final users = ref.read(usersProvider);
    final selectedUser = ref.read(selectedUserProvider);

    return users.asMap().entries.map((entry) {
      final index = entry.key;
      final user = entry.value;
      return SimpleSettingsTile(
        title: user.username,
        subtitle: user.server?.url ?? '',
        leading: Icon(PlatformIcons(context).person),
        enabled: index != selectedUser,
        onTap: () {
          ref.watch(selectedUserProvider.notifier).state = index;
          context.pop();
        },
      );
    }).toList();
  }
}
