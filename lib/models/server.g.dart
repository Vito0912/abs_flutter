// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerImpl _$$ServerImplFromJson(Map<String, dynamic> json) => _$ServerImpl(
      port: (json['port'] as num).toInt(),
      host: json['host'] as String,
      ssl: json['ssl'] as bool,
      subdirectory: json['subdirectory'] as String?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$ServerImplToJson(_$ServerImpl instance) =>
    <String, dynamic>{
      'port': instance.port,
      'host': instance.host,
      'ssl': instance.ssl,
      'subdirectory': instance.subdirectory,
      'headers': instance.headers,
    };
