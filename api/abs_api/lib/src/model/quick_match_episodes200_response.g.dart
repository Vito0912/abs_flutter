// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quick_match_episodes200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuickMatchEpisodes200Response extends QuickMatchEpisodes200Response {
  @override
  final int? numEpisodesUpdated;

  factory _$QuickMatchEpisodes200Response(
          [void Function(QuickMatchEpisodes200ResponseBuilder)? updates]) =>
      (new QuickMatchEpisodes200ResponseBuilder()..update(updates))._build();

  _$QuickMatchEpisodes200Response._({this.numEpisodesUpdated}) : super._();

  @override
  QuickMatchEpisodes200Response rebuild(
          void Function(QuickMatchEpisodes200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuickMatchEpisodes200ResponseBuilder toBuilder() =>
      new QuickMatchEpisodes200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuickMatchEpisodes200Response &&
        numEpisodesUpdated == other.numEpisodesUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numEpisodesUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuickMatchEpisodes200Response')
          ..add('numEpisodesUpdated', numEpisodesUpdated))
        .toString();
  }
}

class QuickMatchEpisodes200ResponseBuilder
    implements
        Builder<QuickMatchEpisodes200Response,
            QuickMatchEpisodes200ResponseBuilder> {
  _$QuickMatchEpisodes200Response? _$v;

  int? _numEpisodesUpdated;
  int? get numEpisodesUpdated => _$this._numEpisodesUpdated;
  set numEpisodesUpdated(int? numEpisodesUpdated) =>
      _$this._numEpisodesUpdated = numEpisodesUpdated;

  QuickMatchEpisodes200ResponseBuilder() {
    QuickMatchEpisodes200Response._defaults(this);
  }

  QuickMatchEpisodes200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numEpisodesUpdated = $v.numEpisodesUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuickMatchEpisodes200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuickMatchEpisodes200Response;
  }

  @override
  void update(void Function(QuickMatchEpisodes200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuickMatchEpisodes200Response build() => _build();

  _$QuickMatchEpisodes200Response _build() {
    final _$result = _$v ??
        new _$QuickMatchEpisodes200Response._(
            numEpisodesUpdated: numEpisodesUpdated);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
