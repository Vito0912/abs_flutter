// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_with_progress_and_rss_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesWithProgressAndRSSOneOf extends SeriesWithProgressAndRSSOneOf {
  @override
  final SeriesProgress? progress;
  @override
  final String? rssFeed;

  factory _$SeriesWithProgressAndRSSOneOf(
          [void Function(SeriesWithProgressAndRSSOneOfBuilder)? updates]) =>
      (new SeriesWithProgressAndRSSOneOfBuilder()..update(updates))._build();

  _$SeriesWithProgressAndRSSOneOf._({this.progress, this.rssFeed}) : super._();

  @override
  SeriesWithProgressAndRSSOneOf rebuild(
          void Function(SeriesWithProgressAndRSSOneOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesWithProgressAndRSSOneOfBuilder toBuilder() =>
      new SeriesWithProgressAndRSSOneOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesWithProgressAndRSSOneOf &&
        progress == other.progress &&
        rssFeed == other.rssFeed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, progress.hashCode);
    _$hash = $jc(_$hash, rssFeed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesWithProgressAndRSSOneOf')
          ..add('progress', progress)
          ..add('rssFeed', rssFeed))
        .toString();
  }
}

class SeriesWithProgressAndRSSOneOfBuilder
    implements
        Builder<SeriesWithProgressAndRSSOneOf,
            SeriesWithProgressAndRSSOneOfBuilder> {
  _$SeriesWithProgressAndRSSOneOf? _$v;

  SeriesProgressBuilder? _progress;
  SeriesProgressBuilder get progress =>
      _$this._progress ??= new SeriesProgressBuilder();
  set progress(SeriesProgressBuilder? progress) => _$this._progress = progress;

  String? _rssFeed;
  String? get rssFeed => _$this._rssFeed;
  set rssFeed(String? rssFeed) => _$this._rssFeed = rssFeed;

  SeriesWithProgressAndRSSOneOfBuilder() {
    SeriesWithProgressAndRSSOneOf._defaults(this);
  }

  SeriesWithProgressAndRSSOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _progress = $v.progress?.toBuilder();
      _rssFeed = $v.rssFeed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesWithProgressAndRSSOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesWithProgressAndRSSOneOf;
  }

  @override
  void update(void Function(SeriesWithProgressAndRSSOneOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesWithProgressAndRSSOneOf build() => _build();

  _$SeriesWithProgressAndRSSOneOf _build() {
    _$SeriesWithProgressAndRSSOneOf _$result;
    try {
      _$result = _$v ??
          new _$SeriesWithProgressAndRSSOneOf._(
              progress: _progress?.build(), rssFeed: rssFeed);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'progress';
        _progress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeriesWithProgressAndRSSOneOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
