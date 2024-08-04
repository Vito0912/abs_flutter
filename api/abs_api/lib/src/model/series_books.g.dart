// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_books.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesBooks extends SeriesBooks {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? addedAt;
  @override
  final String? nameIgnorePrefix;
  @override
  final String? nameIgnorePrefixSort;
  @override
  final String? type;
  @override
  final BuiltList<LibraryItemSequence>? books;
  @override
  final num? totalDuration;

  factory _$SeriesBooks([void Function(SeriesBooksBuilder)? updates]) =>
      (new SeriesBooksBuilder()..update(updates))._build();

  _$SeriesBooks._(
      {this.id,
      this.name,
      this.addedAt,
      this.nameIgnorePrefix,
      this.nameIgnorePrefixSort,
      this.type,
      this.books,
      this.totalDuration})
      : super._();

  @override
  SeriesBooks rebuild(void Function(SeriesBooksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesBooksBuilder toBuilder() => new SeriesBooksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesBooks &&
        id == other.id &&
        name == other.name &&
        addedAt == other.addedAt &&
        nameIgnorePrefix == other.nameIgnorePrefix &&
        nameIgnorePrefixSort == other.nameIgnorePrefixSort &&
        type == other.type &&
        books == other.books &&
        totalDuration == other.totalDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, nameIgnorePrefix.hashCode);
    _$hash = $jc(_$hash, nameIgnorePrefixSort.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, books.hashCode);
    _$hash = $jc(_$hash, totalDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesBooks')
          ..add('id', id)
          ..add('name', name)
          ..add('addedAt', addedAt)
          ..add('nameIgnorePrefix', nameIgnorePrefix)
          ..add('nameIgnorePrefixSort', nameIgnorePrefixSort)
          ..add('type', type)
          ..add('books', books)
          ..add('totalDuration', totalDuration))
        .toString();
  }
}

class SeriesBooksBuilder implements Builder<SeriesBooks, SeriesBooksBuilder> {
  _$SeriesBooks? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  String? _nameIgnorePrefix;
  String? get nameIgnorePrefix => _$this._nameIgnorePrefix;
  set nameIgnorePrefix(String? nameIgnorePrefix) =>
      _$this._nameIgnorePrefix = nameIgnorePrefix;

  String? _nameIgnorePrefixSort;
  String? get nameIgnorePrefixSort => _$this._nameIgnorePrefixSort;
  set nameIgnorePrefixSort(String? nameIgnorePrefixSort) =>
      _$this._nameIgnorePrefixSort = nameIgnorePrefixSort;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<LibraryItemSequence>? _books;
  ListBuilder<LibraryItemSequence> get books =>
      _$this._books ??= new ListBuilder<LibraryItemSequence>();
  set books(ListBuilder<LibraryItemSequence>? books) => _$this._books = books;

  num? _totalDuration;
  num? get totalDuration => _$this._totalDuration;
  set totalDuration(num? totalDuration) =>
      _$this._totalDuration = totalDuration;

  SeriesBooksBuilder() {
    SeriesBooks._defaults(this);
  }

  SeriesBooksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _addedAt = $v.addedAt;
      _nameIgnorePrefix = $v.nameIgnorePrefix;
      _nameIgnorePrefixSort = $v.nameIgnorePrefixSort;
      _type = $v.type;
      _books = $v.books?.toBuilder();
      _totalDuration = $v.totalDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesBooks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesBooks;
  }

  @override
  void update(void Function(SeriesBooksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesBooks build() => _build();

  _$SeriesBooks _build() {
    _$SeriesBooks _$result;
    try {
      _$result = _$v ??
          new _$SeriesBooks._(
              id: id,
              name: name,
              addedAt: addedAt,
              nameIgnorePrefix: nameIgnorePrefix,
              nameIgnorePrefixSort: nameIgnorePrefixSort,
              type: type,
              books: _books?.build(),
              totalDuration: totalDuration);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'books';
        _books?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeriesBooks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
