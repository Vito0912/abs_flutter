// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemImpl _$$LibraryItemImplFromJson(Map<String, dynamic> json) =>
    _$LibraryItemImpl(
      id: json['id'] as String,
      ino: json['ino'] as String,
      oldLibraryItemId: json['oldLibraryItemId'] as String?,
      libraryId: json['libraryId'] as String?,
      folderId: json['folderId'] as String?,
      path: json['path'] as String?,
      relPath: json['relPath'] as String?,
      isFile: json['isFile'] as bool?,
      mtimeMs: (json['mtimeMs'] as num?)?.toInt(),
      ctimeMs: (json['ctimeMs'] as num?)?.toInt(),
      birthtimeMs: (json['birthtimeMs'] as num?)?.toInt(),
      addedAt: (json['addedAt'] as num?)?.toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      lastScan: (json['lastScan'] as num?)?.toInt(),
      scanVersion: json['scanVersion'] as String?,
      isMissing: json['isMissing'] as bool?,
      isInvalid: json['isInvalid'] as bool?,
      mediaType: json['mediaType'] as String?,
      media: json['media'] == null
          ? null
          : Media.fromJson(json['media'] as Map<String, dynamic>),
      libraryFiles: (json['libraryFiles'] as List<dynamic>?)
          ?.map((e) => LibraryFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      size: (json['size'] as num?)?.toInt(),
      collapsedSeries: json['collapsedSeries'] == null
          ? null
          : CollapsedSeries.fromJson(
              json['collapsedSeries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LibraryItemImplToJson(_$LibraryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ino': instance.ino,
      'oldLibraryItemId': instance.oldLibraryItemId,
      'libraryId': instance.libraryId,
      'folderId': instance.folderId,
      'path': instance.path,
      'relPath': instance.relPath,
      'isFile': instance.isFile,
      'mtimeMs': instance.mtimeMs,
      'ctimeMs': instance.ctimeMs,
      'birthtimeMs': instance.birthtimeMs,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
      'lastScan': instance.lastScan,
      'scanVersion': instance.scanVersion,
      'isMissing': instance.isMissing,
      'isInvalid': instance.isInvalid,
      'mediaType': instance.mediaType,
      'media': instance.media,
      'libraryFiles': instance.libraryFiles,
      'size': instance.size,
      'collapsedSeries': instance.collapsedSeries,
    };
