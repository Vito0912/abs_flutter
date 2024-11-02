import 'package:json_annotation/json_annotation.dart';

import 'media_item_type.dart';

class MediaItemTypeConverter implements JsonConverter<MediaItemType, String> {
  const MediaItemTypeConverter();

  @override
  MediaItemType fromJson(String json) {
    switch (json) {
      case "book":
        return MediaItemType.BOOK;
      case "podcastEpisode":
        return MediaItemType.PODCAST_EPISODE;
      default:
        throw ArgumentError("Invalid MediaItemType: $json");
    }
  }

  @override
  String toJson(MediaItemType object) {
    switch (object) {
      case MediaItemType.BOOK:
        return "book";
      case MediaItemType.PODCAST_EPISODE:
        return "podcastEpisode";
      default:
        throw ArgumentError("Invalid MediaItemType: $object");
    }
  }
}
