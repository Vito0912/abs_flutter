// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationSettings extends NotificationSettings {
  @override
  final String? id;
  @override
  final String? appriseType;
  @override
  final String? appriseApiUrl;
  @override
  final BuiltList<Notification>? notifications;
  @override
  final int? maxFailedAttempts;
  @override
  final int? maxNotificationQueue;
  @override
  final int? notificationDelay;

  factory _$NotificationSettings(
          [void Function(NotificationSettingsBuilder)? updates]) =>
      (new NotificationSettingsBuilder()..update(updates))._build();

  _$NotificationSettings._(
      {this.id,
      this.appriseType,
      this.appriseApiUrl,
      this.notifications,
      this.maxFailedAttempts,
      this.maxNotificationQueue,
      this.notificationDelay})
      : super._();

  @override
  NotificationSettings rebuild(
          void Function(NotificationSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationSettingsBuilder toBuilder() =>
      new NotificationSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSettings &&
        id == other.id &&
        appriseType == other.appriseType &&
        appriseApiUrl == other.appriseApiUrl &&
        notifications == other.notifications &&
        maxFailedAttempts == other.maxFailedAttempts &&
        maxNotificationQueue == other.maxNotificationQueue &&
        notificationDelay == other.notificationDelay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, appriseType.hashCode);
    _$hash = $jc(_$hash, appriseApiUrl.hashCode);
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jc(_$hash, maxFailedAttempts.hashCode);
    _$hash = $jc(_$hash, maxNotificationQueue.hashCode);
    _$hash = $jc(_$hash, notificationDelay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationSettings')
          ..add('id', id)
          ..add('appriseType', appriseType)
          ..add('appriseApiUrl', appriseApiUrl)
          ..add('notifications', notifications)
          ..add('maxFailedAttempts', maxFailedAttempts)
          ..add('maxNotificationQueue', maxNotificationQueue)
          ..add('notificationDelay', notificationDelay))
        .toString();
  }
}

class NotificationSettingsBuilder
    implements Builder<NotificationSettings, NotificationSettingsBuilder> {
  _$NotificationSettings? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _appriseType;
  String? get appriseType => _$this._appriseType;
  set appriseType(String? appriseType) => _$this._appriseType = appriseType;

  String? _appriseApiUrl;
  String? get appriseApiUrl => _$this._appriseApiUrl;
  set appriseApiUrl(String? appriseApiUrl) =>
      _$this._appriseApiUrl = appriseApiUrl;

  ListBuilder<Notification>? _notifications;
  ListBuilder<Notification> get notifications =>
      _$this._notifications ??= new ListBuilder<Notification>();
  set notifications(ListBuilder<Notification>? notifications) =>
      _$this._notifications = notifications;

  int? _maxFailedAttempts;
  int? get maxFailedAttempts => _$this._maxFailedAttempts;
  set maxFailedAttempts(int? maxFailedAttempts) =>
      _$this._maxFailedAttempts = maxFailedAttempts;

  int? _maxNotificationQueue;
  int? get maxNotificationQueue => _$this._maxNotificationQueue;
  set maxNotificationQueue(int? maxNotificationQueue) =>
      _$this._maxNotificationQueue = maxNotificationQueue;

  int? _notificationDelay;
  int? get notificationDelay => _$this._notificationDelay;
  set notificationDelay(int? notificationDelay) =>
      _$this._notificationDelay = notificationDelay;

  NotificationSettingsBuilder() {
    NotificationSettings._defaults(this);
  }

  NotificationSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _appriseType = $v.appriseType;
      _appriseApiUrl = $v.appriseApiUrl;
      _notifications = $v.notifications?.toBuilder();
      _maxFailedAttempts = $v.maxFailedAttempts;
      _maxNotificationQueue = $v.maxNotificationQueue;
      _notificationDelay = $v.notificationDelay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationSettings;
  }

  @override
  void update(void Function(NotificationSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationSettings build() => _build();

  _$NotificationSettings _build() {
    _$NotificationSettings _$result;
    try {
      _$result = _$v ??
          new _$NotificationSettings._(
              id: id,
              appriseType: appriseType,
              appriseApiUrl: appriseApiUrl,
              notifications: _notifications?.build(),
              maxFailedAttempts: maxFailedAttempts,
              maxNotificationQueue: maxNotificationQueue,
              notificationDelay: notificationDelay);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
