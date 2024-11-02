import 'package:freezed_annotation/freezed_annotation.dart';

import 'library_file_metadata.dart';

part 'ebook_file.freezed.dart';
part 'ebook_file.g.dart';

@freezed
class EbookFile with _$EbookFile {
  const factory EbookFile({
    @JsonKey(name: "ino") required String ino,
    @JsonKey(name: "metadata") required LibraryFileMetadata metadata,
    @JsonKey(name: "ebookFormat") required String ebookFormat,
    @JsonKey(name: "addedAt") required int addedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
  }) = _EbookFile;

  factory EbookFile.fromJson(Map<String, dynamic> json) =>
      _$EbookFileFromJson(json);
}
