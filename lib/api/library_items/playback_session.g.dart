// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaybackSessionImpl _$$PlaybackSessionImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaybackSessionImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      libraryId: json['libraryId'] as String,
      libraryItemId: json['libraryItemId'] as String,
      episodeId: json['episodeId'] as String?,
      mediaType: json['mediaType'] as String?,
      mediaMetadata:
          Metadata.fromJson(json['mediaMetadata'] as Map<String, dynamic>),
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayTitle: json['displayTitle'] as String?,
      displayAuthor: json['displayAuthor'] as String?,
      coverPath: json['coverPath'] as String?,
      duration: (json['duration'] as num?)?.toDouble(),
      playMethod: (json['playMethod'] as num?)?.toInt(),
      mediaPlayer: json['mediaPlayer'] as String?,
      deviceInfo: json['deviceInfo'] == null
          ? null
          : DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      serverVersion: json['serverVersion'] as String?,
      date: json['date'] as String?,
      dayOfWeek: json['dayOfWeek'] as String?,
      timeListening: (json['timeListening'] as num?)?.toDouble(),
      startTime: (json['startTime'] as num?)?.toDouble(),
      currentTime: (json['currentTime'] as num?)?.toDouble(),
      startedAt: (json['startedAt'] as num?)?.toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      audioTracks: (json['audioTracks'] as List<dynamic>?)
          ?.map((e) => AudioTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
      libraryItem: json['libraryItem'] == null
          ? null
          : LibraryItem.fromJson(json['libraryItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaybackSessionImplToJson(
        _$PlaybackSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'libraryId': instance.libraryId,
      'libraryItemId': instance.libraryItemId,
      'episodeId': instance.episodeId,
      'mediaType': instance.mediaType,
      'mediaMetadata': instance.mediaMetadata,
      'chapters': instance.chapters,
      'displayTitle': instance.displayTitle,
      'displayAuthor': instance.displayAuthor,
      'coverPath': instance.coverPath,
      'duration': instance.duration,
      'playMethod': instance.playMethod,
      'mediaPlayer': instance.mediaPlayer,
      'deviceInfo': instance.deviceInfo,
      'serverVersion': instance.serverVersion,
      'date': instance.date,
      'dayOfWeek': instance.dayOfWeek,
      'timeListening': instance.timeListening,
      'startTime': instance.startTime,
      'currentTime': instance.currentTime,
      'startedAt': instance.startedAt,
      'updatedAt': instance.updatedAt,
      'audioTracks': instance.audioTracks,
      'libraryItem': instance.libraryItem,
    };
