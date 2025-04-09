// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioFileImpl _$$AudioFileImplFromJson(Map<String, dynamic> json) =>
    _$AudioFileImpl(
      index: (json['index'] as num?)?.toInt(),
      ino: json['ino'] as String,
      metadata: LibraryFileMetadata.fromJson(
          json['metadata'] as Map<String, dynamic>),
      addedAt: (json['addedAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      trackNumFromMeta: (json['trackNumFromMeta'] as num?)?.toInt(),
      discNumFromMeta: (json['discNumFromMeta'] as num?)?.toInt(),
      trackNumFromFilename: (json['trackNumFromFilename'] as num?)?.toInt(),
      discNumFromFilename: (json['discNumFromFilename'] as num?)?.toInt(),
      manuallyVerified: json['manuallyVerified'] as bool?,
      exclude: json['exclude'] as bool?,
      error: json['error'] as bool?,
      format: json['format'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      bitRate: (json['bitRate'] as num?)?.toInt(),
      language: json['language'] as String?,
      codec: json['codec'] as String?,
      timeBase: json['timeBase'] as String?,
      channels: (json['channels'] as num?)?.toInt(),
      channelLayout: json['channelLayout'] as String?,
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      embeddedCoverArt: json['embeddedCoverArt'] as String?,
      metaTags: json['metaTags'] == null
          ? null
          : MetaTags.fromJson(json['metaTags'] as Map<String, dynamic>),
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$$AudioFileImplToJson(_$AudioFileImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'ino': instance.ino,
      'metadata': instance.metadata,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
      'trackNumFromMeta': instance.trackNumFromMeta,
      'discNumFromMeta': instance.discNumFromMeta,
      'trackNumFromFilename': instance.trackNumFromFilename,
      'discNumFromFilename': instance.discNumFromFilename,
      'manuallyVerified': instance.manuallyVerified,
      'exclude': instance.exclude,
      'error': instance.error,
      'format': instance.format,
      'duration': instance.duration,
      'bitRate': instance.bitRate,
      'language': instance.language,
      'codec': instance.codec,
      'timeBase': instance.timeBase,
      'channels': instance.channels,
      'channelLayout': instance.channelLayout,
      'chapters': instance.chapters,
      'embeddedCoverArt': instance.embeddedCoverArt,
      'metaTags': instance.metaTags,
      'mimeType': instance.mimeType,
    };
