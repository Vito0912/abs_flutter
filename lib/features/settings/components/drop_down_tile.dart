import 'package:abs_flutter/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:settings_ui/settings_ui.dart';

class DropDownTile extends AbstractSettingsTile {
  final Widget leading;
  final String title;
  final String? description;
  final String? toolTipText;
  final bool enabled;
  final Map<String, String> items;
  final String keyValue;
  const DropDownTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.items,
      required this.keyValue,
      this.toolTipText,
      this.description,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return toolTipText != null
        ? Tooltip(
            message: toolTipText,
            margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: _dropDown(context),
          )
        : _dropDown(context);
  }

  Widget _dropDown(BuildContext context) {
    return SettingsTile.navigation(
      leading: leading,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PlatformText(title),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: DropdownButton<String>(
                value: userSharedPreferences.getString(keyValue),
                items: items.keys.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(items[value]!),
                  );
                }).toList(),
                onChanged: (String? value) {
                  userSharedPreferences.setString(keyValue, value!);
                }),
          )
        ],
      ),
      enabled: enabled,
    );
  }
}
