// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesItemsImpl _$$SeriesItemsImplFromJson(Map<String, dynamic> json) =>
    _$SeriesItemsImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      sortBy: json['sortBy'] as String?,
      sortDesc: json['sortDesc'] as bool?,
      filterBy: json['filterBy'] as String?,
    );

Map<String, dynamic> _$$SeriesItemsImplToJson(_$SeriesItemsImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'sortBy': instance.sortBy,
      'sortDesc': instance.sortDesc,
      'filterBy': instance.filterBy,
    };
