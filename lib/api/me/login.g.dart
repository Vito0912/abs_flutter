// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      userDefaultLibraryId: json['userDefaultLibraryId'] as String,
      serverSettings: ServerSettings.fromJson(
          json['serverSettings'] as Map<String, dynamic>),
      source: json['Source'] as String,
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'userDefaultLibraryId': instance.userDefaultLibraryId,
      'serverSettings': instance.serverSettings,
      'Source': instance.source,
    };
