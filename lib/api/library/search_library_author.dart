import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_library_author.freezed.dart';
part 'search_library_author.g.dart';

@freezed
class SearchLibraryAuthor with _$SearchLibraryAuthor {
  const factory SearchLibraryAuthor({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "asin") required String? asin,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String? description,
    @JsonKey(name: "imagePath") required String? imagePath,
    @JsonKey(name: "libraryId") required String libraryId,
    @JsonKey(name: "addedAt") required int addedAt,
    @JsonKey(name: "updatedAt") required int updatedAt,
    @JsonKey(name: "numBooks") required int numBooks,
  }) = _SearchLibraryAuthor;

  factory SearchLibraryAuthor.fromJson(Map<String, dynamic> json) =>
      _$SearchLibraryAuthorFromJson(json);
}
