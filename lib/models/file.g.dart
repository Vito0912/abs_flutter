// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadInfoImpl _$$DownloadInfoImplFromJson(Map<String, dynamic> json) =>
    _$DownloadInfoImpl(
      index: (json['index'] as num).toInt(),
      type: $enumDecode(_$MediaTypeDownloadEnumMap, json['type']),
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      libraryId: json['libraryId'] as String,
      libraryName: json['libraryName'] as String,
      itemId: json['itemId'] as String,
      files: (json['files'] as List<dynamic>)
          .map((e) => DownloadFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      episodeId: json['episodeId'] as String?,
      mimeType: json['mimeType'] as String?,
      embeddedCoverArt: json['embeddedCoverArt'] as String?,
    );

Map<String, dynamic> _$$DownloadInfoImplToJson(_$DownloadInfoImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$MediaTypeDownloadEnumMap[instance.type]!,
      'userId': instance.userId,
      'displayName': instance.displayName,
      'libraryId': instance.libraryId,
      'libraryName': instance.libraryName,
      'itemId': instance.itemId,
      'files': instance.files,
      'episodeId': instance.episodeId,
      'mimeType': instance.mimeType,
      'embeddedCoverArt': instance.embeddedCoverArt,
    };

const _$MediaTypeDownloadEnumMap = {
  MediaTypeDownload.book: 'book',
  MediaTypeDownload.podcast: 'podcast',
  MediaTypeDownload.ebook: 'ebook',
};

_$DownloadFileImpl _$$DownloadFileImplFromJson(Map<String, dynamic> json) =>
    _$DownloadFileImpl(
      filename: json['filename'] as String,
      format: json['format'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      index: (json['index'] as num).toInt(),
      ino: json['ino'] as String,
      filePath: json['filePath'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toInt(),
      bitrate: (json['bitrate'] as num?)?.toInt(),
      codec: json['codec'] as String?,
    );

Map<String, dynamic> _$$DownloadFileImplToJson(_$DownloadFileImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'format': instance.format,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'index': instance.index,
      'ino': instance.ino,
      'filePath': instance.filePath,
      'duration': instance.duration,
      'size': instance.size,
      'bitrate': instance.bitrate,
      'codec': instance.codec,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.enqueued: 'enqueued',
  TaskStatus.running: 'running',
  TaskStatus.complete: 'complete',
  TaskStatus.notFound: 'notFound',
  TaskStatus.failed: 'failed',
  TaskStatus.canceled: 'canceled',
  TaskStatus.waitingToRetry: 'waitingToRetry',
  TaskStatus.paused: 'paused',
};
