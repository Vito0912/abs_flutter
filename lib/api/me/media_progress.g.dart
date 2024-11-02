// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MediaProgressImpl _$$MediaProgressImplFromJson(Map<String, dynamic> json) =>
    _$MediaProgressImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      libraryItemId: json['libraryItemId'] as String,
      episodeId: json['episodeId'] as String?,
      mediaItemId: json['mediaItemId'] as String,
      mediaItemType: const MediaItemTypeConverter()
          .fromJson(json['mediaItemType'] as String),
      duration: (json['duration'] as num).toDouble(),
      progress: (json['progress'] as num).toDouble(),
      currentTime: (json['currentTime'] as num).toDouble(),
      isFinished: json['isFinished'] as bool,
      hideFromContinueListening: json['hideFromContinueListening'] as bool,
      ebookLocation: json['ebookLocation'] as String?,
      ebookProgress: (json['ebookProgress'] as num?)?.toDouble(),
      lastUpdate: (json['lastUpdate'] as num?)?.toInt(),
      startedAt: (json['startedAt'] as num).toInt(),
      finishedAt: (json['finishedAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MediaProgressImplToJson(_$MediaProgressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'libraryItemId': instance.libraryItemId,
      'episodeId': instance.episodeId,
      'mediaItemId': instance.mediaItemId,
      'mediaItemType':
          const MediaItemTypeConverter().toJson(instance.mediaItemType),
      'duration': instance.duration,
      'progress': instance.progress,
      'currentTime': instance.currentTime,
      'isFinished': instance.isFinished,
      'hideFromContinueListening': instance.hideFromContinueListening,
      'ebookLocation': instance.ebookLocation,
      'ebookProgress': instance.ebookProgress,
      'lastUpdate': instance.lastUpdate,
      'startedAt': instance.startedAt,
      'finishedAt': instance.finishedAt,
    };
