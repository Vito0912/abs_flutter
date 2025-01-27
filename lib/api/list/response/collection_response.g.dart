// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionResponseImpl _$$CollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionResponseImpl(
      items: (json['collections'] as List<dynamic>)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CollectionResponseImplToJson(
        _$CollectionResponseImpl instance) =>
    <String, dynamic>{
      'collections': instance.items,
    };
