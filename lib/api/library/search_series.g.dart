// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchSeriesImpl _$$SearchSeriesImplFromJson(Map<String, dynamic> json) =>
    _$SearchSeriesImpl(
      series: Series.fromJson(json['series'] as Map<String, dynamic>),
      books: (json['books'] as List<dynamic>)
          .map((e) => LibraryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchSeriesImplToJson(_$SearchSeriesImpl instance) =>
    <String, dynamic>{
      'series': instance.series,
      'books': instance.books,
    };
