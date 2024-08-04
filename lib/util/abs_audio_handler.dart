import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/sleep_timer_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_service/audio_service.dart';

class AbsAudioHandler extends BaseAudioHandler with QueueHandler, SeekHandler {
  final AudioPlayer _player = AudioPlayer();
  late final PlayerStatusProvider _playerStatusProvider;
  ProgressProvider? _progressProvider;
  final ProviderContainer _container;

  AbsAudioHandler(this._container) {
    _playerStatusProvider = _container.read(playStatusProvider.notifier);
    _progressProvider = _container.read(progressProvider);

    // Listen for changes in the progress state
    _container.listen<ProgressProvider>(progressProvider, (previous, next) {
      _progressProvider = next;
    });

    androidPlaybackInfo.listen((event) {
      log('Android playback info: $event');
    });

    _player.positionStream.listen((event) {
      playbackState.add(playbackState.value.copyWith(
        updatePosition: event,
      ));
    });

  }

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    AudioSource source = AudioSource.uri(Uri.parse(mediaItem.id));
    await _player.setAudioSource(source);
  }

  @override
  Future<void> playMediaItem(MediaItem item) async {
    AudioSource source = AudioSource.uri(Uri.parse(item.id));

    final List<MediaProgress>? _progresses = _progressProvider?.progress;
    MediaProgress? _progress;
    for (final progress in _progresses!) {
      if (progress.libraryItemId == item.extras?['libraryItemId']) {
        _progress = progress;
        break;
      }
    }

    log('Playing media item: $item');

    mediaItem.add(item);

    await _player.setAudioSource(source);

    _playerStatusProvider.setPlayStatus(PlayerStatus.playing);

    if (_progress != null && !_progress.isFinished!) {
      log('Seeking to ${_progress.currentTime?.round()} due to progress');
      await _player.seek(Duration(seconds: _progress.currentTime?.round() ?? 0));
    }

    playbackState.add(playbackState.value.copyWith(
      playing: true,
      controls: [MediaControl.pause],
    ));
  }

  @override
  Future<void> play() async {
    await _player.play();
    _container.read(timerProvider.notifier).continueTimer();

    playbackState.add(playbackState.value.copyWith(
      playing: true,
      controls: [MediaControl.pause],
    ));
  }

  @override
  Future<void> pause() async {
    await _player.pause();
    _container.read(timerProvider.notifier).pause();
    playbackState.add(playbackState.value.copyWith(
      playing: false,
      controls: [MediaControl.play],
    ));
  }

  @override
  Future<void> stop() async {
    await _player.stop();
    _container.read(timerProvider.notifier).stop();
    _container.read(sessionProvider.notifier).closeOpenSession();
    playbackState.add(playbackState.value.copyWith(
      playing: false,
      controls: [MediaControl.play],
    ));
  }

  @override
  Future<void> seek(Duration position) async {
    await _player.seek(position);
    playbackState.add(playbackState.value.copyWith(
      updatePosition: position,
    ));
  }

  Future<void> setVolume(double volume) async {
    await _player.setVolume(volume);
  }

  @override
  Future<void> setSpeed(double speed) async {
    await _player.setSpeed(speed);
  }

  Chapter? getCurrentChapter() {
    final List<Map<String, dynamic>>? jsonC = mediaItem.value?.extras?['chapters'];
    if (jsonC == null) {
      return null;
    }
    final List<Chapter> chapters = jsonC.map((e) => Chapter.fromJson(e)).toList();
    Duration position = _player.position;

    for (final chapter in chapters) {
      Duration start = Duration(seconds: chapter.start.round());
      Duration end = Duration(seconds: chapter.end.round());
      if (position >= start && position <= end) {
        return chapter;
      }
    }
    return null;
  }

  @override
  Future<void> skipToQueueItem(int i) => _player.seek(Duration.zero, index: i);

  Future<void> disposeAllPlayers() => _player.dispose();

  AudioPlayer get player => _player;
}
