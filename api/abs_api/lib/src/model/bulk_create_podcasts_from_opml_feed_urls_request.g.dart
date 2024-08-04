// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_podcasts_from_opml_feed_urls_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkCreatePodcastsFromOpmlFeedUrlsRequest
    extends BulkCreatePodcastsFromOpmlFeedUrlsRequest {
  @override
  final BuiltList<String>? feeds;
  @override
  final String? libraryId;
  @override
  final String? folderId;
  @override
  final bool? autoDownloadEpisodes;

  factory _$BulkCreatePodcastsFromOpmlFeedUrlsRequest(
          [void Function(BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder)?
              updates]) =>
      (new BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder()..update(updates))
          ._build();

  _$BulkCreatePodcastsFromOpmlFeedUrlsRequest._(
      {this.feeds, this.libraryId, this.folderId, this.autoDownloadEpisodes})
      : super._();

  @override
  BulkCreatePodcastsFromOpmlFeedUrlsRequest rebuild(
          void Function(BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder toBuilder() =>
      new BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreatePodcastsFromOpmlFeedUrlsRequest &&
        feeds == other.feeds &&
        libraryId == other.libraryId &&
        folderId == other.folderId &&
        autoDownloadEpisodes == other.autoDownloadEpisodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, feeds.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, folderId.hashCode);
    _$hash = $jc(_$hash, autoDownloadEpisodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BulkCreatePodcastsFromOpmlFeedUrlsRequest')
          ..add('feeds', feeds)
          ..add('libraryId', libraryId)
          ..add('folderId', folderId)
          ..add('autoDownloadEpisodes', autoDownloadEpisodes))
        .toString();
  }
}

class BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder
    implements
        Builder<BulkCreatePodcastsFromOpmlFeedUrlsRequest,
            BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder> {
  _$BulkCreatePodcastsFromOpmlFeedUrlsRequest? _$v;

  ListBuilder<String>? _feeds;
  ListBuilder<String> get feeds => _$this._feeds ??= new ListBuilder<String>();
  set feeds(ListBuilder<String>? feeds) => _$this._feeds = feeds;

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(String? libraryId) => _$this._libraryId = libraryId;

  String? _folderId;
  String? get folderId => _$this._folderId;
  set folderId(String? folderId) => _$this._folderId = folderId;

  bool? _autoDownloadEpisodes;
  bool? get autoDownloadEpisodes => _$this._autoDownloadEpisodes;
  set autoDownloadEpisodes(bool? autoDownloadEpisodes) =>
      _$this._autoDownloadEpisodes = autoDownloadEpisodes;

  BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder() {
    BulkCreatePodcastsFromOpmlFeedUrlsRequest._defaults(this);
  }

  BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feeds = $v.feeds?.toBuilder();
      _libraryId = $v.libraryId;
      _folderId = $v.folderId;
      _autoDownloadEpisodes = $v.autoDownloadEpisodes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreatePodcastsFromOpmlFeedUrlsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreatePodcastsFromOpmlFeedUrlsRequest;
  }

  @override
  void update(
      void Function(BulkCreatePodcastsFromOpmlFeedUrlsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreatePodcastsFromOpmlFeedUrlsRequest build() => _build();

  _$BulkCreatePodcastsFromOpmlFeedUrlsRequest _build() {
    _$BulkCreatePodcastsFromOpmlFeedUrlsRequest _$result;
    try {
      _$result = _$v ??
          new _$BulkCreatePodcastsFromOpmlFeedUrlsRequest._(
              feeds: _feeds?.build(),
              libraryId: libraryId,
              folderId: folderId,
              autoDownloadEpisodes: autoDownloadEpisodes);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feeds';
        _feeds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BulkCreatePodcastsFromOpmlFeedUrlsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
