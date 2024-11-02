import 'package:abs_flutter/api/library_items/chapter.dart';
import 'package:abs_flutter/api/library_items/library_file_metadata.dart';
import 'package:abs_flutter/api/library_items/meta_tags.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_file.freezed.dart';
part 'audio_file.g.dart';

@freezed
class AudioFile with _$AudioFile {
  const factory AudioFile({
    @JsonKey(name: "index") required int index,
    @JsonKey(name: "ino") required String ino,
    @JsonKey(name: "metadata") required LibraryFileMetadata metadata,
    @JsonKey(name: "addedAt") required int addedAt,
    @JsonKey(name: "updatedAt") int? updatedAt,
    @JsonKey(name: "trackNumFromMeta") int? trackNumFromMeta,
    @JsonKey(name: "discNumFromMeta") int? discNumFromMeta,
    @JsonKey(name: "trackNumFromFilename") int? trackNumFromFilename,
    @JsonKey(name: "discNumFromFilename") int? discNumFromFilename,
    @JsonKey(name: "manuallyVerified") bool? manuallyVerified,
    @JsonKey(name: "exclude") bool? exclude,
    @JsonKey(name: "error") bool? error,
    @JsonKey(name: "format") String? format,
    @JsonKey(name: "duration") double? duration,
    @JsonKey(name: "bitRate") int? bitRate,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "codec") String? codec,
    @JsonKey(name: "timeBase") String? timeBase,
    @JsonKey(name: "channels") int? channels,
    @JsonKey(name: "channelLayout") String? channelLayout,
    @JsonKey(name: "chapters") List<Chapter>? chapters,
    @JsonKey(name: "embeddedCoverArt") String? embeddedCoverArt,
    @JsonKey(name: "metaTags") MetaTags? metaTags,
    @JsonKey(name: "mimeType") String? mimeType,
  }) = _AudioFile;

  factory AudioFile.fromJson(Map<String, dynamic> json) =>
      _$AudioFileFromJson(json);
}
