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
    // Abonniert den Positions-Stream und aktualisiert das Kapitel, wenn nötig
    _positionSubscription = player.audioService.player.positionStream
        .distinct()  // Nur bei Änderungen reagieren
        .listen((position) {
      _updateChapter(position.inMilliseconds.toDouble());
    });
  }

  void _updateChapter(double position) {
    if (state == null ||
        position >= previousEnd ||
        position < previousStart) {
      final currentChapter = player.audioService.getCurrentChapter();
      if (currentChapter == null) {
        return;
      }
      state = currentChapter;
      previousEnd = currentChapter.end * 1000;
      previousStart = currentChapter.start * 1000;
    }
  }

  @override
  void dispose() {
    _positionSubscription?.cancel();
    super.dispose();
  }

  void updatePlayer() {
    _updateChapter(player.audioService.player.position.inMilliseconds.toDouble());
  }
}

// Provider für das aktuelle Kapitel
final chapterProvider = StateNotifierProvider<ChapterNotifier, Chapter?>((ref) {
  final player = ref.watch(playerProvider);
  return ChapterNotifier(player);
});

// Wenn der Player sich ändert, wird auch der ChapterProvider aktualisiert
final playerListener = Provider((ref) {
  ref.listen(playerProvider, (_, __) {
    ref.read(chapterProvider.notifier).updatePlayer();
  });
});
