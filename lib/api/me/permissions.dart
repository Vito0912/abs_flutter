import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions.freezed.dart';
part 'permissions.g.dart';

@freezed
class Permissions with _$Permissions {
  const factory Permissions({
    @JsonKey(name: "download") required bool download,
    @JsonKey(name: "update") required bool update,
    @JsonKey(name: "delete") required bool delete,
    @JsonKey(name: "upload") required bool upload,
    @JsonKey(name: "accessAllLibraries") required bool accessAllLibraries,
    @JsonKey(name: "accessAllTags") required bool accessAllTags,
    @JsonKey(name: "accessExplicitContent") required bool accessExplicitContent,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);
}
