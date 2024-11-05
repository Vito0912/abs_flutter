// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days_of_week.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaysOfWeekImpl _$$DaysOfWeekImplFromJson(Map<String, dynamic> json) =>
    _$DaysOfWeekImpl(
      monday: (json['Monday'] as num?)?.toDouble(),
      tuesday: (json['Tuesday'] as num?)?.toDouble(),
      wednesday: (json['Wednesday'] as num?)?.toDouble(),
      thursday: (json['Thursday'] as num?)?.toDouble(),
      friday: (json['Friday'] as num?)?.toDouble(),
      saturday: (json['Saturday'] as num?)?.toDouble(),
      sunday: (json['Sunday'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DaysOfWeekImplToJson(_$DaysOfWeekImpl instance) =>
    <String, dynamic>{
      'Monday': instance.monday,
      'Tuesday': instance.tuesday,
      'Wednesday': instance.wednesday,
      'Thursday': instance.thursday,
      'Friday': instance.friday,
      'Saturday': instance.saturday,
      'Sunday': instance.sunday,
    };
