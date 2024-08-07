// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadInfoImpl _$$DownloadInfoImplFromJson(Map<String, dynamic> json) =>
    _$DownloadInfoImpl(
      index: (json['index'] as num).toInt(),
      type: $enumDecode(_$MediaTypeDownloadEnumMap, json['type']),
      filename: json['filename'] as String,
      format: json['format'] as String,
      libraryId: json['libraryId'] as String,
      itemId: json['itemId'] as String,
      size: json['size'] as num,
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
      'filename': instance.filename,
      'format': instance.format,
      'libraryId': instance.libraryId,
      'itemId': instance.itemId,
      'size': instance.size,
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
