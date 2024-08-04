// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateNotificationRequest extends UpdateNotificationRequest {
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

  factory _$UpdateNotificationRequest(
          [void Function(UpdateNotificationRequestBuilder)? updates]) =>
      (new UpdateNotificationRequestBuilder()..update(updates))._build();

  _$UpdateNotificationRequest._(
      {this.libraryId,
      this.eventName,
      this.urls,
      this.titleTemplate,
      this.bodyTemplate,
      this.enabled,
      this.type})
      : super._();

  @override
  UpdateNotificationRequest rebuild(
          void Function(UpdateNotificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateNotificationRequestBuilder toBuilder() =>
      new UpdateNotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateNotificationRequest &&
        libraryId == other.libraryId &&
        eventName == other.eventName &&
        urls == other.urls &&
        titleTemplate == other.titleTemplate &&
        bodyTemplate == other.bodyTemplate &&
        enabled == other.enabled &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, bodyTemplate.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateNotificationRequest')
          ..add('libraryId', libraryId)
          ..add('eventName', eventName)
          ..add('urls', urls)
          ..add('titleTemplate', titleTemplate)
          ..add('bodyTemplate', bodyTemplate)
          ..add('enabled', enabled)
          ..add('type', type))
        .toString();
  }
}

class UpdateNotificationRequestBuilder
    implements
        Builder<UpdateNotificationRequest, UpdateNotificationRequestBuilder> {
  _$UpdateNotificationRequest? _$v;

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

  UpdateNotificationRequestBuilder() {
    UpdateNotificationRequest._defaults(this);
  }

  UpdateNotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryId = $v.libraryId;
      _eventName = $v.eventName;
      _urls = $v.urls?.toBuilder();
      _titleTemplate = $v.titleTemplate;
      _bodyTemplate = $v.bodyTemplate;
      _enabled = $v.enabled;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateNotificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateNotificationRequest;
  }

  @override
  void update(void Function(UpdateNotificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateNotificationRequest build() => _build();

  _$UpdateNotificationRequest _build() {
    _$UpdateNotificationRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateNotificationRequest._(
              libraryId: libraryId,
              eventName: eventName,
              urls: _urls?.build(),
              titleTemplate: titleTemplate,
              bodyTemplate: bodyTemplate,
              enabled: enabled,
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'urls';
        _urls?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateNotificationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
