// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookMediaImpl _$$BookMediaImplFromJson(Map<String, dynamic> json) =>
    _$BookMediaImpl(
      id: json['id'] as String,
      libraryItemId: json['libraryItemId'] as String,
      metadata:
          MediaMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      coverPath: json['coverPath'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      audioFiles: (json['audioFiles'] as List<dynamic>?)
          ?.map((e) => AudioFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      ebookFile: json['ebookFile'] == null
          ? null
          : EbookFile.fromJson(json['ebookFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookMediaImplToJson(_$BookMediaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libraryItemId': instance.libraryItemId,
      'metadata': instance.metadata,
      'coverPath': instance.coverPath,
      'tags': instance.tags,
      'audioFiles': instance.audioFiles,
      'chapters': instance.chapters,
      'ebookFile': instance.ebookFile,
    };
