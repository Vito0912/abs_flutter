// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookMetadata extends BookMetadata {
  @override
  final BuiltList<SeriesSequence>? series;
  @override
  final BuiltList<AuthorMinified>? authors;
  @override
  final BuiltList<String>? narrators;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final BuiltList<String>? genres;
  @override
  final String? publishedYear;
  @override
  final String? publishedDate;
  @override
  final String? publisher;
  @override
  final String? description;
  @override
  final String? isbn;
  @override
  final String? asin;
  @override
  final String? language;
  @override
  final bool? explicit;
  @override
  final bool? abridged;
  @override
  final String? authorName;
  @override
  final String? narratorName;
  @override
  final String? seriesName;

  factory _$BookMetadata([void Function(BookMetadataBuilder)? updates]) =>
      (new BookMetadataBuilder()..update(updates))._build();

  _$BookMetadata._(
      {this.series,
      this.authors,
      this.narrators,
      this.title,
      this.subtitle,
      this.genres,
      this.publishedYear,
      this.publishedDate,
      this.publisher,
      this.description,
      this.isbn,
      this.asin,
      this.language,
      this.explicit,
      this.abridged,
      this.authorName,
      this.narratorName,
      this.seriesName})
      : super._();

  @override
  BookMetadata rebuild(void Function(BookMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookMetadataBuilder toBuilder() => new BookMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookMetadata &&
        series == other.series &&
        authors == other.authors &&
        narrators == other.narrators &&
        title == other.title &&
        subtitle == other.subtitle &&
        genres == other.genres &&
        publishedYear == other.publishedYear &&
        publishedDate == other.publishedDate &&
        publisher == other.publisher &&
        description == other.description &&
        isbn == other.isbn &&
        asin == other.asin &&
        language == other.language &&
        explicit == other.explicit &&
        abridged == other.abridged &&
        authorName == other.authorName &&
        narratorName == other.narratorName &&
        seriesName == other.seriesName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, narrators.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, subtitle.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, publishedYear.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isbn.hashCode);
    _$hash = $jc(_$hash, asin.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, explicit.hashCode);
    _$hash = $jc(_$hash, abridged.hashCode);
    _$hash = $jc(_$hash, authorName.hashCode);
    _$hash = $jc(_$hash, narratorName.hashCode);
    _$hash = $jc(_$hash, seriesName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookMetadata')
          ..add('series', series)
          ..add('authors', authors)
          ..add('narrators', narrators)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('genres', genres)
          ..add('publishedYear', publishedYear)
          ..add('publishedDate', publishedDate)
          ..add('publisher', publisher)
          ..add('description', description)
          ..add('isbn', isbn)
          ..add('asin', asin)
          ..add('language', language)
          ..add('explicit', explicit)
          ..add('abridged', abridged)
          ..add('authorName', authorName)
          ..add('narratorName', narratorName)
          ..add('seriesName', seriesName))
        .toString();
  }
}

class BookMetadataBuilder
    implements
        Builder<BookMetadata, BookMetadataBuilder>,
        BookMetadataBaseBuilder {
  _$BookMetadata? _$v;

  ListBuilder<SeriesSequence>? _series;
  ListBuilder<SeriesSequence> get series =>
      _$this._series ??= new ListBuilder<SeriesSequence>();
  set series(covariant ListBuilder<SeriesSequence>? series) =>
      _$this._series = series;

  ListBuilder<AuthorMinified>? _authors;
  ListBuilder<AuthorMinified> get authors =>
      _$this._authors ??= new ListBuilder<AuthorMinified>();
  set authors(covariant ListBuilder<AuthorMinified>? authors) =>
      _$this._authors = authors;

  ListBuilder<String>? _narrators;
  ListBuilder<String> get narrators =>
      _$this._narrators ??= new ListBuilder<String>();
  set narrators(covariant ListBuilder<String>? narrators) =>
      _$this._narrators = narrators;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(covariant String? subtitle) => _$this._subtitle = subtitle;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres =>
      _$this._genres ??= new ListBuilder<String>();
  set genres(covariant ListBuilder<String>? genres) => _$this._genres = genres;

  String? _publishedYear;
  String? get publishedYear => _$this._publishedYear;
  set publishedYear(covariant String? publishedYear) =>
      _$this._publishedYear = publishedYear;

  String? _publishedDate;
  String? get publishedDate => _$this._publishedDate;
  set publishedDate(covariant String? publishedDate) =>
      _$this._publishedDate = publishedDate;

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(covariant String? publisher) => _$this._publisher = publisher;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _isbn;
  String? get isbn => _$this._isbn;
  set isbn(covariant String? isbn) => _$this._isbn = isbn;

  String? _asin;
  String? get asin => _$this._asin;
  set asin(covariant String? asin) => _$this._asin = asin;

  String? _language;
  String? get language => _$this._language;
  set language(covariant String? language) => _$this._language = language;

  bool? _explicit;
  bool? get explicit => _$this._explicit;
  set explicit(covariant bool? explicit) => _$this._explicit = explicit;

  bool? _abridged;
  bool? get abridged => _$this._abridged;
  set abridged(covariant bool? abridged) => _$this._abridged = abridged;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(covariant String? authorName) =>
      _$this._authorName = authorName;

  String? _narratorName;
  String? get narratorName => _$this._narratorName;
  set narratorName(covariant String? narratorName) =>
      _$this._narratorName = narratorName;

  String? _seriesName;
  String? get seriesName => _$this._seriesName;
  set seriesName(covariant String? seriesName) =>
      _$this._seriesName = seriesName;

  BookMetadataBuilder() {
    BookMetadata._defaults(this);
  }

  BookMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _series = $v.series?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _narrators = $v.narrators?.toBuilder();
      _title = $v.title;
      _subtitle = $v.subtitle;
      _genres = $v.genres?.toBuilder();
      _publishedYear = $v.publishedYear;
      _publishedDate = $v.publishedDate;
      _publisher = $v.publisher;
      _description = $v.description;
      _isbn = $v.isbn;
      _asin = $v.asin;
      _language = $v.language;
      _explicit = $v.explicit;
      _abridged = $v.abridged;
      _authorName = $v.authorName;
      _narratorName = $v.narratorName;
      _seriesName = $v.seriesName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BookMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookMetadata;
  }

  @override
  void update(void Function(BookMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookMetadata build() => _build();

  _$BookMetadata _build() {
    _$BookMetadata _$result;
    try {
      _$result = _$v ??
          new _$BookMetadata._(
              series: _series?.build(),
              authors: _authors?.build(),
              narrators: _narrators?.build(),
              title: title,
              subtitle: subtitle,
              genres: _genres?.build(),
              publishedYear: publishedYear,
              publishedDate: publishedDate,
              publisher: publisher,
              description: description,
              isbn: isbn,
              asin: asin,
              language: language,
              explicit: explicit,
              abridged: abridged,
              authorName: authorName,
              narratorName: narratorName,
              seriesName: seriesName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'series';
        _series?.build();
        _$failedField = 'authors';
        _authors?.build();
        _$failedField = 'narrators';
        _narrators?.build();

        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BookMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
