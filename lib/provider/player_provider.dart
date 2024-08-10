import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/util/abs_audio_handler.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

class PlayerProvider extends ChangeNotifier {
  late final AbsAudioHandler _audioService;

  PlayerProvider(ChangeNotifierProviderRef<PlayerProvider> ref) {
  }

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

  AbsAudioHandler get audioService => _audioService;
}

final playerProvider = ChangeNotifierProvider<PlayerProvider>((ref) {
  return PlayerProvider(ref);
});
