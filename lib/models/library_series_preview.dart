import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'library_series_preview.freezed.dart';
part 'library_series_preview.g.dart';

@freezed
class LibrarySeriesPreview with _$LibrarySeriesPreview {

  LibrarySeriesPreview._();

  factory LibrarySeriesPreview({
    required List<LibraryPreviewItem> books,
    required int total,
    required int page,
    required String id,
    required String libraryId,
    required String name,
    String? description,
  }) = _LibrarySeriesPreview;

  factory LibrarySeriesPreview.fromJson(Map<String, dynamic> json) => _$LibrarySeriesPreviewFromJson(json);
}
