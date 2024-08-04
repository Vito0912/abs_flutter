// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_with_progress_and_rss.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesWithProgressAndRSS extends SeriesWithProgressAndRSS {
  @override
  final OneOf oneOf;

  factory _$SeriesWithProgressAndRSS(
          [void Function(SeriesWithProgressAndRSSBuilder)? updates]) =>
      (new SeriesWithProgressAndRSSBuilder()..update(updates))._build();

  _$SeriesWithProgressAndRSS._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'SeriesWithProgressAndRSS', 'oneOf');
  }

  @override
  SeriesWithProgressAndRSS rebuild(
          void Function(SeriesWithProgressAndRSSBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesWithProgressAndRSSBuilder toBuilder() =>
      new SeriesWithProgressAndRSSBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesWithProgressAndRSS && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesWithProgressAndRSS')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SeriesWithProgressAndRSSBuilder
    implements
        Builder<SeriesWithProgressAndRSS, SeriesWithProgressAndRSSBuilder> {
  _$SeriesWithProgressAndRSS? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SeriesWithProgressAndRSSBuilder() {
    SeriesWithProgressAndRSS._defaults(this);
  }

  SeriesWithProgressAndRSSBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesWithProgressAndRSS other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesWithProgressAndRSS;
  }

  @override
  void update(void Function(SeriesWithProgressAndRSSBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesWithProgressAndRSS build() => _build();

  _$SeriesWithProgressAndRSS _build() {
    final _$result = _$v ??
        new _$SeriesWithProgressAndRSS._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'SeriesWithProgressAndRSS', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
