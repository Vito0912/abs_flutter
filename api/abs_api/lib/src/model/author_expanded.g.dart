// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_expanded.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorExpanded extends AuthorExpanded {
  @override
  final int? numBooks;
  @override
  final String? id;
  @override
  final String? asin;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imagePath;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;
  @override
  final BuiltList<LibraryItemMinified>? libraryItems;
  @override
  final BuiltList<AuthorSeries>? series;

  factory _$AuthorExpanded([void Function(AuthorExpandedBuilder)? updates]) =>
      (new AuthorExpandedBuilder()..update(updates))._build();

  _$AuthorExpanded._(
      {this.numBooks,
      this.id,
      this.asin,
      this.name,
      this.description,
      this.imagePath,
      this.addedAt,
      this.updatedAt,
      this.libraryItems,
      this.series})
      : super._();

  @override
  AuthorExpanded rebuild(void Function(AuthorExpandedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorExpandedBuilder toBuilder() =>
      new AuthorExpandedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorExpanded &&
        numBooks == other.numBooks &&
        id == other.id &&
        asin == other.asin &&
        name == other.name &&
        description == other.description &&
        imagePath == other.imagePath &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        libraryItems == other.libraryItems &&
        series == other.series;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numBooks.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, asin.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, libraryItems.hashCode);
    _$hash = $jc(_$hash, series.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorExpanded')
          ..add('numBooks', numBooks)
          ..add('id', id)
          ..add('asin', asin)
          ..add('name', name)
          ..add('description', description)
          ..add('imagePath', imagePath)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('libraryItems', libraryItems)
          ..add('series', series))
        .toString();
  }
}

class AuthorExpandedBuilder
    implements Builder<AuthorExpanded, AuthorExpandedBuilder>, AuthorBuilder {
  _$AuthorExpanded? _$v;

  int? _numBooks;
  int? get numBooks => _$this._numBooks;
  set numBooks(covariant int? numBooks) => _$this._numBooks = numBooks;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _asin;
  String? get asin => _$this._asin;
  set asin(covariant String? asin) => _$this._asin = asin;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(covariant String? imagePath) => _$this._imagePath = imagePath;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(covariant int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant int? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<LibraryItemMinified>? _libraryItems;
  ListBuilder<LibraryItemMinified> get libraryItems =>
      _$this._libraryItems ??= new ListBuilder<LibraryItemMinified>();
  set libraryItems(covariant ListBuilder<LibraryItemMinified>? libraryItems) =>
      _$this._libraryItems = libraryItems;

  ListBuilder<AuthorSeries>? _series;
  ListBuilder<AuthorSeries> get series =>
      _$this._series ??= new ListBuilder<AuthorSeries>();
  set series(covariant ListBuilder<AuthorSeries>? series) =>
      _$this._series = series;

  AuthorExpandedBuilder() {
    AuthorExpanded._defaults(this);
  }

  AuthorExpandedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numBooks = $v.numBooks;
      _id = $v.id;
      _asin = $v.asin;
      _name = $v.name;
      _description = $v.description;
      _imagePath = $v.imagePath;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _libraryItems = $v.libraryItems?.toBuilder();
      _series = $v.series?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AuthorExpanded other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorExpanded;
  }

  @override
  void update(void Function(AuthorExpandedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorExpanded build() => _build();

  _$AuthorExpanded _build() {
    _$AuthorExpanded _$result;
    try {
      _$result = _$v ??
          new _$AuthorExpanded._(
              numBooks: numBooks,
              id: id,
              asin: asin,
              name: name,
              description: description,
              imagePath: imagePath,
              addedAt: addedAt,
              updatedAt: updatedAt,
              libraryItems: _libraryItems?.build(),
              series: _series?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'libraryItems';
        _libraryItems?.build();
        _$failedField = 'series';
        _series?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorExpanded', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
