import 'package:abs_flutter/models/library_preview_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'library_preview.freezed.dart';

part 'library_preview.g.dart';

@unfreezed
class LibraryPreview with _$LibraryPreview {

  LibraryPreview._();

  factory LibraryPreview({
    required List<LibraryPreviewItem> items,
    required int total,
    required int page,
     int? limit,
     int? offset,
     String? filterBy,
     bool? sortDesc,
    bool? minified,
    bool? collapseseries,
    String? include
  }) = _LibraryPreview;


  factory LibraryPreview.fromJson(Map<String, dynamic> json) => _$LibraryPreviewFromJson(json);
}
