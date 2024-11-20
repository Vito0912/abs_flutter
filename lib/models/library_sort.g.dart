// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibrarySortImpl _$$LibrarySortImplFromJson(Map<String, dynamic> json) =>
    _$LibrarySortImpl(
      index: (json['index'] as num).toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      page: (json['page'] as num?)?.toInt() ?? 0,
      sort: json['sort'] as String? ?? "media.metadata.title",
      desc: (json['desc'] as num?)?.toInt() ?? 0,
      filter: json['filter'] as String? ?? null,
      filterKey: json['filterKey'] as String? ?? null,
      search: json['search'] as String? ?? "",
      type: json['type'] as String?,
      previous: (json['previous'] as List<dynamic>?)
          ?.map((e) => LibrarySort.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LibrarySortImplToJson(_$LibrarySortImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'limit': instance.limit,
      'page': instance.page,
      'sort': instance.sort,
      'desc': instance.desc,
      'filter': instance.filter,
      'filterKey': instance.filterKey,
      'search': instance.search,
      'type': instance.type,
      'previous': instance.previous,
    };
