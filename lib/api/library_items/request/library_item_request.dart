import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_item_request.freezed.dart';
part 'library_item_request.g.dart';

@freezed
class LibraryItemRequest with _$LibraryItemRequest {
  const factory LibraryItemRequest({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "expanded") int? expanded,
    @JsonKey(name: "include") String? include,
    @JsonKey(name: "episode") String? episode,
  }) = _LibraryItemRequest;

  factory LibraryItemRequest.fromJson(Map<String, dynamic> json) =>
      _$LibraryItemRequestFromJson(json);
}
