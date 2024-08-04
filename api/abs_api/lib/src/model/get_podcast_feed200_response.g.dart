// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_podcast_feed200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPodcastFeed200Response extends GetPodcastFeed200Response {
  @override
  final Podcast? podcast;

  factory _$GetPodcastFeed200Response(
          [void Function(GetPodcastFeed200ResponseBuilder)? updates]) =>
      (new GetPodcastFeed200ResponseBuilder()..update(updates))._build();

  _$GetPodcastFeed200Response._({this.podcast}) : super._();

  @override
  GetPodcastFeed200Response rebuild(
          void Function(GetPodcastFeed200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPodcastFeed200ResponseBuilder toBuilder() =>
      new GetPodcastFeed200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPodcastFeed200Response && podcast == other.podcast;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, podcast.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetPodcastFeed200Response')
          ..add('podcast', podcast))
        .toString();
  }
}

class GetPodcastFeed200ResponseBuilder
    implements
        Builder<GetPodcastFeed200Response, GetPodcastFeed200ResponseBuilder> {
  _$GetPodcastFeed200Response? _$v;

  PodcastBuilder? _podcast;
  PodcastBuilder get podcast => _$this._podcast ??= new PodcastBuilder();
  set podcast(PodcastBuilder? podcast) => _$this._podcast = podcast;

  GetPodcastFeed200ResponseBuilder() {
    GetPodcastFeed200Response._defaults(this);
  }

  GetPodcastFeed200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _podcast = $v.podcast?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPodcastFeed200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPodcastFeed200Response;
  }

  @override
  void update(void Function(GetPodcastFeed200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPodcastFeed200Response build() => _build();

  _$GetPodcastFeed200Response _build() {
    _$GetPodcastFeed200Response _$result;
    try {
      _$result =
          _$v ?? new _$GetPodcastFeed200Response._(podcast: _podcast?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'podcast';
        _podcast?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetPodcastFeed200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
