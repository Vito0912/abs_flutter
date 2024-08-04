// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_new_episodes200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CheckNewEpisodes200Response extends CheckNewEpisodes200Response {
  @override
  final BuiltList<PodcastEpisode>? episodes;

  factory _$CheckNewEpisodes200Response(
          [void Function(CheckNewEpisodes200ResponseBuilder)? updates]) =>
      (new CheckNewEpisodes200ResponseBuilder()..update(updates))._build();

  _$CheckNewEpisodes200Response._({this.episodes}) : super._();

  @override
  CheckNewEpisodes200Response rebuild(
          void Function(CheckNewEpisodes200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckNewEpisodes200ResponseBuilder toBuilder() =>
      new CheckNewEpisodes200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckNewEpisodes200Response && episodes == other.episodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, episodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckNewEpisodes200Response')
          ..add('episodes', episodes))
        .toString();
  }
}

class CheckNewEpisodes200ResponseBuilder
    implements
        Builder<CheckNewEpisodes200Response,
            CheckNewEpisodes200ResponseBuilder> {
  _$CheckNewEpisodes200Response? _$v;

  ListBuilder<PodcastEpisode>? _episodes;
  ListBuilder<PodcastEpisode> get episodes =>
      _$this._episodes ??= new ListBuilder<PodcastEpisode>();
  set episodes(ListBuilder<PodcastEpisode>? episodes) =>
      _$this._episodes = episodes;

  CheckNewEpisodes200ResponseBuilder() {
    CheckNewEpisodes200Response._defaults(this);
  }

  CheckNewEpisodes200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _episodes = $v.episodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckNewEpisodes200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckNewEpisodes200Response;
  }

  @override
  void update(void Function(CheckNewEpisodes200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckNewEpisodes200Response build() => _build();

  _$CheckNewEpisodes200Response _build() {
    _$CheckNewEpisodes200Response _$result;
    try {
      _$result = _$v ??
          new _$CheckNewEpisodes200Response._(episodes: _episodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'episodes';
        _episodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CheckNewEpisodes200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
