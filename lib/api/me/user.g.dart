// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'],
      type: json['type'] as String,
      token: json['token'] as String?,
      mediaProgress: (json['mediaProgress'] as List<dynamic>?)
          ?.map((e) => MediaProgress.fromJson(e as Map<String, dynamic>))
          .toList(),
      seriesHideFromContinueListening:
          (json['seriesHideFromContinueListening'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      bookmarks: (json['bookmarks'] as List<dynamic>?)
          ?.map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['isActive'] as bool?,
      isLocked: json['isLocked'] as bool?,
      lastSeen: (json['lastSeen'] as num?)?.toInt(),
      createdAt: (json['createdAt'] as num?)?.toInt(),
      permissions:
          Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      librariesAccessible: (json['librariesAccessible'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemTagsSelected: (json['itemTagsSelected'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      hasOpenIdLink: json['hasOpenIDLink'] as bool?,
      setting: json['setting'] == null
          ? null
          : Setting.fromJson(json['setting'] as Map<String, dynamic>),
      server: json['server'] == null
          ? null
          : Server.fromJson(json['server'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'type': instance.type,
      'token': instance.token,
      'mediaProgress': instance.mediaProgress,
      'seriesHideFromContinueListening':
          instance.seriesHideFromContinueListening,
      'bookmarks': instance.bookmarks,
      'isActive': instance.isActive,
      'isLocked': instance.isLocked,
      'lastSeen': instance.lastSeen,
      'createdAt': instance.createdAt,
      'permissions': instance.permissions,
      'librariesAccessible': instance.librariesAccessible,
      'itemTagsSelected': instance.itemTagsSelected,
      'hasOpenIDLink': instance.hasOpenIdLink,
      'setting': instance.setting,
      'server': instance.server,
    };
