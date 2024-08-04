// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_episode_downloads200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEpisodeDownloads200Response extends GetEpisodeDownloads200Response {
  @override
  final BuiltList<PodcastEpisode>? downloads;

  factory _$GetEpisodeDownloads200Response(
          [void Function(GetEpisodeDownloads200ResponseBuilder)? updates]) =>
      (new GetEpisodeDownloads200ResponseBuilder()..update(updates))._build();

  _$GetEpisodeDownloads200Response._({this.downloads}) : super._();

  @override
  GetEpisodeDownloads200Response rebuild(
          void Function(GetEpisodeDownloads200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEpisodeDownloads200ResponseBuilder toBuilder() =>
      new GetEpisodeDownloads200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEpisodeDownloads200Response &&
        downloads == other.downloads;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, downloads.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetEpisodeDownloads200Response')
          ..add('downloads', downloads))
        .toString();
  }
}

class GetEpisodeDownloads200ResponseBuilder
    implements
        Builder<GetEpisodeDownloads200Response,
            GetEpisodeDownloads200ResponseBuilder> {
  _$GetEpisodeDownloads200Response? _$v;

  ListBuilder<PodcastEpisode>? _downloads;
  ListBuilder<PodcastEpisode> get downloads =>
      _$this._downloads ??= new ListBuilder<PodcastEpisode>();
  set downloads(ListBuilder<PodcastEpisode>? downloads) =>
      _$this._downloads = downloads;

  GetEpisodeDownloads200ResponseBuilder() {
    GetEpisodeDownloads200Response._defaults(this);
  }

  GetEpisodeDownloads200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _downloads = $v.downloads?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEpisodeDownloads200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEpisodeDownloads200Response;
  }

  @override
  void update(void Function(GetEpisodeDownloads200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEpisodeDownloads200Response build() => _build();

  _$GetEpisodeDownloads200Response _build() {
    _$GetEpisodeDownloads200Response _$result;
    try {
      _$result = _$v ??
          new _$GetEpisodeDownloads200Response._(
              downloads: _downloads?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'downloads';
        _downloads?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetEpisodeDownloads200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
