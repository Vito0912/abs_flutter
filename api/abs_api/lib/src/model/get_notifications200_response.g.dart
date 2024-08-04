// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNotifications200Response extends GetNotifications200Response {
  @override
  final GetNotifications200ResponseData? data;
  @override
  final NotificationSettings? settings;

  factory _$GetNotifications200Response(
          [void Function(GetNotifications200ResponseBuilder)? updates]) =>
      (new GetNotifications200ResponseBuilder()..update(updates))._build();

  _$GetNotifications200Response._({this.data, this.settings}) : super._();

  @override
  GetNotifications200Response rebuild(
          void Function(GetNotifications200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNotifications200ResponseBuilder toBuilder() =>
      new GetNotifications200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNotifications200Response &&
        data == other.data &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNotifications200Response')
          ..add('data', data)
          ..add('settings', settings))
        .toString();
  }
}

class GetNotifications200ResponseBuilder
    implements
        Builder<GetNotifications200Response,
            GetNotifications200ResponseBuilder> {
  _$GetNotifications200Response? _$v;

  GetNotifications200ResponseDataBuilder? _data;
  GetNotifications200ResponseDataBuilder get data =>
      _$this._data ??= new GetNotifications200ResponseDataBuilder();
  set data(GetNotifications200ResponseDataBuilder? data) => _$this._data = data;

  NotificationSettingsBuilder? _settings;
  NotificationSettingsBuilder get settings =>
      _$this._settings ??= new NotificationSettingsBuilder();
  set settings(NotificationSettingsBuilder? settings) =>
      _$this._settings = settings;

  GetNotifications200ResponseBuilder() {
    GetNotifications200Response._defaults(this);
  }

  GetNotifications200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _settings = $v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNotifications200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNotifications200Response;
  }

  @override
  void update(void Function(GetNotifications200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNotifications200Response build() => _build();

  _$GetNotifications200Response _build() {
    _$GetNotifications200Response _$result;
    try {
      _$result = _$v ??
          new _$GetNotifications200Response._(
              data: _data?.build(), settings: _settings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNotifications200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
