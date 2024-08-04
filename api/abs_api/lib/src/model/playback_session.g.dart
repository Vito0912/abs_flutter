// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaybackSession extends PlaybackSession {
  @override
  final OneOf oneOf;

  factory _$PlaybackSession([void Function(PlaybackSessionBuilder)? updates]) =>
      (new PlaybackSessionBuilder()..update(updates))._build();

  _$PlaybackSession._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(oneOf, r'PlaybackSession', 'oneOf');
  }

  @override
  PlaybackSession rebuild(void Function(PlaybackSessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaybackSessionBuilder toBuilder() =>
      new PlaybackSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaybackSession && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PlaybackSession')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PlaybackSessionBuilder
    implements Builder<PlaybackSession, PlaybackSessionBuilder> {
  _$PlaybackSession? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PlaybackSessionBuilder() {
    PlaybackSession._defaults(this);
  }

  PlaybackSessionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaybackSession other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaybackSession;
  }

  @override
  void update(void Function(PlaybackSessionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaybackSession build() => _build();

  _$PlaybackSession _build() {
    final _$result = _$v ??
        new _$PlaybackSession._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'PlaybackSession', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
