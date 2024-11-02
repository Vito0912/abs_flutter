import 'dart:async';
import 'dart:convert';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/me/user.dart' as m;
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final connectionProvider =
    StateNotifierProvider<ConnectionNotifier, bool>((ref) {
  return ConnectionNotifier(ref);
});

class ConnectionNotifier extends StateNotifier<bool> {
  final Ref ref;
  Timer? _serverReachabilityTimer;
  final _connectivity = Connectivity();
  List<ConnectivityResult> _currentConnectivity = [];

  ConnectionNotifier(this.ref) : super(false) {
    log('ConnectionNotifier initialized');
    _connectivity.onConnectivityChanged.listen(_handleConnectivityChange);
    _checkServerReachability(); // Initial server reachability check
    syncOfflineProgress(ref);
  }

  void _handleConnectivityChange(List<ConnectivityResult> results) {
    log('Connectivity changed: $results');
    _currentConnectivity = results;
    _updateConnectivityStatus(results);
  }

  Future<void> _updateConnectivityStatus(
      List<ConnectivityResult> results) async {
    bool isConnected =
        results.any((result) => result != ConnectivityResult.none);
    final isReachable = isConnected ? await _isServerReachable() : false;

    // Only update state if there's a real change in connection status
    if (state != isReachable) {
      state = isReachable;
      if (state) {
        syncOfflineProgress(ref);
      }
      log('Server reachable: $isReachable');
      if (isReachable) {
        _startServerReachabilityCheck(); // Start periodic checks if reachable
      } else {
        _stopServerReachabilityCheck(); // Stop checks if not reachable
      }
    }
  }

  Future<bool> _isServerReachable() async {
    final m.User? user = ref.read(currentUserProvider);

    if (user?.server?.url == null) return false;

    final serverUrl = user!.server!.url;

    try {
      final response = await Dio().get('$serverUrl/healthcheck');
      return response.statusCode == 200;
    } catch (e) {
      log('Server not reachable: $e');
      return false;
    }
  }

  Future<void> _checkServerReachability() async {
    _serverReachabilityTimer?.cancel();
    final isReachable = await _isServerReachable();
    if (state != isReachable) {
      state = isReachable;
    }
    _serverReachabilityTimer =
        Timer.periodic(const Duration(minutes: 1), (timer) async {
      final isReachable = await _isServerReachable();
      if (state != isReachable) {
        state = isReachable;
        log('Server reachable: $isReachable');
      }
    });
  }

  void _startServerReachabilityCheck() {
    _serverReachabilityTimer?.cancel();
    _serverReachabilityTimer =
        Timer.periodic(const Duration(minutes: 1), (timer) async {
      final isReachable = await _isServerReachable();
      if (state != isReachable) {
        state = isReachable;
        log('Server reachable: $isReachable');
      }
      if (!isReachable) {
        _stopServerReachabilityCheck(); // Stop the timer if the server is no longer reachable
      }
    });
  }

  void _stopServerReachabilityCheck() {
    _serverReachabilityTimer?.cancel();
  }

  /// Manually set the server's state
  void setServerState(bool isReachable) {
    if (state != isReachable) {
      state = isReachable;
      log('Server reachable: $isReachable', name: 'ConnectionNotifier');

      // Immediately start or stop reachability checks based on the new state
      if (isReachable) {
        _startServerReachabilityCheck();
      } else {
        _stopServerReachabilityCheck();
      }
    }
  }

  void checkServerReachability() {
    _checkServerReachability();
  }

  List<ConnectivityResult> get currentConnectivity => _currentConnectivity;

  @override
  void dispose() {
    _stopServerReachabilityCheck();
    super.dispose();
  }

  /////
  /////
  /////

  static void syncOfflineProgress(dynamic ref) async {
    final api = ref.read(apiProvider);
    final progressList = ref.read(offlineProgressProviderHandler.notifier);
    final allUsers = ref.read(usersProvider);

    if (api == null || allUsers.isEmpty) return;

    for (m.User user in allUsers) {
      List<ProgressItem> progresses = progressList.getProgressByUser(user.id);
      List<ItemSessionKey> distinctItemSessionKeys = progresses
          .map((item) =>
              ItemSessionKey(item.itemId, item.sessionId, item.episodeId))
          .toSet()
          .toList();

      for (ItemSessionKey distinctSession in distinctItemSessionKeys) {
        bool successSessionSave = false;
        final ProgressItem item = progresses
            .where((item) =>
                item.itemId == distinctSession.itemId &&
                item.sessionId == distinctSession.sessionId &&
                item.episodeId == distinctSession.episodeId)
            .first;

        final session = ref.read(sessionProvider.notifier).session;

        if (item.sessionId != null && session != null) {
          log('Sending data to server from offline: ${item.timeListened}');

          SyncOpenSessionRequestBuilder syncSession =
              SyncOpenSessionRequestBuilder()
                ..id = session.id
                ..timeListened = item.timeListened
                ..currentTime = item.currentTime;

          try {
            await api.getSessionApi().syncOpenSession(
                  id: session.id!,
                  syncOpenSessionRequest: syncSession.build(),
                );
            successSessionSave = true;
            progressList.removeProgress(item);
          } catch (e) {
            log(e.toString());
            successSessionSave = false;
          }
        }

        if (successSessionSave) return;

        // If it is not from a open session

        // Currently oneOf is not fully supported. We need to build our own json
        final Map<String, dynamic> bookItem = {};

        final libraryItem = await ref.read(itemProvider(item.itemId).future);

        if (libraryItem == null) {
          log('Library item not found: ${item.itemId}');
        } else {
          Iterable<AuthorMinified> authors =
              libraryItem.media?.metadata?.authors ?? [];
          bookItem['displayTitle'] = libraryItem.media?.metadata?.title;
          bookItem['displayAuthor'] = authors.map((e) => e.name).join(', ');
          bookItem['libraryId'] = libraryItem.libraryId;
        }

        bookItem['mediaType'] = item.episodeId != null ? 'podcast' : 'book';
        bookItem['userId'] = item.userId;
        bookItem['id'] = const Uuid().v4();
        bookItem['libraryItemId'] = item.itemId;
        if (item.episodeId != null) {
          bookItem['episodeId'] = item.episodeId;
        }
        bookItem['mediaItemId'] = item.episodeId ?? item.itemId;
        bookItem['currentTime'] = item.currentTime;
        bookItem['duration'] = item.durationOfItem;
        bookItem['timeListening'] = item.timeListened;
        bookItem['starttime'] = item.currentTime;
        bookItem['createdAt'] = item.createdAt?.millisecondsSinceEpoch;
        bookItem['updatedAt'] = item.updatedAt?.millisecondsSinceEpoch;
        bookItem['deviceInfo'] = {
          'clientName': appName,
          'clientVersion': version,
          'deviceId': user.hashCode.toString()
        };

        final Object? pSession = api.serializers
            .fromJson(PlaybackSession.serializer, jsonEncode(bookItem));

        bool error = false;
        try {
          await api
              .getSessionApi()
              .createLocalSession(playbackSession: pSession as PlaybackSession);
        } catch (e) {
          if (e is DioException) {
            log(e.toString());
          }
          error = true;
          item.success = false;
          progressList.updateProgress(item);
        }

        if (!error) {
          log('Synced progress for item: ${item.itemId}');
          progressList.removeProgress(item);
        }
      }
    }
  }
}

class ItemSessionKey {
  final String itemId;
  final String? sessionId;
  final String? episodeId;

  ItemSessionKey(this.itemId, this.sessionId, this.episodeId);

  // Override equals and hashCode to properly compare instances
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemSessionKey &&
        other.itemId == itemId &&
        other.sessionId == sessionId &&
        other.episodeId == episodeId;
  }

  @override
  int get hashCode => itemId.hashCode ^ sessionId.hashCode ^ episodeId.hashCode;
}
