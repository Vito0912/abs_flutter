import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsTileWrapper extends AbstractSettingsTile {
  final Widget child;
  const SettingsTileWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
