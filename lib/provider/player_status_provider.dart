import 'dart:developer';

import 'package:abs_flutter/provider/player_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PlayerStatus { stopped, playing, paused, hidden, loading }

class PlayerStatusProvider extends ChangeNotifier {
  late final ChangeNotifierProviderRef<PlayerStatusProvider> ref;
  late final PlayerProvider player;
  PlayerStatus _playStatus = PlayerStatus.stopped;
  String _itemId = '';
  PlayerStatus _previousStatus = PlayerStatus.stopped;
  CancelToken? _cancelToken;
  Duration _currentPosition = Duration.zero;

  PlayerStatusProvider(this.ref) {
    player = ref.read(playerProvider.notifier);
    addListener(_onStatusChanged);
  }

  Future<void> _onStatusChanged() async {
    switch (_playStatus) {
      case PlayerStatus.playing:
        log('PlayerStatus is playing now');
        await player.play();
        break;
      case PlayerStatus.paused:
        log('PlayerStatus is paused now');
        await player.pause();
        break;
      case PlayerStatus.stopped:
        log('PlayerStatus is stopped now');
        await player.stop();
        _cancelToken?.cancel();
        break;
      case PlayerStatus.hidden:
        log('PlayerStatus is hidden now');
        await player.stop();
        break;
      case PlayerStatus.loading:
        break;
    }
  }

  Duration get currentPosition => _currentPosition;

  void setCancelToken(CancelToken cancelToken) {
    _cancelToken = cancelToken;
  }

  PlayerStatus get playStatus => _playStatus;

  Future<void> setPlayStatus(PlayerStatus playStatus, String origin) async {
    log('setPlayStatus: $playStatus, origin: $origin');
    _previousStatus = _playStatus;
    _playStatus = playStatus;
    notifyListeners();
  }

  void setItemId(String itemId) {
    _itemId = itemId;
    _cancelToken?.cancel();
    notifyListeners();
  }

  void setPlayStatusAndItemId(PlayerStatus playStatus, String? itemId) {
    _previousStatus = _playStatus;
    _playStatus = playStatus;
    _itemId = itemId ?? _itemId;
    notifyListeners();
  }

  bool isPlaying({String? itemId}) {
    if (itemId != null && _itemId.isNotEmpty) {
      return _playStatus == PlayerStatus.playing && _itemId == itemId;
    } else {
      return _playStatus == PlayerStatus.playing;
    }
  }

  bool isPaused({String? itemId}) {
    if (itemId != null && _itemId.isNotEmpty) {
      return _playStatus == PlayerStatus.paused && _itemId == itemId;
    } else {
      return _playStatus == PlayerStatus.paused;
    }
  }

  bool isStopped({String? itemId}) {
    if (itemId != null && _itemId.isNotEmpty) {
      return _playStatus == PlayerStatus.stopped && _itemId == itemId;
    } else {
      return _playStatus == PlayerStatus.stopped;
    }
  }

  bool isLoading({String? itemId}) {
    if (itemId != null && _itemId.isNotEmpty) {
      return _playStatus == PlayerStatus.loading && _itemId == itemId;
    } else {
      return _playStatus == PlayerStatus.loading;
    }
  }

  void setLoading(String itemId) {
    _previousStatus = _playStatus;
    _playStatus = PlayerStatus.loading;
    _itemId = itemId;
    notifyListeners();
  }

  void setHidden() {
    _playStatus = PlayerStatus.hidden;
    notifyListeners();
  }

  void cancel() {
    _cancelToken?.cancel();
  }

  @override
  void dispose() {
    _cancelToken?.cancel();
    super.dispose();
  }

  void updatePosition(Duration position) {
    _currentPosition = position;
    notifyListeners();
  }
}

final playStatusProvider = ChangeNotifierProvider<PlayerStatusProvider>((ref) {
  return PlayerStatusProvider(ref);
});
