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
      filename: json['filename'] as String,
      format: json['format'] as String,
      libraryId: json['libraryId'] as String,
      libraryName: json['libraryName'] as String,
      itemId: json['itemId'] as String,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      size: json['size'] as num,
      filePath: json['filePath'] as String?,
      duration: json['duration'] as num?,
      bitrate: (json['bitrate'] as num?)?.toInt(),
      codec: json['codec'] as String?,
      mimeType: json['mimeType'] as String?,
      embeddedCoverArt: json['embeddedCoverArt'] as String?,
    );

Map<String, dynamic> _$$DownloadInfoImplToJson(_$DownloadInfoImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'type': _$MediaTypeDownloadEnumMap[instance.type]!,
      'userId': instance.userId,
      'displayName': instance.displayName,
      'filename': instance.filename,
      'format': instance.format,
      'libraryId': instance.libraryId,
      'libraryName': instance.libraryName,
      'itemId': instance.itemId,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'size': instance.size,
      'filePath': instance.filePath,
      'duration': instance.duration,
      'bitrate': instance.bitrate,
      'codec': instance.codec,
      'mimeType': instance.mimeType,
      'embeddedCoverArt': instance.embeddedCoverArt,
    };

const _$MediaTypeDownloadEnumMap = {
  MediaTypeDownload.book: 'book',
  MediaTypeDownload.podcast: 'podcast',
  MediaTypeDownload.ebook: 'ebook',
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
