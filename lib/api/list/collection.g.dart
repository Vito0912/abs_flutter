// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      id: json['id'] as String,
      libraryId: json['libraryId'] as String,
      userId: json['userId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      coverPath: json['coverPath'] as String?,
      items: (json['books'] as List<dynamic>?)
          ?.map((e) => LibraryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUpdate: (json['lastUpdate'] as num).toInt(),
      createdAt: (json['createdAt'] as num).toInt(),
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libraryId': instance.libraryId,
      'userId': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'coverPath': instance.coverPath,
      'books': instance.items,
      'lastUpdate': instance.lastUpdate,
      'createdAt': instance.createdAt,
    };
