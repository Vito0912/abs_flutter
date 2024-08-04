// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailSettings extends EmailSettings {
  @override
  final String id;
  @override
  final int port;
  @override
  final bool secure;
  @override
  final BuiltList<EreaderDeviceObject> ereaderDevices;
  @override
  final String? host;
  @override
  final bool? rejectUnauthorized;
  @override
  final String? user;
  @override
  final String? pass;
  @override
  final String? testAddress;
  @override
  final String? fromAddress;

  factory _$EmailSettings([void Function(EmailSettingsBuilder)? updates]) =>
      (new EmailSettingsBuilder()..update(updates))._build();

  _$EmailSettings._(
      {required this.id,
      required this.port,
      required this.secure,
      required this.ereaderDevices,
      this.host,
      this.rejectUnauthorized,
      this.user,
      this.pass,
      this.testAddress,
      this.fromAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'EmailSettings', 'id');
    BuiltValueNullFieldError.checkNotNull(port, r'EmailSettings', 'port');
    BuiltValueNullFieldError.checkNotNull(secure, r'EmailSettings', 'secure');
    BuiltValueNullFieldError.checkNotNull(
        ereaderDevices, r'EmailSettings', 'ereaderDevices');
  }

  @override
  EmailSettings rebuild(void Function(EmailSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailSettingsBuilder toBuilder() => new EmailSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailSettings &&
        id == other.id &&
        port == other.port &&
        secure == other.secure &&
        ereaderDevices == other.ereaderDevices &&
        host == other.host &&
        rejectUnauthorized == other.rejectUnauthorized &&
        user == other.user &&
        pass == other.pass &&
        testAddress == other.testAddress &&
        fromAddress == other.fromAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, secure.hashCode);
    _$hash = $jc(_$hash, ereaderDevices.hashCode);
    _$hash = $jc(_$hash, host.hashCode);
    _$hash = $jc(_$hash, rejectUnauthorized.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, pass.hashCode);
    _$hash = $jc(_$hash, testAddress.hashCode);
    _$hash = $jc(_$hash, fromAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailSettings')
          ..add('id', id)
          ..add('port', port)
          ..add('secure', secure)
          ..add('ereaderDevices', ereaderDevices)
          ..add('host', host)
          ..add('rejectUnauthorized', rejectUnauthorized)
          ..add('user', user)
          ..add('pass', pass)
          ..add('testAddress', testAddress)
          ..add('fromAddress', fromAddress))
        .toString();
  }
}

class EmailSettingsBuilder
    implements Builder<EmailSettings, EmailSettingsBuilder> {
  _$EmailSettings? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  bool? _secure;
  bool? get secure => _$this._secure;
  set secure(bool? secure) => _$this._secure = secure;

  ListBuilder<EreaderDeviceObject>? _ereaderDevices;
  ListBuilder<EreaderDeviceObject> get ereaderDevices =>
      _$this._ereaderDevices ??= new ListBuilder<EreaderDeviceObject>();
  set ereaderDevices(ListBuilder<EreaderDeviceObject>? ereaderDevices) =>
      _$this._ereaderDevices = ereaderDevices;

  String? _host;
  String? get host => _$this._host;
  set host(String? host) => _$this._host = host;

  bool? _rejectUnauthorized;
  bool? get rejectUnauthorized => _$this._rejectUnauthorized;
  set rejectUnauthorized(bool? rejectUnauthorized) =>
      _$this._rejectUnauthorized = rejectUnauthorized;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  String? _pass;
  String? get pass => _$this._pass;
  set pass(String? pass) => _$this._pass = pass;

  String? _testAddress;
  String? get testAddress => _$this._testAddress;
  set testAddress(String? testAddress) => _$this._testAddress = testAddress;

  String? _fromAddress;
  String? get fromAddress => _$this._fromAddress;
  set fromAddress(String? fromAddress) => _$this._fromAddress = fromAddress;

  EmailSettingsBuilder() {
    EmailSettings._defaults(this);
  }

  EmailSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _port = $v.port;
      _secure = $v.secure;
      _ereaderDevices = $v.ereaderDevices.toBuilder();
      _host = $v.host;
      _rejectUnauthorized = $v.rejectUnauthorized;
      _user = $v.user;
      _pass = $v.pass;
      _testAddress = $v.testAddress;
      _fromAddress = $v.fromAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailSettings;
  }

  @override
  void update(void Function(EmailSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailSettings build() => _build();

  _$EmailSettings _build() {
    _$EmailSettings _$result;
    try {
      _$result = _$v ??
          new _$EmailSettings._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'EmailSettings', 'id'),
              port: BuiltValueNullFieldError.checkNotNull(
                  port, r'EmailSettings', 'port'),
              secure: BuiltValueNullFieldError.checkNotNull(
                  secure, r'EmailSettings', 'secure'),
              ereaderDevices: ereaderDevices.build(),
              host: host,
              rejectUnauthorized: rejectUnauthorized,
              user: user,
              pass: pass,
              testAddress: testAddress,
              fromAddress: fromAddress);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ereaderDevices';
        ereaderDevices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EmailSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
