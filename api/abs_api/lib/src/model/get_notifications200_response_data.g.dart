// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNotifications200ResponseData
    extends GetNotifications200ResponseData {
  @override
  final BuiltList<NotificationEvent>? events;

  factory _$GetNotifications200ResponseData(
          [void Function(GetNotifications200ResponseDataBuilder)? updates]) =>
      (new GetNotifications200ResponseDataBuilder()..update(updates))._build();

  _$GetNotifications200ResponseData._({this.events}) : super._();

  @override
  GetNotifications200ResponseData rebuild(
          void Function(GetNotifications200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNotifications200ResponseDataBuilder toBuilder() =>
      new GetNotifications200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNotifications200ResponseData && events == other.events;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetNotifications200ResponseData')
          ..add('events', events))
        .toString();
  }
}

class GetNotifications200ResponseDataBuilder
    implements
        Builder<GetNotifications200ResponseData,
            GetNotifications200ResponseDataBuilder> {
  _$GetNotifications200ResponseData? _$v;

  ListBuilder<NotificationEvent>? _events;
  ListBuilder<NotificationEvent> get events =>
      _$this._events ??= new ListBuilder<NotificationEvent>();
  set events(ListBuilder<NotificationEvent>? events) => _$this._events = events;

  GetNotifications200ResponseDataBuilder() {
    GetNotifications200ResponseData._defaults(this);
  }

  GetNotifications200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNotifications200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNotifications200ResponseData;
  }

  @override
  void update(void Function(GetNotifications200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNotifications200ResponseData build() => _build();

  _$GetNotifications200ResponseData _build() {
    _$GetNotifications200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$GetNotifications200ResponseData._(events: _events?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNotifications200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
