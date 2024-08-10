// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_library200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchLibrary200Response extends SearchLibrary200Response {
  @override
  final BuiltList<LibraryItemSearchResult>? book;
  @override
  final BuiltList<LibraryItemSearchResult>? podcast;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<AuthorExpanded>? authors;
  @override
  final BuiltList<SeriesBooks>? series;

  factory _$SearchLibrary200Response(
          [void Function(SearchLibrary200ResponseBuilder)? updates]) =>
      (new SearchLibrary200ResponseBuilder()..update(updates))._build();

  _$SearchLibrary200Response._(
      {this.book, this.podcast, this.tags, this.authors, this.series})
      : super._();

  @override
  SearchLibrary200Response rebuild(
          void Function(SearchLibrary200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchLibrary200ResponseBuilder toBuilder() =>
      new SearchLibrary200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchLibrary200Response &&
        book == other.book &&
        podcast == other.podcast &&
        tags == other.tags &&
        authors == other.authors &&
        series == other.series;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, book.hashCode);
    _$hash = $jc(_$hash, podcast.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchLibrary200Response')
          ..add('book', book)
          ..add('podcast', podcast)
          ..add('tags', tags)
          ..add('authors', authors)
          ..add('series', series))
        .toString();
  }
}

class SearchLibrary200ResponseBuilder
    implements
        Builder<SearchLibrary200Response, SearchLibrary200ResponseBuilder> {
  _$SearchLibrary200Response? _$v;

  ListBuilder<LibraryItemSearchResult>? _book;
  ListBuilder<LibraryItemSearchResult> get book =>
      _$this._book ??= new ListBuilder<LibraryItemSearchResult>();
  set book(ListBuilder<LibraryItemSearchResult>? book) => _$this._book = book;

  ListBuilder<LibraryItemSearchResult>? _podcast;
  ListBuilder<LibraryItemSearchResult> get podcast =>
      _$this._podcast ??= new ListBuilder<LibraryItemSearchResult>();
  set podcast(ListBuilder<LibraryItemSearchResult>? podcast) =>
      _$this._podcast = podcast;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<AuthorExpanded>? _authors;
  ListBuilder<AuthorExpanded> get authors =>
      _$this._authors ??= new ListBuilder<AuthorExpanded>();
  set authors(ListBuilder<AuthorExpanded>? authors) =>
      _$this._authors = authors;

  ListBuilder<SeriesBooks>? _series;
  ListBuilder<SeriesBooks> get series =>
      _$this._series ??= new ListBuilder<SeriesBooks>();
  set series(ListBuilder<SeriesBooks>? series) => _$this._series = series;

  SearchLibrary200ResponseBuilder() {
    SearchLibrary200Response._defaults(this);
  }

  SearchLibrary200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _book = $v.book?.toBuilder();
      _podcast = $v.podcast?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _series = $v.series?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchLibrary200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchLibrary200Response;
  }

  @override
  void update(void Function(SearchLibrary200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchLibrary200Response build() => _build();

  _$SearchLibrary200Response _build() {
    _$SearchLibrary200Response _$result;
    try {
      _$result = _$v ??
          new _$SearchLibrary200Response._(
              book: _book?.build(),
              podcast: _podcast?.build(),
              tags: _tags?.build(),
              authors: _authors?.build(),
              series: _series?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'book';
        _book?.build();
        _$failedField = 'podcast';
        _podcast?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'series';
        _series?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchLibrary200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
