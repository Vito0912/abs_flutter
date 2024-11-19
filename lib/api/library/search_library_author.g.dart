// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_library_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLibraryAuthorImpl _$$SearchLibraryAuthorImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLibraryAuthorImpl(
      id: json['id'] as String,
      asin: json['asin'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      imagePath: json['imagePath'] as String?,
      libraryId: json['libraryId'] as String,
      addedAt: (json['addedAt'] as num).toInt(),
      updatedAt: (json['updatedAt'] as num).toInt(),
      numBooks: (json['numBooks'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchLibraryAuthorImplToJson(
        _$SearchLibraryAuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'asin': instance.asin,
      'name': instance.name,
      'description': instance.description,
      'imagePath': instance.imagePath,
      'libraryId': instance.libraryId,
      'addedAt': instance.addedAt,
      'updatedAt': instance.updatedAt,
      'numBooks': instance.numBooks,
    };
