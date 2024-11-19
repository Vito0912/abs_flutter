// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_items_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemsRequestImpl _$$LibraryItemsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryItemsRequestImpl(
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      sort: json['sort'] as String?,
      desc: (json['desc'] as num?)?.toInt(),
      filter: json['filter'] as String?,
      minified: (json['minified'] as num?)?.toInt(),
      collapseseries: (json['collapseseries'] as num?)?.toInt(),
      include: json['include'] as String?,
    );

Map<String, dynamic> _$$LibraryItemsRequestImplToJson(
        _$LibraryItemsRequestImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'sort': instance.sort,
      'desc': instance.desc,
      'filter': instance.filter,
      'minified': instance.minified,
      'collapseseries': instance.collapseseries,
      'include': instance.include,
    };
