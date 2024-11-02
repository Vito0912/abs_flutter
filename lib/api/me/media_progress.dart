import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_item_type.dart';
import 'media_item_type_converter.dart';

part 'media_progress.freezed.dart';
part 'media_progress.g.dart';

@freezed
class MediaProgress with _$MediaProgress {
  const factory MediaProgress({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "userId") required String userId,
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "episodeId") required String? episodeId,
    @JsonKey(name: "mediaItemId") required String mediaItemId,
    @JsonKey(name: "mediaItemType")
    @MediaItemTypeConverter()
    required MediaItemType mediaItemType,
    @JsonKey(name: "duration") required double duration,
    @JsonKey(name: "progress") required double progress,
    @JsonKey(name: "currentTime") required double currentTime,
    @JsonKey(name: "isFinished") required bool isFinished,
    @JsonKey(name: "hideFromContinueListening")
    required bool hideFromContinueListening,
    @JsonKey(name: "ebookLocation") required String? ebookLocation,
    @JsonKey(name: "ebookProgress") required double? ebookProgress,
    @JsonKey(name: "lastUpdate") required int? lastUpdate,
    @JsonKey(name: "startedAt") required int startedAt,
    @JsonKey(name: "finishedAt") required int? finishedAt,
  }) = _MediaProgress;

  factory MediaProgress.fromJson(Map<String, dynamic> json) =>
      _$MediaProgressFromJson(json);
}
