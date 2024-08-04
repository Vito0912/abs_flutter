// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNotificationRequest extends CreateNotificationRequest {
  @override
  final NotificationEventName eventName;
  @override
  final BuiltList<String> urls;
  @override
  final String titleTemplate;
  @override
  final String bodyTemplate;
  @override
  final String? libraryId;
  @override
  final bool? enabled;
  @override
  final NotificationType? type;

  factory _$CreateNotificationRequest(
          [void Function(CreateNotificationRequestBuilder)? updates]) =>
      (new CreateNotificationRequestBuilder()..update(updates))._build();

  _$CreateNotificationRequest._(
      {required this.eventName,
      required this.urls,
      required this.titleTemplate,
      required this.bodyTemplate,
      this.libraryId,
      this.enabled,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        eventName, r'CreateNotificationRequest', 'eventName');
    BuiltValueNullFieldError.checkNotNull(
        urls, r'CreateNotificationRequest', 'urls');
    BuiltValueNullFieldError.checkNotNull(
        titleTemplate, r'CreateNotificationRequest', 'titleTemplate');
    BuiltValueNullFieldError.checkNotNull(
        bodyTemplate, r'CreateNotificationRequest', 'bodyTemplate');
  }

  @override
  CreateNotificationRequest rebuild(
          void Function(CreateNotificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNotificationRequestBuilder toBuilder() =>
      new CreateNotificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNotificationRequest &&
        eventName == other.eventName &&
        urls == other.urls &&
        titleTemplate == other.titleTemplate &&
        bodyTemplate == other.bodyTemplate &&
        libraryId == other.libraryId &&
        enabled == other.enabled &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventName.hashCode);
    _$hash = $jc(_$hash, urls.hashCode);
    _$hash = $jc(_$hash, titleTemplate.hashCode);
    _$hash = $jc(_$hash, bodyTemplate.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateNotificationRequest')
          ..add('eventName', eventName)
          ..add('urls', urls)
          ..add('titleTemplate', titleTemplate)
          ..add('bodyTemplate', bodyTemplate)
          ..add('libraryId', libraryId)
          ..add('enabled', enabled)
          ..add('type', type))
        .toString();
  }
}

class CreateNotificationRequestBuilder
    implements
        Builder<CreateNotificationRequest, CreateNotificationRequestBuilder> {
  _$CreateNotificationRequest? _$v;

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

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(String? libraryId) => _$this._libraryId = libraryId;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  NotificationType? _type;
  NotificationType? get type => _$this._type;
  set type(NotificationType? type) => _$this._type = type;

  CreateNotificationRequestBuilder() {
    CreateNotificationRequest._defaults(this);
  }

  CreateNotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventName = $v.eventName;
      _urls = $v.urls.toBuilder();
      _titleTemplate = $v.titleTemplate;
      _bodyTemplate = $v.bodyTemplate;
      _libraryId = $v.libraryId;
      _enabled = $v.enabled;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNotificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNotificationRequest;
  }

  @override
  void update(void Function(CreateNotificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNotificationRequest build() => _build();

  _$CreateNotificationRequest _build() {
    _$CreateNotificationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNotificationRequest._(
              eventName: BuiltValueNullFieldError.checkNotNull(
                  eventName, r'CreateNotificationRequest', 'eventName'),
              urls: urls.build(),
              titleTemplate: BuiltValueNullFieldError.checkNotNull(
                  titleTemplate, r'CreateNotificationRequest', 'titleTemplate'),
              bodyTemplate: BuiltValueNullFieldError.checkNotNull(
                  bodyTemplate, r'CreateNotificationRequest', 'bodyTemplate'),
              libraryId: libraryId,
              enabled: enabled,
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNotificationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
