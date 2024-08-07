import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends ConsumerWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

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
                  Tooltip(
                    message: S.of(context).showAccountSwitcherDescription,
                    margin: const EdgeInsets.all(8),
                    child: SwitchSettingsTile(
                      settingKey: 'showAccountSwitcher',
                      title: S.of(context).showAccountSwitcher,
                      subtitle: S.of(context).ifTheQuickAccountSwitcherShouldBeShown,
                      enabledLabel: S.of(context).enabled,
                      disabledLabel: S.of(context).disabled,
                      defaultValue: true,
                      leading: Icon(PlatformIcons(context).refresh),
                    ),
                  ),
                  Tooltip(
                    message: S.of(context).markItemsFinishedAfterDescription,
                    margin: const EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SliderSettingsTile(
                      settingKey: 'markItemsFinishedAfter',
                      title: S.of(context).markItemsFinished,
                      leading: Icon(PlatformIcons(context).time),
                      min: 0,
                      max: 180,
                      step: 15,
                      defaultValue: 0,
                      eagerUpdate: true,
                    ),
                  ),
                  Tooltip(
                    message: S.of(context).collapseSeriesDescription,
                    margin: EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SwitchSettingsTile(
                      settingKey: 'collapseSeries',
                      title: S.of(context).collapseSeries,
                      enabledLabel: S.of(context).enabled,
                      disabledLabel: S.of(context).disabled,
                      defaultValue: false,
                      leading: Icon(Icons.folder_copy_outlined),
                    ),
                  ),
                    SwitchSettingsTile(
                      settingKey: 'downloadsOnlyViaWifi',
                      title: S.of(context).downloadsOnlyViaWifi,
                      enabledLabel: S.of(context).enabled,
                      disabledLabel: S.of(context).disabled,
                      defaultValue: false,
                      leading: Icon(PlatformIcons(context).wifi),
                    )
                ],
              ),
              SettingsGroup(
                  title: S.of(context).playerSettings,
                  children: [
                    Tooltip(
                      message: S.of(context).stopPlayerWhileSyncingDescription,
                      margin: const EdgeInsets.all(8),
                      child: SwitchSettingsTile(
                        settingKey: 'stopPlayerWhileSyncing',
                        title: S.of(context).stopPlayerUntilSync,
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
                        leading: Icon(PlatformIcons(context).time),
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
                        eagerUpdate: true,
                      ),
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
                        eagerUpdate: true,
                      ),
                    ),
                  ]
              ),
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
                    subtitle: user?.username ?? '',
                    onTap: () {
                      ref.watch(currentUserProvider.notifier).removeUser(context);
                    },
                    leading: Icon(PlatformIcons(context).exitToApp)),
              ]),
              ExpandableSettingsTile(title: S.of(context).miscellaneous, children: [
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
                    title: _getDeviceInfoString(),
                    leading: Icon(PlatformIcons(context).info)),
              ])
            ],
          ),
        ));
  }

  List<Widget> _getOtherUsers(WidgetRef ref, BuildContext context) {
    final users = ref.watch(usersProvider);
    final selectedUser= ref.watch(selectedUserProvider);

    return users
        .asMap()
        .entries
        .map((entry) {
          final index = entry.key;
          final user = entry.value;
          return SimpleSettingsTile(
            title: user.username ?? '',
            subtitle: user.server?.url ?? '',
            leading: Icon(PlatformIcons(context).person),
            enabled: index != selectedUser,
            onTap: () {
              ref.watch(selectedUserProvider.notifier).state = index;
              context.pop();
            },
          );
        })
        .toList();
  }

  /*
  * Get the device information as a string
  * Returns the current device model, OS version, and app version
   */
  String _getDeviceInfoString() {
    return 'Device: $deviceName\nOS Version: $osVersion\nApp Version: $version';
  }
}
