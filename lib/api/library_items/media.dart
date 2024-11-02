import 'package:abs_flutter/api/library_items/book_media.dart';
import 'package:abs_flutter/api/library_items/podcast_media.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

@freezed
class Media with _$Media {
  const Media._(); // Private constructor for custom methods.

  const factory Media({
    PodcastMedia? podcastMedia,
    BookMedia? bookMedia,
  }) = _Media;

  /// Custom fromJson method to handle different structures.
  factory Media.fromJson(Map<String, dynamic> json) {
    // Check if the JSON contains an "episodes" key, indicating a PodcastMedia.
    if (json.containsKey('episodes')) {
      return Media(podcastMedia: PodcastMedia.fromJson(json));
    }
    // Otherwise, default to BookMedia.
    else {
      return Media(bookMedia: BookMedia.fromJson(json));
    }
  }
}
