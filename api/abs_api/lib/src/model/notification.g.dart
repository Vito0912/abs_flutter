// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final String? id;
  @override
  final String? libraryId;
  @override
  final NotificationEventName? eventName;
  @override
  final BuiltList<String>? urls;
  @override
  final String? titleTemplate;
  @override
  final String? bodyTemplate;
  @override
  final bool? enabled;
  @override
  final NotificationType? type;
  @override
  final int? lastFiredAt;
  @override
  final bool? lastAttemptFailed;
  @override
  final int? numConsecutiveFailedAttempts;
  @override
  final int? numTimesFired;
  @override
  final int? createdAt;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (new NotificationBuilder()..update(updates))._build();

  _$Notification._(
      {this.id,
      this.libraryId,
      this.eventName,
      this.urls,
      this.titleTemplate,
      this.bodyTemplate,
      this.enabled,
      this.type,
      this.lastFiredAt,
      this.lastAttemptFailed,
      this.numConsecutiveFailedAttempts,
      this.numTimesFired,
      this.createdAt})
      : super._();

  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => new NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        id == other.id &&
        libraryId == other.libraryId &&
        eventName == other.eventName &&
        urls == other.urls &&
        titleTemplate == other.titleTemplate &&
        bodyTemplate == other.bodyTemplate &&
        enabled == other.enabled &&
        type == other.type &&
        lastFiredAt == other.lastFiredAt &&
        lastAttemptFailed == other.lastAttemptFailed &&
        numConsecutiveFailedAttempts == other.numConsecutiveFailedAttempts &&
        numTimesFired == other.numTimesFired &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, bodyTemplate.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lastFiredAt.hashCode);
    _$hash = $jc(_$hash, lastAttemptFailed.hashCode);
    _$hash = $jc(_$hash, numConsecutiveFailedAttempts.hashCode);
    _$hash = $jc(_$hash, numTimesFired.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notification')
          ..add('id', id)
          ..add('libraryId', libraryId)
          ..add('eventName', eventName)
          ..add('urls', urls)
          ..add('titleTemplate', titleTemplate)
          ..add('bodyTemplate', bodyTemplate)
          ..add('enabled', enabled)
          ..add('type', type)
          ..add('lastFiredAt', lastFiredAt)
          ..add('lastAttemptFailed', lastAttemptFailed)
          ..add('numConsecutiveFailedAttempts', numConsecutiveFailedAttempts)
          ..add('numTimesFired', numTimesFired)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(String? libraryId) => _$this._libraryId = libraryId;

  NotificationEventName? _eventName;
  NotificationEventName? get eventName => _$this._eventName;
  set eventName(NotificationEventName? eventName) =>
      _$this._eventName = eventName;

  ListBuilder<String>? _urls;
  ListBuilder<String> get urls => _$this._urls ??= new ListBuilder<String>();
  set urls(ListBuilder<String>? urls) => _$this._urls = urls;

  String? _titleTemplate;
  String? get titleTemplate => _$this._titleTemplate;
  set titleTemplate(String? titleTemplate) =>
      _$this._titleTemplate = titleTemplate;

  String? _bodyTemplate;
  String? get bodyTemplate => _$this._bodyTemplate;
  set bodyTemplate(String? bodyTemplate) => _$this._bodyTemplate = bodyTemplate;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NotificationType? _type;
  NotificationType? get type => _$this._type;
  set type(NotificationType? type) => _$this._type = type;

  int? _lastFiredAt;
  int? get lastFiredAt => _$this._lastFiredAt;
  set lastFiredAt(int? lastFiredAt) => _$this._lastFiredAt = lastFiredAt;

  bool? _lastAttemptFailed;
  bool? get lastAttemptFailed => _$this._lastAttemptFailed;
  set lastAttemptFailed(bool? lastAttemptFailed) =>
      _$this._lastAttemptFailed = lastAttemptFailed;

  int? _numConsecutiveFailedAttempts;
  int? get numConsecutiveFailedAttempts => _$this._numConsecutiveFailedAttempts;
  set numConsecutiveFailedAttempts(int? numConsecutiveFailedAttempts) =>
      _$this._numConsecutiveFailedAttempts = numConsecutiveFailedAttempts;

  int? _numTimesFired;
  int? get numTimesFired => _$this._numTimesFired;
  set numTimesFired(int? numTimesFired) =>
      _$this._numTimesFired = numTimesFired;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  NotificationBuilder() {
    Notification._defaults(this);
  }

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _libraryId = $v.libraryId;
      _eventName = $v.eventName;
      _urls = $v.urls?.toBuilder();
      _titleTemplate = $v.titleTemplate;
      _bodyTemplate = $v.bodyTemplate;
      _enabled = $v.enabled;
      _type = $v.type;
      _lastFiredAt = $v.lastFiredAt;
      _lastAttemptFailed = $v.lastAttemptFailed;
      _numConsecutiveFailedAttempts = $v.numConsecutiveFailedAttempts;
      _numTimesFired = $v.numTimesFired;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notification build() => _build();

  _$Notification _build() {
    _$Notification _$result;
    try {
      _$result = _$v ??
          new _$Notification._(
              id: id,
              libraryId: libraryId,
              eventName: eventName,
              urls: _urls?.build(),
              titleTemplate: titleTemplate,
              bodyTemplate: bodyTemplate,
              enabled: enabled,
              type: type,
              lastFiredAt: lastFiredAt,
              lastAttemptFailed: lastAttemptFailed,
              numConsecutiveFailedAttempts: numConsecutiveFailedAttempts,
              numTimesFired: numTimesFired,
              createdAt: createdAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'urls';
        _urls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Notification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
