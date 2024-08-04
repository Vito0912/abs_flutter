// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configure_notification_settings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfigureNotificationSettingsRequest
    extends ConfigureNotificationSettingsRequest {
  @override
  final String? appriseApiUrl;
  @override
  final int? maxFailedAttempts;
  @override
  final int? maxNotificationQueue;

  factory _$ConfigureNotificationSettingsRequest(
          [void Function(ConfigureNotificationSettingsRequestBuilder)?
              updates]) =>
      (new ConfigureNotificationSettingsRequestBuilder()..update(updates))
          ._build();

  _$ConfigureNotificationSettingsRequest._(
      {this.appriseApiUrl, this.maxFailedAttempts, this.maxNotificationQueue})
      : super._();

  @override
  ConfigureNotificationSettingsRequest rebuild(
          void Function(ConfigureNotificationSettingsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigureNotificationSettingsRequestBuilder toBuilder() =>
      new ConfigureNotificationSettingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfigureNotificationSettingsRequest &&
        appriseApiUrl == other.appriseApiUrl &&
        maxFailedAttempts == other.maxFailedAttempts &&
        maxNotificationQueue == other.maxNotificationQueue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appriseApiUrl.hashCode);
    _$hash = $jc(_$hash, maxFailedAttempts.hashCode);
    _$hash = $jc(_$hash, maxNotificationQueue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfigureNotificationSettingsRequest')
          ..add('appriseApiUrl', appriseApiUrl)
          ..add('maxFailedAttempts', maxFailedAttempts)
          ..add('maxNotificationQueue', maxNotificationQueue))
        .toString();
  }
}

class ConfigureNotificationSettingsRequestBuilder
    implements
        Builder<ConfigureNotificationSettingsRequest,
            ConfigureNotificationSettingsRequestBuilder> {
  _$ConfigureNotificationSettingsRequest? _$v;

  String? _appriseApiUrl;
  String? get appriseApiUrl => _$this._appriseApiUrl;
  set appriseApiUrl(String? appriseApiUrl) =>
      _$this._appriseApiUrl = appriseApiUrl;

  int? _maxFailedAttempts;
  int? get maxFailedAttempts => _$this._maxFailedAttempts;
  set maxFailedAttempts(int? maxFailedAttempts) =>
      _$this._maxFailedAttempts = maxFailedAttempts;

  int? _maxNotificationQueue;
  int? get maxNotificationQueue => _$this._maxNotificationQueue;
  set maxNotificationQueue(int? maxNotificationQueue) =>
      _$this._maxNotificationQueue = maxNotificationQueue;

  ConfigureNotificationSettingsRequestBuilder() {
    ConfigureNotificationSettingsRequest._defaults(this);
  }

  ConfigureNotificationSettingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appriseApiUrl = $v.appriseApiUrl;
      _maxFailedAttempts = $v.maxFailedAttempts;
      _maxNotificationQueue = $v.maxNotificationQueue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfigureNotificationSettingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfigureNotificationSettingsRequest;
  }

  @override
  void update(
      void Function(ConfigureNotificationSettingsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfigureNotificationSettingsRequest build() => _build();

  _$ConfigureNotificationSettingsRequest _build() {
    final _$result = _$v ??
        new _$ConfigureNotificationSettingsRequest._(
            appriseApiUrl: appriseApiUrl,
            maxFailedAttempts: maxFailedAttempts,
            maxNotificationQueue: maxNotificationQueue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
