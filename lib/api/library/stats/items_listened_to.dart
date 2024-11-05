import 'package:abs_flutter/api/library_items/metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_listened_to.freezed.dart';
part 'items_listened_to.g.dart';

@freezed
class ItemsListenedTo with _$ItemsListenedTo {
  const factory ItemsListenedTo({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "timeListening") double? timeListening,
    @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata,
  }) = _ItemsListenedTo;

  factory ItemsListenedTo.fromJson(Map<String, dynamic> json) =>
      _$ItemsListenedToFromJson(json);
}
