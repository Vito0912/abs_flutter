// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_session_expanded.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlaybackSessionExpanded extends PlaybackSessionExpanded {
  @override
  final OneOf oneOf;

  factory _$PlaybackSessionExpanded(
          [void Function(PlaybackSessionExpandedBuilder)? updates]) =>
      (new PlaybackSessionExpandedBuilder()..update(updates))._build();

  _$PlaybackSessionExpanded._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'PlaybackSessionExpanded', 'oneOf');
  }

  @override
  PlaybackSessionExpanded rebuild(
          void Function(PlaybackSessionExpandedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaybackSessionExpandedBuilder toBuilder() =>
      new PlaybackSessionExpandedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaybackSessionExpanded && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'PlaybackSessionExpanded')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class PlaybackSessionExpandedBuilder
    implements
        Builder<PlaybackSessionExpanded, PlaybackSessionExpandedBuilder> {
  _$PlaybackSessionExpanded? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  PlaybackSessionExpandedBuilder() {
    PlaybackSessionExpanded._defaults(this);
  }

  PlaybackSessionExpandedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaybackSessionExpanded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaybackSessionExpanded;
  }

  @override
  void update(void Function(PlaybackSessionExpandedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaybackSessionExpanded build() => _build();

  _$PlaybackSessionExpanded _build() {
    final _$result = _$v ??
        new _$PlaybackSessionExpanded._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'PlaybackSessionExpanded', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
