import 'package:abs_flutter/api/library_items/device_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_library_item_request.freezed.dart';
part 'play_library_item_request.g.dart';

@freezed
class PlayLibraryItemRequest with _$PlayLibraryItemRequest {
  const factory PlayLibraryItemRequest({
    @JsonKey(name: "deviceInfo") required DeviceInfo deviceInfo,
    @JsonKey(name: "forceDirectPlay") @Default(false) bool? forceDirectPlay,
    @JsonKey(name: "forceTranscode") @Default(false) bool? forceTranscode,
    @JsonKey(name: "supportedMimeTypes")
    @Default([])
    List<String>? supportedMimeTypes,
    @JsonKey(name: "mediaPlayer") required String mediaPlayer,
  }) = _PlayLibraryItemRequest;

  factory PlayLibraryItemRequest.fromJson(Map<String, dynamic> json) =>
      _$PlayLibraryItemRequestFromJson(json);
}
