import 'package:abs_flutter/api/library_items/library_file_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_track.freezed.dart';
part 'audio_track.g.dart';

@freezed
class AudioTrack with _$AudioTrack {
  const AudioTrack._();

  const factory AudioTrack({
    @JsonKey(name: "index") required int index,
    @JsonKey(name: "startOffset") required double startOffset,
    @JsonKey(name: "duration") required double duration,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "contentUrl") required String contentUrl,
    @JsonKey(name: "mimeType") required String mimeType,
    @JsonKey(name: "metadata") LibraryFileMetadata? metadata,
  }) = _AudioTrack;

  // Overwrite contentUrl to remove /audiobookshelf if it starts
  String get processedContentUrl {
    if (contentUrl.startsWith('/audiobookshelf')) {
      return contentUrl.substring(15);
    }
    return contentUrl;
  }

  factory AudioTrack.fromJson(Map<String, dynamic> json) =>
      _$AudioTrackFromJson(json);
}
