import 'package:abs_flutter/api/library_items/library_file_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_file.freezed.dart';
part 'library_file.g.dart';

@freezed
class LibraryFile with _$LibraryFile {
  const factory LibraryFile({
    @JsonKey(name: "ino") required String ino,
    @JsonKey(name: "metadata") required LibraryFileMetadata metadata,
    @JsonKey(name: "isSupplementary") bool? isSupplementary,
    @JsonKey(name: "addedAt") required int addedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
    @JsonKey(name: "fileType") String? fileType,
  }) = _LibraryFile;

  factory LibraryFile.fromJson(Map<String, dynamic> json) =>
      _$LibraryFileFromJson(json);
}
