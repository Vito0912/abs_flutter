// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationEvent extends NotificationEvent {
  @override
  final String? name;
  @override
  final bool? requiresLibrary;
  @override
  final String? libraryMediaType;
  @override
  final String? description;
  @override
  final BuiltList<String>? variables;
  @override
  final NotificationEventDefaults? defaults;
  @override
  final BuiltMap<String, String>? testData;

  factory _$NotificationEvent(
          [void Function(NotificationEventBuilder)? updates]) =>
      (new NotificationEventBuilder()..update(updates))._build();

  _$NotificationEvent._(
      {this.name,
      this.requiresLibrary,
      this.libraryMediaType,
      this.description,
      this.variables,
      this.defaults,
      this.testData})
      : super._();

  @override
  NotificationEvent rebuild(void Function(NotificationEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationEventBuilder toBuilder() =>
      new NotificationEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationEvent &&
        name == other.name &&
        requiresLibrary == other.requiresLibrary &&
        libraryMediaType == other.libraryMediaType &&
        description == other.description &&
        variables == other.variables &&
        defaults == other.defaults &&
        testData == other.testData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, requiresLibrary.hashCode);
    _$hash = $jc(_$hash, libraryMediaType.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, variables.hashCode);
    _$hash = $jc(_$hash, defaults.hashCode);
    _$hash = $jc(_$hash, testData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationEvent')
          ..add('name', name)
          ..add('requiresLibrary', requiresLibrary)
          ..add('libraryMediaType', libraryMediaType)
          ..add('description', description)
          ..add('variables', variables)
          ..add('defaults', defaults)
          ..add('testData', testData))
        .toString();
  }
}

class NotificationEventBuilder
    implements Builder<NotificationEvent, NotificationEventBuilder> {
  _$NotificationEvent? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _requiresLibrary;
  bool? get requiresLibrary => _$this._requiresLibrary;
  set requiresLibrary(bool? requiresLibrary) =>
      _$this._requiresLibrary = requiresLibrary;

  String? _libraryMediaType;
  String? get libraryMediaType => _$this._libraryMediaType;
  set libraryMediaType(String? libraryMediaType) =>
      _$this._libraryMediaType = libraryMediaType;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _variables;
  ListBuilder<String> get variables =>
      _$this._variables ??= new ListBuilder<String>();
  set variables(ListBuilder<String>? variables) =>
      _$this._variables = variables;

  NotificationEventDefaultsBuilder? _defaults;
  NotificationEventDefaultsBuilder get defaults =>
      _$this._defaults ??= new NotificationEventDefaultsBuilder();
  set defaults(NotificationEventDefaultsBuilder? defaults) =>
      _$this._defaults = defaults;

  MapBuilder<String, String>? _testData;
  MapBuilder<String, String> get testData =>
      _$this._testData ??= new MapBuilder<String, String>();
  set testData(MapBuilder<String, String>? testData) =>
      _$this._testData = testData;

  NotificationEventBuilder() {
    NotificationEvent._defaults(this);
  }

  NotificationEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _requiresLibrary = $v.requiresLibrary;
      _libraryMediaType = $v.libraryMediaType;
      _description = $v.description;
      _variables = $v.variables?.toBuilder();
      _defaults = $v.defaults?.toBuilder();
      _testData = $v.testData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationEvent;
  }

  @override
  void update(void Function(NotificationEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationEvent build() => _build();

  _$NotificationEvent _build() {
    _$NotificationEvent _$result;
    try {
      _$result = _$v ??
          new _$NotificationEvent._(
              name: name,
              requiresLibrary: requiresLibrary,
              libraryMediaType: libraryMediaType,
              description: description,
              variables: _variables?.build(),
              defaults: _defaults?.build(),
              testData: _testData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variables';
        _variables?.build();
        _$failedField = 'defaults';
        _defaults?.build();
        _$failedField = 'testData';
        _testData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
