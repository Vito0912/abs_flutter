import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "libraryId") required String libraryId,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "books") List<LibraryItem>? items,
    @JsonKey(name: "lastUpdate") required int lastUpdate,
    @JsonKey(name: "createdAt") required int createdAt,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
