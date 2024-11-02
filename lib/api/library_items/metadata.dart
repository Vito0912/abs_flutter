import 'package:abs_flutter/api/library_items/media_metadata.dart';
import 'package:abs_flutter/api/library_items/podcast_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata.freezed.dart';

@freezed
class Metadata with _$Metadata {
  const Metadata._(); // Private constructor for custom methods.

  const factory Metadata({
    PodcastMetadata? podcastMetadata,
    MediaMetadata? bookMetadata,
  }) = _Metadata;

  /// Custom fromJson method to handle different structures.
  factory Metadata.fromJson(Map<String, dynamic> json) {
    // Check if the JSON contains an "episodes" key, indicating a PodcastMedia.
    if (json.containsKey('type')) {
      return Metadata(podcastMetadata: PodcastMetadata.fromJson(json));
    }
    // Otherwise, default to BookMedia.
    else {
      return Metadata(bookMetadata: MediaMetadata.fromJson(json));
    }
  }

  /// Custom toJson method to handle different structures.
  Map<String, dynamic> toJson() {
    // Check if the instance contains a PodcastMedia.
    if (podcastMetadata != null) {
      return podcastMetadata!.toJson();
    }
    // Otherwise, default to BookMedia.
    else {
      return bookMetadata!.toJson();
    }
  }
}
