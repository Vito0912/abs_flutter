import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/models/user.dart' as m;
import 'package:abs_flutter/provider/library_item_provider.dart';
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
      if(state) {
        _syncProgressWhenOnline();
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

  void _checkServerReachability() {
    _serverReachabilityTimer?.cancel();
    log('Triggering server reachability check');
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
      log('Server reachable: $isReachable');

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

  void _syncProgressWhenOnline() async {
    final api = ref.read(apiProvider);
    final progressList = ref.read(offlineProgressProviderHandler.notifier);
    final allUsers = ref.read(usersProvider);

    if (api == null) return;

    for (m.User user in allUsers) {
      List<ProgressItem> progresses = progressList.getProgressByUser(user.id!);
      List<ItemSessionKey> distinctItemSessionKeys = progresses
          .map((item) => ItemSessionKey(item.itemId, item.sessionId))
          .toSet()
          .toList();

      for (ItemSessionKey distinctSession in distinctItemSessionKeys) {
        bool successSessionSave = false;
        final ProgressItem item = progresses
            .where((item) =>
                item.itemId == distinctSession.itemId &&
                item.sessionId == distinctSession.sessionId)
            .first;
        final num addedListeningTime = progresses
            .where((item) =>
                item.itemId == distinctSession.itemId &&
                item.sessionId == distinctSession.sessionId)
            .map((item) => item.timeListened)
            .reduce((a, b) => a + b);
        final List<ProgressItem> itemSessionItems = progresses
            .where((item) =>
                item.itemId == distinctSession.itemId &&
                item.sessionId == distinctSession.sessionId)
            .toList();

        final session = ref.read(sessionProvider.notifier).session;

        if(item.sessionId != null && session != null) {

            log('Sending data to server from offline: $addedListeningTime');

            SyncOpenSessionRequestBuilder syncSession =
            SyncOpenSessionRequestBuilder()
              ..id = session.id
              ..timeListened = addedListeningTime
              ..currentTime = itemSessionItems.last.currentTime;

            try {
              await api
                  .getSessionApi()
                  .syncOpenSession(
                id: session.id!,
                syncOpenSessionRequest: syncSession.build(),
              );
              successSessionSave = true;
              progressList.removeListProgress(itemSessionItems);
            } catch (e) {
              log(e.toString());
              successSessionSave = false;
            }


        }

        if(successSessionSave) return;

        // If it is not from a open session

        // Currently oneOf is not fully supported. We need to build our own json
        final Map<String, dynamic> bookItem = {};

        final libraryItem = await ref.read(itemProvider(item.itemId).future);

        if(libraryItem == null) {
          log('Library item not found: ${item.itemId}');
        } else {
          Iterable<AuthorMinified> authors = libraryItem.media?.metadata?.authors ?? [];
          bookItem['displayTitle'] = libraryItem.media?.metadata?.title;
          bookItem['displayAuthor'] = authors.map((e) => e.name).join(', ');
          bookItem['libraryId'] = libraryItem.libraryId;
        }

        bookItem['mediaType'] = 'book';
        bookItem['userId'] = item.userId;
        bookItem['id'] = const Uuid().v4();
        bookItem['libraryItemId'] = item.itemId;
        bookItem['mediaItemId'] = item.itemId;
        bookItem['currentTime'] = itemSessionItems.last.currentTime;
        bookItem['duration'] = item.durationOfItem;
        bookItem['timeListening'] = addedListeningTime;
        bookItem['starttime'] = item.currentTime;
        bookItem['createdAt'] = item.createdAt?.millisecondsSinceEpoch;
        bookItem['updatedAt'] = itemSessionItems.last.createdAt?.millisecondsSinceEpoch;
        bookItem['deviceInfo'] = {
          'clientName': appName,
          'clientVersion': version,
          'deviceId': user.hashCode.toString()
        };

        final Object? pSession = api.serializers
            .fromJson(PlaybackSession.serializer, jsonEncode(bookItem));

        bool error = false;
        try {
          await api.getSessionApi().createLocalSession(
              playbackSession: pSession as PlaybackSession);
        } catch (e) {
          if(e is DioException) {
            log(e.toString());
          }
          error = true;
        }

        if(!error) {
          log('Synced progress for item: ${item.itemId}');
          progressList.removeListProgress(itemSessionItems);
        }

      }


    }
  }
}

class ItemSessionKey {
  final String itemId;
  final String? sessionId;

  ItemSessionKey(this.itemId, this.sessionId);

  // Override equals and hashCode to properly compare instances
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ItemSessionKey &&
        other.itemId == itemId &&
        other.sessionId == sessionId;
  }

  @override
  int get hashCode => itemId.hashCode ^ sessionId.hashCode;
}
