
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'chapter.freezed.dart';

part 'chapter.g.dart';

@unfreezed
class Chapter with _$Chapter {

  Chapter._();

  factory Chapter({
    required String title,
    required double start,
    required double end,
  }) = _Chapter;


  factory Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);
}
