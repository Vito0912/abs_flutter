import 'package:abs_flutter/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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
    double initValue = userSharedPreferences.getDouble(keyValue) ?? 0;
    return StatefulBuilder(builder: (context, setState) {
      return SettingsTile.navigation(
        leading: leading,
        title: PlatformText(title),
        description: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlatformText(initValue.toString()),
            PlatformSlider(
              value: initValue,
              min: min,
              max: max,
              divisions: ((max - min) / steps).round(),
              onChanged: (value) {
                setState(() {
                  initValue = value;
                });
              },
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
