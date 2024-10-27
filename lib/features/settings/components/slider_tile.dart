import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class SliderTile extends AbstractSettingsTile {
  final Widget leading;
  final String title;
  final String? description;
  final String? toolTipText;
  final bool enabled;

  final double min;
  final double max;
  final String keyValue;
  final int steps;

  const SliderTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.min,
      required this.max,
      required this.steps,
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
            child: _slider(context),
          )
        : _slider(context);
  }

  Widget _slider(BuildContext context) {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final settings = ref.watch(specificKeysSettingsProvider([keyValue]));
      return SettingsTile.navigation(
        leading: leading,
        title: PlatformText(title),
        description: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlatformText(userSharedPreferences.getDouble(keyValue).toString()),
            PlatformSlider(
              value: userSharedPreferences.getDouble(keyValue) ?? min,
              min: min,
              max: max,
              divisions: ((max - min) / steps).round(),
              onChanged: (value) {},
              onChangeEnd: (value) {
                userSharedPreferences.setDouble(keyValue, value);
              },
            ),
          ],
        ),
        enabled: enabled,
      );
    });
  }
}
