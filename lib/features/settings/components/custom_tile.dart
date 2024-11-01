import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class CustomTile extends AbstractSettingsTile {
  final Widget leading;
  final String title;
  final String? description;
  final String? toolTipText;
  final String keyValue;
  final String noValue;
  final bool enabled;
  final dynamic Function()? onPressed;

  const CustomTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.keyValue,
      required this.noValue,
      required this.onPressed,
      this.toolTipText,
      this.description,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return toolTipText != null
        ? Tooltip(
            message: toolTipText,
            margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
            child: _switch(context),
          )
        : _switch(context);
  }

  Widget _switch(BuildContext context) {
    return SettingsTile.navigation(
      leading: leading,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PlatformText(title),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Consumer(
                  builder: (BuildContext context, WidgetRef ref, child) {
                final settings =
                    ref.watch(specificKeysSettingsProvider([keyValue]));
                return Tooltip(
                  message: userSharedPreferences.getString(keyValue) ?? noValue,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: PlatformText(
                      userSharedPreferences.getString(keyValue) ?? noValue,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
      description: description != null ? PlatformText(description!) : null,
      enabled: enabled,
    );
  }
}
