// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibrarySortImpl _$$LibrarySortImplFromJson(Map<String, dynamic> json) =>
    _$LibrarySortImpl(
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      page: (json['page'] as num?)?.toInt() ?? 0,
      sort: json['sort'] as String? ?? "media.metadata.title",
      desc: (json['desc'] as num?)?.toInt() ?? 0,
      filter: json['filter'] as String? ?? "",
      search: json['search'] as String? ?? "",
    );

Map<String, dynamic> _$$LibrarySortImplToJson(_$LibrarySortImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'sort': instance.sort,
      'desc': instance.desc,
      'filter': instance.filter,
      'search': instance.search,
    };
