import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "start") required double start,
    @JsonKey(name: "end") required double end,
    @JsonKey(name: "title") required String title,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}
