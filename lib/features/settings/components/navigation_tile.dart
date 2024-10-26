import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:settings_ui/settings_ui.dart';

class NavigationTile extends AbstractSettingsTile {
  final Widget leading;
  final String title;
  final String? description;
  final String? toolTipText;
  final bool enabled;
  final dynamic Function(BuildContext)? onPressed;
  const NavigationTile(this.onPressed,
      {super.key,
      required this.leading,
      required this.title,
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
      title: PlatformText(title),
      description: description != null ? PlatformText(description!) : null,
      onPressed: onPressed,
      enabled: enabled,
    );
  }
}
