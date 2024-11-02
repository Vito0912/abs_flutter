// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_file_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryFileMetadataImpl _$$LibraryFileMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryFileMetadataImpl(
      filename: json['filename'] as String,
      ext: json['ext'] as String,
      path: json['path'] as String,
      relPath: json['relPath'] as String,
      size: (json['size'] as num).toInt(),
      mtimeMs: (json['mtimeMs'] as num).toInt(),
      ctimeMs: (json['ctimeMs'] as num).toInt(),
      birthtimeMs: (json['birthtimeMs'] as num).toInt(),
    );

Map<String, dynamic> _$$LibraryFileMetadataImplToJson(
        _$LibraryFileMetadataImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'ext': instance.ext,
      'path': instance.path,
      'relPath': instance.relPath,
      'size': instance.size,
      'mtimeMs': instance.mtimeMs,
      'ctimeMs': instance.ctimeMs,
      'birthtimeMs': instance.birthtimeMs,
    };
