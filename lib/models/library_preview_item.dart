import 'package:abs_flutter/api/library/collapsed_series.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_preview_item.freezed.dart';
part 'library_preview_item.g.dart';

@unfreezed
class LibraryPreviewItem with _$LibraryPreviewItem {
  LibraryPreviewItem._();

  factory LibraryPreviewItem({
    required String id,
    required String title,
    required String subtitle,
    required List<String> authors,
    required String mediaType,
    String? episodeId,
    String? seriesLabel,
    String? seriesName,
    bool? hasBook,
    bool? hasAudio,
    CollapsedSeries? collapsedSeries,
  }) = _LibraryPreviewItem;

  factory LibraryPreviewItem.fromJson(Map<String, dynamic> json) =>
      _$LibraryPreviewItemFromJson(json);
}
