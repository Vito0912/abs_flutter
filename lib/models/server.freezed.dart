// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Server _$ServerFromJson(Map<String, dynamic> json) {
  return _Server.fromJson(json);
}

/// @nodoc
mixin _$Server {
  int get port => throw _privateConstructorUsedError;
  set port(int value) => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  set host(String value) => throw _privateConstructorUsedError;
  bool get ssl => throw _privateConstructorUsedError;
  set ssl(bool value) => throw _privateConstructorUsedError;
  String? get subdirectory => throw _privateConstructorUsedError;
  set subdirectory(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Server to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerCopyWith<Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerCopyWith<$Res> {
  factory $ServerCopyWith(Server value, $Res Function(Server) then) =
      _$ServerCopyWithImpl<$Res, Server>;
  @useResult
  $Res call({int port, String host, bool ssl, String? subdirectory});
}

/// @nodoc
class _$ServerCopyWithImpl<$Res, $Val extends Server>
    implements $ServerCopyWith<$Res> {
  _$ServerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? port = null,
    Object? host = null,
    Object? ssl = null,
    Object? subdirectory = freezed,
  }) {
    return _then(_value.copyWith(
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      ssl: null == ssl
          ? _value.ssl
          : ssl // ignore: cast_nullable_to_non_nullable
              as bool,
      subdirectory: freezed == subdirectory
          ? _value.subdirectory
          : subdirectory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> implements $ServerCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int port, String host, bool ssl, String? subdirectory});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$ServerCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? port = null,
    Object? host = null,
    Object? ssl = null,
    Object? subdirectory = freezed,
  }) {
    return _then(_$ServerImpl(
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      ssl: null == ssl
          ? _value.ssl
          : ssl // ignore: cast_nullable_to_non_nullable
              as bool,
      subdirectory: freezed == subdirectory
          ? _value.subdirectory
          : subdirectory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerImpl extends _Server with DiagnosticableTreeMixin {
  _$ServerImpl(
      {required this.port,
      required this.host,
      required this.ssl,
      this.subdirectory})
      : super._();

  factory _$ServerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerImplFromJson(json);

  @override
  int port;
  @override
  String host;
  @override
  bool ssl;
  @override
  String? subdirectory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Server(port: $port, host: $host, ssl: $ssl, subdirectory: $subdirectory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Server'))
      ..add(DiagnosticsProperty('port', port))
      ..add(DiagnosticsProperty('host', host))
      ..add(DiagnosticsProperty('ssl', ssl))
      ..add(DiagnosticsProperty('subdirectory', subdirectory));
  }

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerImplToJson(
      this,
    );
  }
}

abstract class _Server extends Server {
  factory _Server(
      {required int port,
      required String host,
      required bool ssl,
      String? subdirectory}) = _$ServerImpl;
  _Server._() : super._();

  factory _Server.fromJson(Map<String, dynamic> json) = _$ServerImpl.fromJson;

  @override
  int get port;
  set port(int value);
  @override
  String get host;
  set host(String value);
  @override
  bool get ssl;
  set ssl(bool value);
  @override
  String? get subdirectory;
  set subdirectory(String? value);

  /// Create a copy of Server
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
