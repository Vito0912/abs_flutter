// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      title: json['title'] as String,
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'start': instance.start,
      'end': instance.end,
    };
