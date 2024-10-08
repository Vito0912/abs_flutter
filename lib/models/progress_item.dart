import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'progress_item.freezed.dart';

part 'progress_item.g.dart';

@unfreezed
class ProgressItem with _$ProgressItem {

  ProgressItem._();

  factory ProgressItem({
    required String itemId,
    required String userId,
    String? sessionId,
    String? episodeId,
    required double currentTime,
    required double timeListened,
    required double durationOfItem,
    required double startTime,
    required String type,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    bool? success,
  }) = _ProgressItem;


  factory ProgressItem.fromJson(Map<String, dynamic> json) => _$ProgressItemFromJson(json);
}
