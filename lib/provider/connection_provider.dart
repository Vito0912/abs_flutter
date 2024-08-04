import 'dart:async';
import 'dart:io';

import 'package:abs_flutter/provider/user_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the possible states
enum ConnectionState {
  noInternet,
  cantConnectToServer,
  cantConnectToService,
  reachable,
  connected,
}

// Define a class to manage the connection state
class ConnectionNotifier extends StateNotifier<ConnectionState> {
  ConnectionNotifier(this.ref) : super(ConnectionState.noInternet) {
    _init();
  }

  final Ref ref;
  Timer? _timer;
  bool _isChecking = false;
  final Dio _dio = Dio();

  // Define intervals as variables
  final Duration noInternetInterval = Duration(seconds: 30);
  final Duration cantConnectToServerInterval = Duration(minutes: 1);
  final Duration cantConnectToServiceInterval = Duration(minutes: 1);
  final Duration reachableInterval = Duration(minutes: 1);

  Future<void> _init() async {
    await _checkConnection();
  }

  Future<void> _checkConnection() async {
    if (_isChecking) return;
    _isChecking = true;

    final currentUser = ref.watch(currentUserProvider);
    if (currentUser == null) {
      state = ConnectionState.cantConnectToServer;
      return;
    }
    final serverUrl = currentUser.server!.url;

    if (!(await _hasInternetConnection())) {
      state = ConnectionState.noInternet;
      _startChecking(noInternetInterval);
    } else if (!(await _canPingServer(serverUrl))) {
      state = ConnectionState.cantConnectToServer;
      _startChecking(cantConnectToServerInterval);
    } else if (!(await _canReachService(serverUrl))) {
      state = ConnectionState.cantConnectToService;
      _startChecking(cantConnectToServiceInterval);
    } else {
      state = ConnectionState.reachable;
      _startChecking(reachableInterval);
    }

    _isChecking = false;
  }

  Future<bool> _hasInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  Future<bool> _canPingServer(String url) async {
    try {
      final result = await InternetAddress.lookup(url);
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  Future<bool> _canReachService(String url) async {
    try {
      final response = await _dio.get('$url/health');
      return response.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  void _startChecking(Duration interval) {
    _timer?.cancel();
    _timer = Timer.periodic(interval, (_) async {
      await _checkConnection();
    });
  }

  bool canReachServer() {
    return state == ConnectionState.reachable || state == ConnectionState.connected;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

// Define a provider for the connection notifier
final connectionProvider =
StateNotifierProvider<ConnectionNotifier, ConnectionState>((ref) {
  return ConnectionNotifier(ref);
});

// Define an extension to expose the canReachServer method
extension ConnectionNotifierX on ConnectionNotifier {
  bool canReachServer() {
    return state == ConnectionState.reachable || state == ConnectionState.connected;
  }
}

