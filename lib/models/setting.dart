import 'package:abs_flutter/models/permissions.dart';
import 'package:abs_flutter/models/server.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'setting.freezed.dart';
part 'setting.g.dart';

@unfreezed
class Setting with _$Setting {
  factory Setting({
    @Default(<String, dynamic>{}) Map<String, dynamic> settings,
  }) = _Setting;

  factory Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);
}
