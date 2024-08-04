// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_media_progress_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserMediaProgressInner extends UserMediaProgressInner {
  @override
  final String? id;
  @override
  final String? libraryItemId;
  @override
  final String? episodeId;
  @override
  final num? duration;
  @override
  final num? progress;
  @override
  final num? currentTime;
  @override
  final bool? isFinished;
  @override
  final bool? hideFromContinueListening;
  @override
  final int? lastUpdate;
  @override
  final int? startedAt;
  @override
  final int? finishedAt;

  factory _$UserMediaProgressInner(
          [void Function(UserMediaProgressInnerBuilder)? updates]) =>
      (new UserMediaProgressInnerBuilder()..update(updates))._build();

  _$UserMediaProgressInner._(
      {this.id,
      this.libraryItemId,
      this.episodeId,
      this.duration,
      this.progress,
      this.currentTime,
      this.isFinished,
      this.hideFromContinueListening,
      this.lastUpdate,
      this.startedAt,
      this.finishedAt})
      : super._();

  @override
  UserMediaProgressInner rebuild(
          void Function(UserMediaProgressInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserMediaProgressInnerBuilder toBuilder() =>
      new UserMediaProgressInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMediaProgressInner &&
        id == other.id &&
        libraryItemId == other.libraryItemId &&
        episodeId == other.episodeId &&
        duration == other.duration &&
        progress == other.progress &&
        currentTime == other.currentTime &&
        isFinished == other.isFinished &&
        hideFromContinueListening == other.hideFromContinueListening &&
        lastUpdate == other.lastUpdate &&
        startedAt == other.startedAt &&
        finishedAt == other.finishedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, episodeId.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, currentTime.hashCode);
    _$hash = $jc(_$hash, isFinished.hashCode);
    _$hash = $jc(_$hash, hideFromContinueListening.hashCode);
    _$hash = $jc(_$hash, lastUpdate.hashCode);
    _$hash = $jc(_$hash, startedAt.hashCode);
    _$hash = $jc(_$hash, finishedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserMediaProgressInner')
          ..add('id', id)
          ..add('libraryItemId', libraryItemId)
          ..add('episodeId', episodeId)
          ..add('duration', duration)
          ..add('progress', progress)
          ..add('currentTime', currentTime)
          ..add('isFinished', isFinished)
          ..add('hideFromContinueListening', hideFromContinueListening)
          ..add('lastUpdate', lastUpdate)
          ..add('startedAt', startedAt)
          ..add('finishedAt', finishedAt))
        .toString();
  }
}

class UserMediaProgressInnerBuilder
    implements Builder<UserMediaProgressInner, UserMediaProgressInnerBuilder> {
  _$UserMediaProgressInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  String? _episodeId;
  String? get episodeId => _$this._episodeId;
  set episodeId(String? episodeId) => _$this._episodeId = episodeId;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  num? _currentTime;
  num? get currentTime => _$this._currentTime;
  set currentTime(num? currentTime) => _$this._currentTime = currentTime;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  bool? _hideFromContinueListening;
  bool? get hideFromContinueListening => _$this._hideFromContinueListening;
  set hideFromContinueListening(bool? hideFromContinueListening) =>
      _$this._hideFromContinueListening = hideFromContinueListening;

  int? _lastUpdate;
  int? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(int? lastUpdate) => _$this._lastUpdate = lastUpdate;

  int? _startedAt;
  int? get startedAt => _$this._startedAt;
  set startedAt(int? startedAt) => _$this._startedAt = startedAt;

  int? _finishedAt;
  int? get finishedAt => _$this._finishedAt;
  set finishedAt(int? finishedAt) => _$this._finishedAt = finishedAt;

  UserMediaProgressInnerBuilder() {
    UserMediaProgressInner._defaults(this);
  }

  UserMediaProgressInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _libraryItemId = $v.libraryItemId;
      _episodeId = $v.episodeId;
      _duration = $v.duration;
      _progress = $v.progress;
      _currentTime = $v.currentTime;
      _isFinished = $v.isFinished;
      _hideFromContinueListening = $v.hideFromContinueListening;
      _lastUpdate = $v.lastUpdate;
      _startedAt = $v.startedAt;
      _finishedAt = $v.finishedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMediaProgressInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserMediaProgressInner;
  }

  @override
  void update(void Function(UserMediaProgressInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserMediaProgressInner build() => _build();

  _$UserMediaProgressInner _build() {
    final _$result = _$v ??
        new _$UserMediaProgressInner._(
            id: id,
            libraryItemId: libraryItemId,
            episodeId: episodeId,
            duration: duration,
            progress: progress,
            currentTime: currentTime,
            isFinished: isFinished,
            hideFromContinueListening: hideFromContinueListening,
            lastUpdate: lastUpdate,
            startedAt: startedAt,
            finishedAt: finishedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
