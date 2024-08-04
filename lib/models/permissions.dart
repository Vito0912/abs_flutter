import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'permissions.freezed.dart';

part 'permissions.g.dart';

@freezed
class Permissions with _$Permissions {
  factory Permissions({
    bool? download,
    bool? delete,
    bool? upload,
    bool? accessAllLibraries,
    bool? accessAllTags,
    bool? accessExplicitContent,
    bool? update_,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}