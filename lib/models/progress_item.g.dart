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
      currentTime: (json['currentTime'] as num).toDouble(),
      timeListened: (json['timeListened'] as num).toDouble(),
      durationOfItem: (json['durationOfItem'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProgressItemImplToJson(_$ProgressItemImpl instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'userId': instance.userId,
      'sessionId': instance.sessionId,
      'currentTime': instance.currentTime,
      'timeListened': instance.timeListened,
      'durationOfItem': instance.durationOfItem,
    };
