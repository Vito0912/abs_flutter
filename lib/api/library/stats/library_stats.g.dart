// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryStatsImpl _$$LibraryStatsImplFromJson(Map<String, dynamic> json) =>
    _$LibraryStatsImpl(
      totalItems: (json['totalItems'] as num?)?.toInt(),
      totalAuthors: (json['totalAuthors'] as num?)?.toInt(),
      totalGenres: (json['totalGenres'] as num?)?.toInt(),
      totalDuration: (json['totalDuration'] as num?)?.toDouble(),
      longestItems: (json['longestItems'] as List<dynamic>?)
          ?.map((e) =>
              LibraryItemDurationStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      numAudioTrack: (json['numAudioTrack'] as num?)?.toInt(),
      totalSize: (json['totalSize'] as num?)?.toInt(),
      largestItems: (json['largestItems'] as List<dynamic>?)
          ?.map((e) => LibraryItemSizeStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      authorsWithCount: (json['authorsWithCount'] as List<dynamic>?)
          ?.map((e) => AuthorStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      genresWithCount: (json['genresWithCount'] as List<dynamic>?)
          ?.map((e) => GenreStats.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LibraryStatsImplToJson(_$LibraryStatsImpl instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'totalAuthors': instance.totalAuthors,
      'totalGenres': instance.totalGenres,
      'totalDuration': instance.totalDuration,
      'longestItems': instance.longestItems,
      'numAudioTrack': instance.numAudioTrack,
      'totalSize': instance.totalSize,
      'largestItems': instance.largestItems,
      'authorsWithCount': instance.authorsWithCount,
      'genresWithCount': instance.genresWithCount,
    };
