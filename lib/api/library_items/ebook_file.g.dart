// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ebook_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EbookFileImpl _$$EbookFileImplFromJson(Map<String, dynamic> json) =>
    _$EbookFileImpl(
      ino: json['ino'] as String,
      metadata: LibraryFileMetadata.fromJson(
          json['metadata'] as Map<String, dynamic>),
      ebookFormat: json['ebookFormat'] as String,
      addedAt: (json['addedAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EbookFileImplToJson(_$EbookFileImpl instance) =>
    <String, dynamic>{
      'ino': instance.ino,
      'metadata': instance.metadata,
      'ebookFormat': instance.ebookFormat,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
    };
