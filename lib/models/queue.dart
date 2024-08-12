import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'queue.freezed.dart';

part 'queue.g.dart';

@unfreezed
class Queue with _$Queue {
  Queue._();

  factory Queue({
    required String itemId,
    required String title,
    String? episodeId,
  }) = _Queue;

  factory Queue.fromJson(Map<String, dynamic> json) => _$QueueFromJson(json);
}
