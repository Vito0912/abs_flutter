// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listening_stats200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetListeningStats200Response extends GetListeningStats200Response {
  @override
  final num? totalTime;
  @override
  final BuiltMap<String, GetListeningStats200ResponseItemsValue>? items;
  @override
  final BuiltMap<String, num>? days;
  @override
  final BuiltMap<String, num>? dayOfWeek;
  @override
  final num? today;
  @override
  final BuiltList<PlaybackSession>? recentSessions;

  factory _$GetListeningStats200Response(
          [void Function(GetListeningStats200ResponseBuilder)? updates]) =>
      (new GetListeningStats200ResponseBuilder()..update(updates))._build();

  _$GetListeningStats200Response._(
      {this.totalTime,
      this.items,
      this.days,
      this.dayOfWeek,
      this.today,
      this.recentSessions})
      : super._();

  @override
  GetListeningStats200Response rebuild(
          void Function(GetListeningStats200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetListeningStats200ResponseBuilder toBuilder() =>
      new GetListeningStats200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetListeningStats200Response &&
        totalTime == other.totalTime &&
        items == other.items &&
        days == other.days &&
        dayOfWeek == other.dayOfWeek &&
        today == other.today &&
        recentSessions == other.recentSessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalTime.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jc(_$hash, today.hashCode);
    _$hash = $jc(_$hash, recentSessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetListeningStats200Response')
          ..add('totalTime', totalTime)
          ..add('items', items)
          ..add('days', days)
          ..add('dayOfWeek', dayOfWeek)
          ..add('today', today)
          ..add('recentSessions', recentSessions))
        .toString();
  }
}

class GetListeningStats200ResponseBuilder
    implements
        Builder<GetListeningStats200Response,
            GetListeningStats200ResponseBuilder> {
  _$GetListeningStats200Response? _$v;

  num? _totalTime;
  num? get totalTime => _$this._totalTime;
  set totalTime(num? totalTime) => _$this._totalTime = totalTime;

  MapBuilder<String, GetListeningStats200ResponseItemsValue>? _items;
  MapBuilder<String, GetListeningStats200ResponseItemsValue> get items =>
      _$this._items ??=
          new MapBuilder<String, GetListeningStats200ResponseItemsValue>();
  set items(
          MapBuilder<String, GetListeningStats200ResponseItemsValue>? items) =>
      _$this._items = items;

  MapBuilder<String, num>? _days;
  MapBuilder<String, num> get days =>
      _$this._days ??= new MapBuilder<String, num>();
  set days(MapBuilder<String, num>? days) => _$this._days = days;

  MapBuilder<String, num>? _dayOfWeek;
  MapBuilder<String, num> get dayOfWeek =>
      _$this._dayOfWeek ??= new MapBuilder<String, num>();
  set dayOfWeek(MapBuilder<String, num>? dayOfWeek) =>
      _$this._dayOfWeek = dayOfWeek;

  num? _today;
  num? get today => _$this._today;
  set today(num? today) => _$this._today = today;

  ListBuilder<PlaybackSession>? _recentSessions;
  ListBuilder<PlaybackSession> get recentSessions =>
      _$this._recentSessions ??= new ListBuilder<PlaybackSession>();
  set recentSessions(ListBuilder<PlaybackSession>? recentSessions) =>
      _$this._recentSessions = recentSessions;

  GetListeningStats200ResponseBuilder() {
    GetListeningStats200Response._defaults(this);
  }

  GetListeningStats200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalTime = $v.totalTime;
      _items = $v.items?.toBuilder();
      _days = $v.days?.toBuilder();
      _dayOfWeek = $v.dayOfWeek?.toBuilder();
      _today = $v.today;
      _recentSessions = $v.recentSessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetListeningStats200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetListeningStats200Response;
  }

  @override
  void update(void Function(GetListeningStats200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetListeningStats200Response build() => _build();

  _$GetListeningStats200Response _build() {
    _$GetListeningStats200Response _$result;
    try {
      _$result = _$v ??
          new _$GetListeningStats200Response._(
              totalTime: totalTime,
              items: _items?.build(),
              days: _days?.build(),
              dayOfWeek: _dayOfWeek?.build(),
              today: today,
              recentSessions: _recentSessions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'days';
        _days?.build();
        _$failedField = 'dayOfWeek';
        _dayOfWeek?.build();

        _$failedField = 'recentSessions';
        _recentSessions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetListeningStats200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
