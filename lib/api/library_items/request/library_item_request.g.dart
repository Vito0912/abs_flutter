// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LibraryItemRequestImpl _$$LibraryItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$LibraryItemRequestImpl(
      id: json['id'] as String,
      expanded: (json['expanded'] as num?)?.toInt(),
      include: json['include'] as String?,
      episode: json['episode'] as String?,
    );

Map<String, dynamic> _$$LibraryItemRequestImplToJson(
        _$LibraryItemRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expanded': instance.expanded,
      'include': instance.include,
      'episode': instance.episode,
    };
