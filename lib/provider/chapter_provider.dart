import 'dart:async';

import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChapterNotifier extends StateNotifier<Chapter?> {
  final PlayerProvider player;
  double previousEnd = 0.0;
  double previousStart = 0.0;
  StreamSubscription? _positionSubscription;

  ChapterNotifier(this.player) : super(null) {
    _listenToPositionStream();
  }

  void _listenToPositionStream() {
    _positionSubscription = player.positionStream.distinct().listen((position) {
      _updateChapter(position.inMicroseconds.toDouble());
    });
  }

  void _updateChapter(double position) {
    if (state == null || position >= previousEnd || position < previousStart) {
      final currentChapter = player.audioService.getCurrentChapter();
      if (currentChapter == null) {
        return;
      }
      state = currentChapter;
      previousEnd = currentChapter.end * 1000;
      previousStart = currentChapter.start * 1000;
    }
  }

  void clearChapter() {
    previousEnd = 0.0;
    previousStart = 0.0;
    if (state != null) state = null;
    _positionSubscription?.cancel();

    // Wait until player.mediaItem.value is not null
    if (player.audioService.mediaItem.value == null) {
      Future.delayed(const Duration(milliseconds: 100), () {
        clearChapter();
      });
    } else {
      _listenToPositionStream();
    }
  }

  @override
  void dispose() {
    _positionSubscription?.cancel();
    super.dispose();
  }

  void updatePlayer() {
    _updateChapter(player.position.inMilliseconds.toDouble());
  }
}

final chapterProvider = StateNotifierProvider<ChapterNotifier, Chapter?>((ref) {
  final player = ref.watch(playerProvider);
  return ChapterNotifier(player);
});

final playerListener = Provider((ref) {
  ref.listen(playerProvider, (_, __) {
    ref.read(chapterProvider.notifier).updatePlayer();
  });
});
