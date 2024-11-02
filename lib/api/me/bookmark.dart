import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    @JsonKey(name: "libraryItemId") required String libraryItemId,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "time") required int time,
    @JsonKey(name: "createdAt") required int createdAt,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
}
