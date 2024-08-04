// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_event_defaults.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationEventDefaults extends NotificationEventDefaults {
  @override
  final String? title;
  @override
  final String? body;

  factory _$NotificationEventDefaults(
          [void Function(NotificationEventDefaultsBuilder)? updates]) =>
      (new NotificationEventDefaultsBuilder()..update(updates))._build();

  _$NotificationEventDefaults._({this.title, this.body}) : super._();

  @override
  NotificationEventDefaults rebuild(
          void Function(NotificationEventDefaultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationEventDefaultsBuilder toBuilder() =>
      new NotificationEventDefaultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationEventDefaults &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationEventDefaults')
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class NotificationEventDefaultsBuilder
    implements
        Builder<NotificationEventDefaults, NotificationEventDefaultsBuilder> {
  _$NotificationEventDefaults? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  NotificationEventDefaultsBuilder() {
    NotificationEventDefaults._defaults(this);
  }

  NotificationEventDefaultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationEventDefaults other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationEventDefaults;
  }

  @override
  void update(void Function(NotificationEventDefaultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationEventDefaults build() => _build();

  _$NotificationEventDefaults _build() {
    final _$result =
        _$v ?? new _$NotificationEventDefaults._(title: title, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
