// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_preview_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryPreviewItemImpl _$$LibraryPreviewItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryPreviewItemImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      mediaType: json['mediaType'] as String,
    );

Map<String, dynamic> _$$LibraryPreviewItemImplToJson(
        _$LibraryPreviewItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'mediaType': instance.mediaType,
    };
