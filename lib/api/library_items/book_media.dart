import 'package:abs_flutter/api/library_items/audio_file.dart';
import 'package:abs_flutter/api/library_items/chapter.dart';
import 'package:abs_flutter/api/library_items/ebook_file.dart';
import 'package:abs_flutter/api/library_items/media_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_media.freezed.dart';
part 'book_media.g.dart';

@freezed
class BookMedia with _$BookMedia {
  const factory BookMedia({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "metadata") required MediaMetadata metadata,
    @JsonKey(name: "coverPath") String? coverPath,
    @JsonKey(name: "tags") List<String>? tags,
    @JsonKey(name: "audioFiles") List<AudioFile>? audioFiles,
    @JsonKey(name: "chapters") List<Chapter>? chapters,
    @JsonKey(name: "ebookFile") EbookFile? ebookFile,
  }) = _BookMedia;

  factory BookMedia.fromJson(Map<String, dynamic> json) =>
      _$BookMediaFromJson(json);
}
