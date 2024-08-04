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
          title: const Text('Settings'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SettingsGroup(
                title: 'General',
                children: <Widget>[
                  SwitchSettingsTile(
                    settingKey: 'isDarkMode',
                    title: 'Dark Mode',
                    enabledLabel: 'Enabled',
                    disabledLabel: 'Disabled',
                    defaultValue: true,
                    leading: Icon(PlatformIcons(context).brightness),
                  ),
                  Tooltip(
                    message: 'If this is enabled, the app bar will have a icon button to switch between accounts. This makes the appbar smaller.',
                    margin: const EdgeInsets.all(8),
                    child: SwitchSettingsTile(
                      settingKey: 'showAccountSwitcher',
                      title: 'Show Account Switcher',
                      subtitle: 'If the quick account switcher should be shown',
                      enabledLabel: 'Enabled',
                      disabledLabel: 'Disabled',
                      defaultValue: true,
                      leading: Icon(PlatformIcons(context).refresh),
                    ),
                  ),
                  Tooltip(
                    message: 'Sets the time in seconds after which an item is marked before it is finished. If you set this to 0, the item will be marked as finished when the player reaches the end. If you set this to a value greater than 0, the item will be marked as finished when the player reaches the end minus the value you set here.',
                    margin: const EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SliderSettingsTile(
                      settingKey: 'markItemsFinishedAfter',
                      title: 'Mark Items Finished',
                      leading: Icon(PlatformIcons(context).time),
                      min: 0,
                      max: 180,
                      step: 15,
                      defaultValue: 0,
                      eagerUpdate: true,
                    ),
                  ),
                  const Tooltip(
                    message: 'If items of series will be collapsed in the library view to just show a single item',
                    margin: EdgeInsets.all(8),
                    verticalOffset: 48,
                    child: SwitchSettingsTile(
                      settingKey: 'collapseSeries',
                      title: 'Collapse Series',
                      enabledLabel: 'Enabled',
                      disabledLabel: 'Disabled',
                      defaultValue: false,
                      leading: Icon(Icons.folder_copy_outlined),
                    ),
                  )
                ],
              ),
              SettingsGroup(
                  title: 'Player Settings',
                  children: [
                    Tooltip(
                      message: 'If this is enabled the player will not play until the newest position is synced. This makes sure you will always listen the newest position. If this is disabled there is the possibility that it will switch shortly after the media was played. Turn this on to save some data',
                      margin: const EdgeInsets.all(8),
                      child: SwitchSettingsTile(
                        settingKey: 'stopPlayerWhileSyncing',
                        title: 'Stop Player until Sync',
                        enabledLabel: 'Enabled',
                        disabledLabel: 'Disabled',
                        defaultValue: true,
                        leading: Icon(PlatformIcons(context).clockSolid),
                      ),
                    ),
                    Tooltip(
                      message: 'If this is enabled the progress in the player and notification will be on a per chapter basis. If this is disabled the progress will be on a per item basis',
                      margin: const EdgeInsets.all(8),
                      child: SwitchSettingsTile(
                        settingKey: 'progressAsChapters',
                        title: 'Show Progress per Chapters',
                        enabledLabel: 'Enabled',
                        disabledLabel: 'Disabled',
                        defaultValue: false,
                        leading: Icon(PlatformIcons(context).time),
                      ),
                    ),
                    Tooltip(
                      message: 'The amount of seconds to skip forward when the fast forward button is pressed',
                      margin: const EdgeInsets.all(8),
                      verticalOffset: 48,
                      child: SliderSettingsTile(
                        settingKey: 'fastForwardSeconds',
                        title: 'Fast Forward Seconds',
                        leading: Icon(PlatformIcons(context).back),
                        min: 5,
                        max: 60,
                        step: 5,
                        defaultValue: 10,
                        eagerUpdate: true,
                      ),
                    ),
                    Tooltip(
                      message: 'The amount of seconds to skip backward when the rewind button is pressed',
                      margin: const EdgeInsets.all(8),
                      verticalOffset: 48,
                      child: SliderSettingsTile(
                        settingKey: 'rewindSeconds',
                        title: 'Rewind Seconds',
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
              SettingsGroup(title: 'User', children: [
                SimpleSettingsTile(
                    title: 'Add new user',
                    leading: Icon(PlatformIcons(context).personAdd),
                  onTap: () {
                    context.push('/select-server');
                  },
                ),
                ..._getOtherUsers(ref, context),
                SimpleSettingsTile(
                    title: 'Sign Out',
                    subtitle: user?.username ?? '',
                    onTap: () {
                      ref.watch(currentUserProvider.notifier).removeUser(context);
                    },
                    leading: Icon(PlatformIcons(context).exitToApp)),
              ]),
              ExpandableSettingsTile(title: 'Miscellaneous', children: [
                SimpleSettingsTile(
                    title: 'Attribution',
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
