// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_filter_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryFilterData extends LibraryFilterData {
  @override
  final BuiltList<AuthorMinified>? authors;
  @override
  final BuiltList<SeriesNumBooks>? series;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? genres;
  @override
  final BuiltList<String>? narrators;
  @override
  final BuiltList<String>? languages;

  factory _$LibraryFilterData(
          [void Function(LibraryFilterDataBuilder)? updates]) =>
      (new LibraryFilterDataBuilder()..update(updates))._build();

  _$LibraryFilterData._(
      {this.authors,
      this.series,
      this.tags,
      this.genres,
      this.narrators,
      this.languages})
      : super._();

  @override
  LibraryFilterData rebuild(void Function(LibraryFilterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryFilterDataBuilder toBuilder() =>
      new LibraryFilterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryFilterData &&
        authors == other.authors &&
        series == other.series &&
        tags == other.tags &&
        genres == other.genres &&
        narrators == other.narrators &&
        languages == other.languages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, narrators.hashCode);
    _$hash = $jc(_$hash, languages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryFilterData')
          ..add('authors', authors)
          ..add('series', series)
          ..add('tags', tags)
          ..add('genres', genres)
          ..add('narrators', narrators)
          ..add('languages', languages))
        .toString();
  }
}

class LibraryFilterDataBuilder
    implements Builder<LibraryFilterData, LibraryFilterDataBuilder> {
  _$LibraryFilterData? _$v;

  ListBuilder<AuthorMinified>? _authors;
  ListBuilder<AuthorMinified> get authors =>
      _$this._authors ??= new ListBuilder<AuthorMinified>();
  set authors(ListBuilder<AuthorMinified>? authors) =>
      _$this._authors = authors;

  ListBuilder<SeriesNumBooks>? _series;
  ListBuilder<SeriesNumBooks> get series =>
      _$this._series ??= new ListBuilder<SeriesNumBooks>();
  set series(ListBuilder<SeriesNumBooks>? series) => _$this._series = series;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres =>
      _$this._genres ??= new ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  ListBuilder<String>? _narrators;
  ListBuilder<String> get narrators =>
      _$this._narrators ??= new ListBuilder<String>();
  set narrators(ListBuilder<String>? narrators) =>
      _$this._narrators = narrators;

  ListBuilder<String>? _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String>? languages) =>
      _$this._languages = languages;

  LibraryFilterDataBuilder() {
    LibraryFilterData._defaults(this);
  }

  LibraryFilterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authors = $v.authors?.toBuilder();
      _series = $v.series?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _narrators = $v.narrators?.toBuilder();
      _languages = $v.languages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryFilterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryFilterData;
  }

  @override
  void update(void Function(LibraryFilterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryFilterData build() => _build();

  _$LibraryFilterData _build() {
    _$LibraryFilterData _$result;
    try {
      _$result = _$v ??
          new _$LibraryFilterData._(
              authors: _authors?.build(),
              series: _series?.build(),
              tags: _tags?.build(),
              genres: _genres?.build(),
              narrators: _narrators?.build(),
              languages: _languages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'narrators';
        _narrators?.build();
        _$failedField = 'languages';
        _languages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryFilterData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
