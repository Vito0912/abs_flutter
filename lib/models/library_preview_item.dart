import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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
    bool? hasBook,
    bool? hasAudio
  }) = _LibraryPreviewItem;

  factory LibraryPreviewItem.fromJson(Map<String, dynamic> json) =>
      _$LibraryPreviewItemFromJson(json);
}
