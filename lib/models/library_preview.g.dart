// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryPreviewImpl _$$LibraryPreviewImplFromJson(Map<String, dynamic> json) =>
    _$LibraryPreviewImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => LibraryPreviewItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
      filterBy: json['filterBy'] as String?,
      sortDesc: json['sortDesc'] as bool?,
      minified: json['minified'] as bool?,
      collapseseries: json['collapseseries'] as bool?,
      include: json['include'] as String?,
    );

Map<String, dynamic> _$$LibraryPreviewImplToJson(
        _$LibraryPreviewImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'offset': instance.offset,
      'filterBy': instance.filterBy,
      'sortDesc': instance.sortDesc,
      'minified': instance.minified,
      'collapseseries': instance.collapseseries,
      'include': instance.include,
    };
