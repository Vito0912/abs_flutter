// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      username: json['username'] as String?,
      type: json['type'] as String?,
      token: json['token'] as String?,
      isActive: json['isActive'] as bool?,
      isLocked: json['isLocked'] as bool?,
      lastSeen: (json['lastSeen'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num?)?.toInt(),
      server: json['server'] == null
          ? null
          : Server.fromJson(json['server'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
      librariesAccessible: (json['librariesAccessible'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemTagsAccessible: (json['itemTagsAccessible'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'type': instance.type,
      'token': instance.token,
      'isActive': instance.isActive,
      'isLocked': instance.isLocked,
      'lastSeen': instance.lastSeen,
      'createdAt': instance.createdAt,
      'server': instance.server,
      'permissions': instance.permissions,
      'setting': instance.setting,
      'librariesAccessible': instance.librariesAccessible,
      'itemTagsAccessible': instance.itemTagsAccessible,
    };
