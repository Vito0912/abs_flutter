// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bookmark_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateBookmarkRequestImpl _$$CreateBookmarkRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateBookmarkRequestImpl(
      time: (json['time'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CreateBookmarkRequestImplToJson(
        _$CreateBookmarkRequestImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'title': instance.title,
    };
