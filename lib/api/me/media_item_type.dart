import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum_values.dart';

enum MediaItemType {
  @JsonValue("book")
  BOOK,
  @JsonValue("podcastEpisode")
  PODCAST_EPISODE
}

final mediaItemTypeValues = EnumValues({
  "book": MediaItemType.BOOK,
  "podcastEpisode": MediaItemType.PODCAST_EPISODE
});
