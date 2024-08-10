// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$HistoryTypeEnumMap, json['type']),
      position: (json['position'] as num).toDouble(),
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'type': _$HistoryTypeEnumMap[instance.type]!,
      'position': instance.position,
    };

const _$HistoryTypeEnumMap = {
  HistoryType.chapterSwitch: 'chapterSwitch',
  HistoryType.play: 'play',
  HistoryType.pause: 'pause',
  HistoryType.stop: 'stop',
  HistoryType.sync: 'sync',
};
