import 'dart:async';
import 'dart:developer';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectionProvider = StateNotifierProvider<ConnectionNotifier, bool>((ref) {
  return ConnectionNotifier(ref);
});

class ConnectionNotifier extends StateNotifier<bool> {
  final Ref ref;
  Timer? _serverReachabilityTimer;
  final _connectivity = Connectivity();

  ConnectionNotifier(this.ref) : super(false) {
    log('ConnectionNotifier initialized');
    _connectivity.onConnectivityChanged.listen(_handleConnectivityChange);
    _checkServerReachability(); // Initial server reachability check
  }

  void _handleConnectivityChange(List<ConnectivityResult> results) {
    log('Connectivity changed: $results');
    _updateConnectivityStatus(results);
  }

  Future<void> _updateConnectivityStatus(List<ConnectivityResult> results) async {
    bool isConnected = results.any((result) => result != ConnectivityResult.none);
    final isReachable = isConnected ? await _isServerReachable() : false;

    // Only update state if there's a real change in connection status
    if (state != isReachable) {
      state = isReachable;
      log('Server reachable: $isReachable');
      if (isReachable) {
        _startServerReachabilityCheck(); // Start periodic checks if reachable
      } else {
        _stopServerReachabilityCheck(); // Stop checks if not reachable
      }
    }
  }

  Future<bool> _isServerReachable() async {
    final User? user = ref.read(currentUserProvider);

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
    _serverReachabilityTimer = Timer.periodic(const Duration(minutes: 1), (timer) async {
      final isReachable = await _isServerReachable();
      if (state != isReachable) {
        state = isReachable;
        log('Server reachable: $isReachable');
      }
    });
  }

  void _startServerReachabilityCheck() {
    _serverReachabilityTimer?.cancel();
    _serverReachabilityTimer = Timer.periodic(const Duration(minutes: 1), (timer) async {
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

  @override
  void dispose() {
    _stopServerReachabilityCheck();
    super.dispose();
  }
}
