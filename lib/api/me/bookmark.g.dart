// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      libraryItemId: json['libraryItemId'] as String,
      title: json['title'] as String,
      time: (json['time'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'libraryItemId': instance.libraryItemId,
      'title': instance.title,
      'time': instance.time,
      'createdAt': instance.createdAt,
    };
