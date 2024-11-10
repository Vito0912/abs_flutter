// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      sequence: json['sequence'] as String?,
      description: json['description'] as String?,
      addedAt: (json['addedAt'] as num?)?.toInt(),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
      nameIgnorePrefix: json['nameIgnorePrefix'] as String?,
      nameIgnorePrefixSort: json['nameIgnorePrefixSort'] as String?,
      libraryItemIds: (json['libraryItemIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      numBooks: (json['numBooks'] as num?)?.toInt(),
      books: (json['books'] as List<dynamic>?)
          ?.map((e) => LibraryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDuration: (json['totalDuration'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sequence': instance.sequence,
      'description': instance.description,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
      'nameIgnorePrefix': instance.nameIgnorePrefix,
      'nameIgnorePrefixSort': instance.nameIgnorePrefixSort,
      'libraryItemIds': instance.libraryItemIds,
      'numBooks': instance.numBooks,
      'books': instance.books,
      'totalDuration': instance.totalDuration,
    };
