// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class AuthorBuilder {
  void replace(Author other);
  void update(void Function(AuthorBuilder) updates);
  String? get id;
  set id(String? id);

  String? get asin;
  set asin(String? asin);

  String? get name;
  set name(String? name);

  String? get description;
  set description(String? description);

  String? get imagePath;
  set imagePath(String? imagePath);

  int? get addedAt;
  set addedAt(int? addedAt);

  int? get updatedAt;
  set updatedAt(int? updatedAt);

  ListBuilder<LibraryItemMinified> get libraryItems;
  set libraryItems(ListBuilder<LibraryItemMinified>? libraryItems);

  ListBuilder<AuthorSeries> get series;
  set series(ListBuilder<AuthorSeries>? series);
}

class _$$Author extends $Author {
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

  factory _$$Author([void Function($AuthorBuilder)? updates]) =>
      (new $AuthorBuilder()..update(updates))._build();

  _$$Author._(
      {this.id,
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
  $Author rebuild(void Function($AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AuthorBuilder toBuilder() => new $AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Author &&
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
    return (newBuiltValueToStringHelper(r'$Author')
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

class $AuthorBuilder
    implements Builder<$Author, $AuthorBuilder>, AuthorBuilder {
  _$$Author? _$v;

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

  $AuthorBuilder() {
    $Author._defaults(this);
  }

  $AuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $Author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Author;
  }

  @override
  void update(void Function($AuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Author build() => _build();

  _$$Author _build() {
    _$$Author _$result;
    try {
      _$result = _$v ??
          new _$$Author._(
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
            r'$Author', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
