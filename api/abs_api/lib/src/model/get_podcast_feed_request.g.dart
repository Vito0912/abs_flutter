// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_podcast_feed_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetPodcastFeedRequest extends GetPodcastFeedRequest {
  @override
  final String? rssFeed;

  factory _$GetPodcastFeedRequest(
          [void Function(GetPodcastFeedRequestBuilder)? updates]) =>
      (new GetPodcastFeedRequestBuilder()..update(updates))._build();

  _$GetPodcastFeedRequest._({this.rssFeed}) : super._();

  @override
  GetPodcastFeedRequest rebuild(
          void Function(GetPodcastFeedRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetPodcastFeedRequestBuilder toBuilder() =>
      new GetPodcastFeedRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetPodcastFeedRequest && rssFeed == other.rssFeed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rssFeed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetPodcastFeedRequest')
          ..add('rssFeed', rssFeed))
        .toString();
  }
}

class GetPodcastFeedRequestBuilder
    implements Builder<GetPodcastFeedRequest, GetPodcastFeedRequestBuilder> {
  _$GetPodcastFeedRequest? _$v;

  String? _rssFeed;
  String? get rssFeed => _$this._rssFeed;
  set rssFeed(String? rssFeed) => _$this._rssFeed = rssFeed;

  GetPodcastFeedRequestBuilder() {
    GetPodcastFeedRequest._defaults(this);
  }

  GetPodcastFeedRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rssFeed = $v.rssFeed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetPodcastFeedRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetPodcastFeedRequest;
  }

  @override
  void update(void Function(GetPodcastFeedRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetPodcastFeedRequest build() => _build();

  _$GetPodcastFeedRequest _build() {
    final _$result = _$v ?? new _$GetPodcastFeedRequest._(rssFeed: rssFeed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
