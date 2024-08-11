// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_num_books.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesNumBooks extends SeriesNumBooks {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? numBooks;
  @override
  final BuiltList<String>? libraryItemIds;

  factory _$SeriesNumBooks([void Function(SeriesNumBooksBuilder)? updates]) =>
      (new SeriesNumBooksBuilder()..update(updates))._build();

  _$SeriesNumBooks._({this.id, this.name, this.numBooks, this.libraryItemIds})
      : super._();

  @override
  SeriesNumBooks rebuild(void Function(SeriesNumBooksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesNumBooksBuilder toBuilder() =>
      new SeriesNumBooksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesNumBooks &&
        id == other.id &&
        name == other.name &&
        numBooks == other.numBooks &&
        libraryItemIds == other.libraryItemIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, numBooks.hashCode);
    _$hash = $jc(_$hash, libraryItemIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesNumBooks')
          ..add('id', id)
          ..add('name', name)
          ..add('numBooks', numBooks)
          ..add('libraryItemIds', libraryItemIds))
        .toString();
  }
}

class SeriesNumBooksBuilder
    implements Builder<SeriesNumBooks, SeriesNumBooksBuilder> {
  _$SeriesNumBooks? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _numBooks;
  int? get numBooks => _$this._numBooks;
  set numBooks(int? numBooks) => _$this._numBooks = numBooks;

  ListBuilder<String>? _libraryItemIds;
  ListBuilder<String> get libraryItemIds =>
      _$this._libraryItemIds ??= new ListBuilder<String>();
  set libraryItemIds(ListBuilder<String>? libraryItemIds) =>
      _$this._libraryItemIds = libraryItemIds;

  SeriesNumBooksBuilder() {
    SeriesNumBooks._defaults(this);
  }

  SeriesNumBooksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _numBooks = $v.numBooks;
      _libraryItemIds = $v.libraryItemIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesNumBooks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesNumBooks;
  }

  @override
  void update(void Function(SeriesNumBooksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesNumBooks build() => _build();

  _$SeriesNumBooks _build() {
    _$SeriesNumBooks _$result;
    try {
      _$result = _$v ??
          new _$SeriesNumBooks._(
              id: id,
              name: name,
              numBooks: numBooks,
              libraryItemIds: _libraryItemIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'libraryItemIds';
        _libraryItemIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeriesNumBooks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
