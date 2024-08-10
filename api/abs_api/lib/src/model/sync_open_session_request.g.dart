// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_open_session_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SyncOpenSessionRequest extends SyncOpenSessionRequest {
  @override
  final String? id;
  @override
  final num? currentTime;
  @override
  final num? timeListened;
  @override
  final num? duration;

  factory _$SyncOpenSessionRequest(
          [void Function(SyncOpenSessionRequestBuilder)? updates]) =>
      (new SyncOpenSessionRequestBuilder()..update(updates))._build();

  _$SyncOpenSessionRequest._(
      {this.id, this.currentTime, this.timeListened, this.duration})
      : super._();

  @override
  SyncOpenSessionRequest rebuild(
          void Function(SyncOpenSessionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SyncOpenSessionRequestBuilder toBuilder() =>
      new SyncOpenSessionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SyncOpenSessionRequest &&
        id == other.id &&
        currentTime == other.currentTime &&
        timeListened == other.timeListened &&
        duration == other.duration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, currentTime.hashCode);
    _$hash = $jc(_$hash, timeListened.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SyncOpenSessionRequest')
          ..add('id', id)
          ..add('currentTime', currentTime)
          ..add('timeListened', timeListened)
          ..add('duration', duration))
        .toString();
  }
}

class SyncOpenSessionRequestBuilder
    implements Builder<SyncOpenSessionRequest, SyncOpenSessionRequestBuilder> {
  _$SyncOpenSessionRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _currentTime;
  num? get currentTime => _$this._currentTime;
  set currentTime(num? currentTime) => _$this._currentTime = currentTime;

  num? _timeListened;
  num? get timeListened => _$this._timeListened;
  set timeListened(num? timeListened) => _$this._timeListened = timeListened;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  SyncOpenSessionRequestBuilder() {
    SyncOpenSessionRequest._defaults(this);
  }

  SyncOpenSessionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _currentTime = $v.currentTime;
      _timeListened = $v.timeListened;
      _duration = $v.duration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SyncOpenSessionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SyncOpenSessionRequest;
  }

  @override
  void update(void Function(SyncOpenSessionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SyncOpenSessionRequest build() => _build();

  _$SyncOpenSessionRequest _build() {
    final _$result = _$v ??
        new _$SyncOpenSessionRequest._(
            id: id,
            currentTime: currentTime,
            timeListened: timeListened,
            duration: duration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
