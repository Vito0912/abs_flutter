// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_library.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchLibraryImpl _$$SearchLibraryImplFromJson(Map<String, dynamic> json) =>
    _$SearchLibraryImpl(
      book: (json['book'] as List<dynamic>?)
          ?.map((e) => SearchLibraryResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      podcast: (json['podcast'] as List<dynamic>?)
          ?.map((e) => SearchLibraryResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      narrators: (json['narrators'] as List<dynamic>?)
          ?.map((e) => SearchResultNarrator.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => SearchResultItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: (json['series'] as List<dynamic>?)
          ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => SearchLibraryAuthor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchLibraryImplToJson(_$SearchLibraryImpl instance) =>
    <String, dynamic>{
      'book': instance.book,
      'podcast': instance.podcast,
      'narrators': instance.narrators,
      'tags': instance.tags,
      'genres': instance.genres,
      'series': instance.series,
      'authors': instance.authors,
    };

_$SearchLibraryResultImpl _$$SearchLibraryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchLibraryResultImpl(
      libraryItem: json['libraryItem'] == null
          ? null
          : LibraryItem.fromJson(json['libraryItem'] as Map<String, dynamic>),
      matchKey: json['matchKey'] as String?,
      matchText: json['matchText'] as String?,
    );

Map<String, dynamic> _$$SearchLibraryResultImplToJson(
        _$SearchLibraryResultImpl instance) =>
    <String, dynamic>{
      'libraryItem': instance.libraryItem,
      'matchKey': instance.matchKey,
      'matchText': instance.matchText,
    };

_$SearchResultItemImpl _$$SearchResultItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemImpl(
      name: json['name'] as String,
      numItems: (json['numItems'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchResultItemImplToJson(
        _$SearchResultItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numItems': instance.numItems,
    };

_$SearchResultNarratorImpl _$$SearchResultNarratorImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultNarratorImpl(
      name: json['name'] as String,
      numItems: (json['numItems'] as num).toInt(),
    );

Map<String, dynamic> _$$SearchResultNarratorImplToJson(
        _$SearchResultNarratorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'numItems': instance.numItems,
    };
