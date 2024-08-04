import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'server.freezed.dart';

part 'server.g.dart';

@unfreezed
class Server with _$Server {

  Server._();

  factory Server({
    required int port,
    required String host,
    required bool ssl,
  }) = _Server;


  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

  // Full URL to the server
  String get url => 'http${ssl ? 's' : ''}://$host:$port';
}

