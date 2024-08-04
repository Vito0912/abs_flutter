// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_minified.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaMinified extends MediaMinified {
  @override
  final OneOf oneOf;

  factory _$MediaMinified([void Function(MediaMinifiedBuilder)? updates]) =>
      (new MediaMinifiedBuilder()..update(updates))._build();

  _$MediaMinified._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'MediaMinified', 'oneOf');
  }

  @override
  MediaMinified rebuild(void Function(MediaMinifiedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaMinifiedBuilder toBuilder() => new MediaMinifiedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaMinified && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'MediaMinified')..add('oneOf', oneOf))
        .toString();
  }
}

class MediaMinifiedBuilder
    implements Builder<MediaMinified, MediaMinifiedBuilder> {
  _$MediaMinified? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  MediaMinifiedBuilder() {
    MediaMinified._defaults(this);
  }

  MediaMinifiedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaMinified other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MediaMinified;
  }

  @override
  void update(void Function(MediaMinifiedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaMinified build() => _build();

  _$MediaMinified _build() {
    final _$result = _$v ??
        new _$MediaMinified._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'MediaMinified', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
