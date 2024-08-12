// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressItemImpl _$$ProgressItemImplFromJson(Map<String, dynamic> json) =>
    _$ProgressItemImpl(
      itemId: json['itemId'] as String,
      userId: json['userId'] as String,
      sessionId: json['sessionId'] as String?,
      episodeId: json['episodeId'] as String?,
      currentTime: (json['currentTime'] as num).toDouble(),
      timeListened: (json['timeListened'] as num).toDouble(),
      durationOfItem: (json['durationOfItem'] as num).toDouble(),
      startTime: (json['startTime'] as num).toDouble(),
      type: json['type'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$ProgressItemImplToJson(_$ProgressItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'userId': instance.userId,
      'sessionId': instance.sessionId,
      'episodeId': instance.episodeId,
      'currentTime': instance.currentTime,
      'timeListened': instance.timeListened,
      'durationOfItem': instance.durationOfItem,
      'startTime': instance.startTime,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'success': instance.success,
    };
