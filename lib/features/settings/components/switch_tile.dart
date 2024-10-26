import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class SwitchTile extends AbstractSettingsTile  {
  final Widget leading;
  final String title;
  final String keyValue;
  final bool defaultValue;
  final String? toolTipText;
  const SwitchTile({super.key, required this.leading, required this.title, required this.keyValue, required this.defaultValue, this.toolTipText});

  @override
  Widget build(BuildContext context) {
    return toolTipText != null ? Tooltip(
      message: toolTipText,
      margin: const EdgeInsets.only(top: 8),
      child: _switch(context),
    ) : _switch(context);
  }

  Widget _switch(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        ref.watch(specificKeysSettingsProvider([keyValue]));
        return SettingsTile.switchTile(
            leading: leading,
            title: PlatformText(title),
            description: _boolText(keyValue, defaultValue, S.of(context).enabled, S.of(context).disabled),
            onToggle: (value) {
              userSharedPreferences.setBool(keyValue,  value);
            }, initialValue: userSharedPreferences.getBool(keyValue, defaultValue: defaultValue) ?? defaultValue
        );
      }
    );
  }

  PlatformText _boolText(String key, bool defaultValue, String trueText, String falseText) {
    bool value = userSharedPreferences.getBool(key, defaultValue: defaultValue) ?? defaultValue;
    return PlatformText(value ? trueText : falseText);
  }
}
