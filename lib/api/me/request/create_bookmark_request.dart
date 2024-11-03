import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bookmark_request.freezed.dart';
part 'create_bookmark_request.g.dart';

@freezed
class CreateBookmarkRequest with _$CreateBookmarkRequest {
  const factory CreateBookmarkRequest({
    @JsonKey(name: "time") required int time,
    @JsonKey(name: "title") required String title,
  }) = _CreateBookmarkRequest;

  factory CreateBookmarkRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBookmarkRequestFromJson(json);
}
