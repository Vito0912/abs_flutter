// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_listened_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsListenedToImpl _$$ItemsListenedToImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemsListenedToImpl(
      id: json['id'] as String?,
      timeListening: (json['timeListening'] as num?)?.toDouble(),
      mediaMetadata: json['mediaMetadata'] == null
          ? null
          : Metadata.fromJson(json['mediaMetadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemsListenedToImplToJson(
        _$ItemsListenedToImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeListening': instance.timeListening,
      'mediaMetadata': instance.mediaMetadata,
    };
