import 'dart:async';

import 'package:abs_flutter/util/abs_audio_handler.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlayerProvider extends ChangeNotifier {
  late final AbsAudioHandler _audioService;

  PlayerProvider(ChangeNotifierProviderRef<PlayerProvider> ref);

  void setAudioService(AbsAudioHandler audioPlayer) {
    _audioService = audioPlayer;
  }

  Future<void> addQueueItem(MediaItem item) async {
    await _audioService.addQueueItem(item);
  }

  Future<void> play() async {
    await _audioService.play();
  }

  Future<void> pause() async {
    await _audioService.pause();
  }

  Future<void> stop({bool completed = false}) async {
    await _audioService.stop();
  }

  Future<void> playMediaItem(MediaItem mediaItem) async {
    await _audioService.playMediaItem(mediaItem);
  }

  Stream<Duration> get positionStream => _audioService.positionStream;

  Duration get position => _audioService.position;

  Duration get offset => _audioService.offset;

  int? get currentIndex => _audioService.currentIndex;

  int? getIndexAtDuration(Duration target) =>
      audioService.getIndexAtDuration(target);

  Duration getOffsetAtDuration(Duration target) =>
      audioService.getOffsetAtDuration(target);

  AbsAudioHandler get audioService => _audioService;
}

final playerProvider = ChangeNotifierProvider<PlayerProvider>((ref) {
  return PlayerProvider(ref);
});
