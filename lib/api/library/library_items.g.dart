// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemsImpl _$$LibraryItemsImplFromJson(Map<String, dynamic> json) =>
    _$LibraryItemsImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => LibraryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      sortBy: json['sortBy'] as String,
      sortDesc: json['sortDesc'] as bool,
      mediaType: $enumDecode(_$MediaTypeEnumMap, json['mediaType']),
      minified: json['minified'] as bool,
      collapseseries: json['collapseseries'] as bool,
      include: json['include'] as String,
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$LibraryItemsImplToJson(_$LibraryItemsImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'sortBy': instance.sortBy,
      'sortDesc': instance.sortDesc,
      'mediaType': _$MediaTypeEnumMap[instance.mediaType]!,
      'minified': instance.minified,
      'collapseseries': instance.collapseseries,
      'include': instance.include,
      'offset': instance.offset,
    };

const _$MediaTypeEnumMap = {
  MediaType.BOOK: 'book',
  MediaType.PODCAST: 'podcast',
};
