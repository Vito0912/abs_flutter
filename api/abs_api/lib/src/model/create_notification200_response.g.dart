// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNotification200Response extends CreateNotification200Response {
  @override
  final NotificationSettings? settings;

  factory _$CreateNotification200Response(
          [void Function(CreateNotification200ResponseBuilder)? updates]) =>
      (new CreateNotification200ResponseBuilder()..update(updates))._build();

  _$CreateNotification200Response._({this.settings}) : super._();

  @override
  CreateNotification200Response rebuild(
          void Function(CreateNotification200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNotification200ResponseBuilder toBuilder() =>
      new CreateNotification200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNotification200Response && settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateNotification200Response')
          ..add('settings', settings))
        .toString();
  }
}

class CreateNotification200ResponseBuilder
    implements
        Builder<CreateNotification200Response,
            CreateNotification200ResponseBuilder> {
  _$CreateNotification200Response? _$v;

  NotificationSettingsBuilder? _settings;
  NotificationSettingsBuilder get settings =>
      _$this._settings ??= new NotificationSettingsBuilder();
  set settings(NotificationSettingsBuilder? settings) =>
      _$this._settings = settings;

  CreateNotification200ResponseBuilder() {
    CreateNotification200Response._defaults(this);
  }

  CreateNotification200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _settings = $v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNotification200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNotification200Response;
  }

  @override
  void update(void Function(CreateNotification200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNotification200Response build() => _build();

  _$CreateNotification200Response _build() {
    _$CreateNotification200Response _$result;
    try {
      _$result = _$v ??
          new _$CreateNotification200Response._(settings: _settings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNotification200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
