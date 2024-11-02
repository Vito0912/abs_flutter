import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';
part 'setting.g.dart';

@unfreezed
class Setting with _$Setting {
  factory Setting({
    @Default(<String, dynamic>{}) Map<String, dynamic> settings,
  }) = _Setting;

  factory Setting.mutable() => Setting(settings: Map<String, dynamic>.from({}));

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
}
