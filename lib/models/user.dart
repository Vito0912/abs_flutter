import 'package:abs_flutter/models/permissions.dart';
import 'package:abs_flutter/models/server.dart';
import 'package:abs_flutter/models/setting.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@unfreezed
class User with _$User {
  factory User({
    String? id,
    String? username,
    String? type,
    String? token,
    bool? isActive,
    bool? isLocked,
    int? lastSeen,
    int? createdAt,
    Server? server,
    Permissions? permissions,
    Setting? setting,
    List<String>? librariesAccessible,
    List<String>? itemTagsAccessible,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
