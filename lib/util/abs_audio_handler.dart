import 'dart:developer';
import 'dart:io';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/chapter.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/provider/history_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/sleep_timer_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_service/audio_service.dart';

class AbsAudioHandler extends BaseAudioHandler with QueueHandler, SeekHandler {
  final AudioPlayer _player = AudioPlayer();
  late final PlayerStatusProvider _playerStatusProvider;
  ProgressProvider? _progressProvider;
  Map<String, dynamic>? _settingsProvider;
  final ProviderContainer _container;
  bool? seeking;

  AbsAudioHandler(this._container) {
    _playerStatusProvider = _container.read(playStatusProvider.notifier);
    _progressProvider = _container.read(progressProvider);

    // Listen for changes in the progress state
    _container.listen<ProgressProvider>(progressProvider, (previous, next) {
      _progressProvider = next;
    });

    _container.listen<Map<String, dynamic>>(settingsProvider, (previous, next) {
      _settingsProvider = next;
    });

    _player.playbackEventStream.map(_transformEvent).pipe(playbackState);

    _player.playerStateStream.distinct().listen((event) {
      if (seeking == true) {
        return;
      }

      if (event.playing) {
        // Fallback
        double interval = 60;
        if (_settingsProvider != null &&
            _settingsProvider!['syncInterval'] != null) {
          interval =
              double.parse(_settingsProvider!['syncInterval'].toString());
        }

        log('Sync interval now $interval');

        _container
            .read(progressTimerProvider.notifier)
            .startSending(Duration(seconds: interval.toInt()));
      } else {
        if (event.processingState != ProcessingState.loading &&
            event.processingState != ProcessingState.buffering &&
            _container.read(playStatusProvider).playStatus ==
                PlayerStatus.playing) {
          // Needed for windows
          log('Force play');
          _player.play();
        } else {
          log('Stop sending');
          _container.read(progressTimerProvider.notifier).stopSending();
        }
      }
    });

    _player.positionStream.listen((event) async {
      if (_player.duration != null && _player.position >= _player.duration!) {
        log('Stopping player due to position: ${_player.position} and duration: ${_player.duration}');
        await _container
            .read(playStatusProvider)
            .setPlayStatus(PlayerStatus.completed, 'Audio completed');

        _container.read(progressTimerProvider.notifier).stopSending();

        final queue = _container.read(queueProvider);
        if (queue.isNotEmpty) {
          final session = _container.read(sessionProvider.notifier);
          session.load(queue[0].itemId, null);
          queue.removeAt(0);
        }
      }
    });
  }

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    AudioSource source = AudioSource.uri(Uri.parse(mediaItem.id));
    await _player.setAudioSource(source);
  }

  @override
  Future<void> playMediaItem(MediaItem item) async {
    late AudioSource source;
    if (item.extras?['streaming'] == true) {
      source = AudioSource.uri(Uri.parse(item.id));
    } else {
      source = AudioSource.file(item.id);
    }

    final List<MediaProgress>? progresses = _progressProvider?.progress;
    MediaProgress? progress;
    if (progresses != null) {
      for (final progress1 in progresses) {
        if (progress1.libraryItemId == item.extras?['libraryItemId']) {
          progress = progress1;
          break;
        }
      }
    }

    mediaItem.add(item);

    await _player.setAudioSource(source);

    await _playerStatusProvider.setPlayStatus(
        PlayerStatus.playing, 'playMediaItem');

    await _player.play();

    if (progress != null && progress.progress! <= 0.95) {
      log('Seeking to ${progress.currentTime?.round()} due to progress');
      await _player.seek(Duration(seconds: progress.currentTime?.round() ?? 0));
    }
  }

  @override
  Future<void> play() async {
    final currentStatus = _container.read(playStatusProvider.notifier);
    if (currentStatus.playStatus != PlayerStatus.playing) {
      await currentStatus.setPlayStatusQuietly(PlayerStatus.playing, 'play');
    }

    await _player.play();
    _container.read(timerProvider.notifier).continueTimer();
  }

  @override
  Future<void> pause() async {
    final currentStatus = _container.read(playStatusProvider.notifier);
    if (currentStatus.playStatus != PlayerStatus.paused) {
      await currentStatus.setPlayStatusQuietly(PlayerStatus.paused, 'pause');
    }
    await _player.pause();
    _container.read(timerProvider.notifier).pause();
  }

  @override
  Future<void> stop() async {
    final currentStatus = _container.read(playStatusProvider.notifier);
    if (currentStatus.playStatus != PlayerStatus.stopped) {
      await currentStatus.setPlayStatusQuietly(PlayerStatus.stopped, 'stop');
    }
    await _player.stop();
    _container.read(timerProvider.notifier).stop();
    _container.read(sessionProvider.notifier).closeOpenSession();
    _container.read(timerProvider.notifier).stop();

    await playbackState.firstWhere(
        (state) => state.processingState == AudioProcessingState.idle);
  }

  @override
  Future<void> seek(Duration position) async {
    await _player.seek(position);

    final itemId = mediaItem.value?.extras?['libraryItemId'];
    if (itemId != null) {
      final history = _container.read(historyProviderFamily(itemId).notifier);
      history.addHistory(HistoryType.seek, position.inSeconds.toDouble());
    }
  }

  Future<void> setVolume(double volume) async {
    await _player.setVolume(volume);
  }

  @override
  Future<void> setSpeed(double speed) async {
    await _player.setSpeed(speed);
  }

  Chapter? getCurrentChapter() {
    final List<Map<String, dynamic>>? jsonC =
        mediaItem.value?.extras?['chapters'];
    if (jsonC == null) {
      return null;
    }
    final List<Chapter> chapters =
        jsonC.map((e) => Chapter.fromJson(e)).toList();
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

  bool isNextChapter() {
    final Chapter? currentChapter = getCurrentChapter();
    if (currentChapter == null) {
      return false;
    }
    final List<Map<String, dynamic>>? jsonC =
        mediaItem.value?.extras?['chapters'];
    if (jsonC == null) {
      return false;
    }
    final List<Chapter> chapters =
        jsonC.map((e) => Chapter.fromJson(e)).toList();
    final int index = chapters.indexWhere((chap) => chap.start == currentChapter.start);
    return index < chapters.length - 1;
  }

  @override
  Future<void> skipToQueueItem(int index) =>
      _player.seek(Duration.zero, index: index);

  Future<void> disposeAllPlayers() => _player.dispose();

  AudioPlayer get player => _player;

  // TODO: Wrong implementation
  @override
  Future<void> seekForward(bool begin) async {
    final settings = _container.read(settingsProvider);
    final int seconds = settings['fastForwardSeconds'] ?? 10;
    final Duration position = _player.position;
    final Duration newPosition = position + Duration(seconds: seconds);
    await seek(newPosition);
  }

  // TODO: Wrong implementation
  @override
  Future<void> seekBackward(bool begin) async {
    final settings = _container.read(settingsProvider);
    final int seconds = settings['rewindSeconds'] ?? 10;
    final Duration position = _player.position;
    final Duration newPosition = position - Duration(seconds: seconds);
    await seek(newPosition);
  }

  @override
  Future<void> fastForward() async {
    final settings = _container.read(settingsProvider);
    final seconds = settings['fastForwardSeconds'] ?? 10;
    final Duration position = _player.position;
    final Duration newPosition =
        position + Duration(seconds: double.parse(seconds.toString()).toInt());
    await seek(newPosition);
  }

  @override
  Future<void> rewind() async {
    final settings = _container.read(settingsProvider);
    final seconds = settings['rewindSeconds'] ?? 10;
    final Duration position = _player.position;
    final Duration newPosition =
        position - Duration(seconds: double.parse(seconds.toString()).toInt());
    await seek(newPosition);
  }

  // Actually this should skip to next item. For us to next chapter
  @override
  Future<void> skipToNext() async {
    Chapter? currentChapter = getCurrentChapter();
    if (currentChapter != null && isNextChapter()) {
      seek(Duration(seconds: currentChapter.end.toInt() + 1));
    }
  }

  @override
  Future<void> skipToPrevious() async {
    Chapter? currentChapter = getCurrentChapter();
    if (currentChapter != null) {
      seek(Duration(seconds: currentChapter.start.toInt() - 1));
    }
  }

  ///
  ///
  ///
  ///
  ///
  ///

  PlaybackState _transformEvent(PlaybackEvent event) {
    return PlaybackState(
      controls: [
        //if (!Platform.isAndroid) MediaControl.skipToPrevious,
        MediaControl.rewind,
        if (_player.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
        MediaControl.fastForward,
        //if (!Platform.isAndroid) MediaControl.skipToNext
      ],
      systemActions: {
        MediaAction.skipToPrevious,
        MediaAction.rewind,
        if (!(_settingsProvider?['lockSeekingNotification'] ?? false))
          MediaAction.seek,
        MediaAction.skipToNext,
        MediaAction.setSpeed,
        MediaAction.fastForward
      },
      androidCompactActionIndices: const [0, 1, 3],
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      queueIndex: event.currentIndex,
      captioningEnabled: true,
    );
  }
}
