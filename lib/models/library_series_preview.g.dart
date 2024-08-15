// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_series_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibrarySeriesPreviewImpl _$$LibrarySeriesPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$LibrarySeriesPreviewImpl(
      books: (json['books'] as List<dynamic>)
          .map((e) => LibraryPreviewItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      id: json['id'] as String,
      libraryId: json['libraryId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$LibrarySeriesPreviewImplToJson(
        _$LibrarySeriesPreviewImpl instance) =>
    <String, dynamic>{
      'books': instance.books,
      'total': instance.total,
      'page': instance.page,
      'id': instance.id,
      'libraryId': instance.libraryId,
      'name': instance.name,
      'description': instance.description,
    };
