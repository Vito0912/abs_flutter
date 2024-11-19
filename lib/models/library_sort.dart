import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_sort.freezed.dart';
part 'library_sort.g.dart';

@unfreezed
class LibrarySort with _$LibrarySort {
  factory LibrarySort({
    @Default(10) int? limit,
    @Default(0) int? page,
    @Default("media.metadata.title") String? sort,
    @Default(0) int? desc,
    @Default(null) String? filter,
    @Default(null) String? filterKey,
    @Default("") String? search,
    String? type,
    List<LibrarySort>? previous,
  }) = _LibrarySort;

  factory LibrarySort.fromJson(Map<String, dynamic> json) =>
      _$LibrarySortFromJson(json);
}
