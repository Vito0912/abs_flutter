// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_session_media_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaybackSessionMediaMetadata extends PlaybackSessionMediaMetadata {
  @override
  final OneOf oneOf;

  factory _$PlaybackSessionMediaMetadata(
          [void Function(PlaybackSessionMediaMetadataBuilder)? updates]) =>
      (new PlaybackSessionMediaMetadataBuilder()..update(updates))._build();

  _$PlaybackSessionMediaMetadata._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'PlaybackSessionMediaMetadata', 'oneOf');
  }

  @override
  PlaybackSessionMediaMetadata rebuild(
          void Function(PlaybackSessionMediaMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaybackSessionMediaMetadataBuilder toBuilder() =>
      new PlaybackSessionMediaMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaybackSessionMediaMetadata && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PlaybackSessionMediaMetadata')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PlaybackSessionMediaMetadataBuilder
    implements
        Builder<PlaybackSessionMediaMetadata,
            PlaybackSessionMediaMetadataBuilder> {
  _$PlaybackSessionMediaMetadata? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PlaybackSessionMediaMetadataBuilder() {
    PlaybackSessionMediaMetadata._defaults(this);
  }

  PlaybackSessionMediaMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaybackSessionMediaMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaybackSessionMediaMetadata;
  }

  @override
  void update(void Function(PlaybackSessionMediaMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaybackSessionMediaMetadata build() => _build();

  _$PlaybackSessionMediaMetadata _build() {
    final _$result = _$v ??
        new _$PlaybackSessionMediaMetadata._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'PlaybackSessionMediaMetadata', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
