import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_file_metadata.freezed.dart';
part 'library_file_metadata.g.dart';

@freezed
class LibraryFileMetadata with _$LibraryFileMetadata {
  const factory LibraryFileMetadata({
    @JsonKey(name: "filename") required String filename,
    @JsonKey(name: "ext") required String ext,
    @JsonKey(name: "path") required String path,
    @JsonKey(name: "relPath") required String relPath,
    @JsonKey(name: "size") required int size,
    @JsonKey(name: "mtimeMs") required int mtimeMs,
    @JsonKey(name: "ctimeMs") required int ctimeMs,
    @JsonKey(name: "birthtimeMs") required int birthtimeMs,
  }) = _LibraryFileMetadata;

  factory LibraryFileMetadata.fromJson(Map<String, dynamic> json) =>
      _$LibraryFileMetadataFromJson(json);
}
