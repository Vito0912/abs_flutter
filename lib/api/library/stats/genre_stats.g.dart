// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreStatsImpl _$$GenreStatsImplFromJson(Map<String, dynamic> json) =>
    _$GenreStatsImpl(
      genre: json['genre'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$GenreStatsImplToJson(_$GenreStatsImpl instance) =>
    <String, dynamic>{
      'genre': instance.genre,
      'count': instance.count,
    };
