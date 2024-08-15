// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_shelf.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SeriesShelfBuilder implements SeriesBuilder {
  void replace(covariant SeriesShelf other);
  void update(void Function(SeriesShelfBuilder) updates);
  ListBuilder<LibraryItemMinified> get books;
  set books(covariant ListBuilder<LibraryItemMinified>? books);

  bool? get inProgress;
  set inProgress(covariant bool? inProgress);

  int? get bookInProgressLastUpdate;
  set bookInProgressLastUpdate(covariant int? bookInProgressLastUpdate);

  bool? get hideFromContinueListening;
  set hideFromContinueListening(covariant bool? hideFromContinueListening);

  LibraryItemMinifiedBuilder get firstBookUnread;
  set firstBookUnread(covariant LibraryItemMinifiedBuilder? firstBookUnread);

  bool? get hasActiveBook;
  set hasActiveBook(covariant bool? hasActiveBook);

  String? get id;
  set id(covariant String? id);

  String? get name;
  set name(covariant String? name);

  String? get description;
  set description(covariant String? description);

  int? get addedAt;
  set addedAt(covariant int? addedAt);

  int? get updatedAt;
  set updatedAt(covariant int? updatedAt);
}

class _$$SeriesShelf extends $SeriesShelf {
  @override
  final BuiltList<LibraryItemMinified>? books;
  @override
  final bool? inProgress;
  @override
  final int? bookInProgressLastUpdate;
  @override
  final bool? hideFromContinueListening;
  @override
  final LibraryItemMinified? firstBookUnread;
  @override
  final bool? hasActiveBook;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? addedAt;
  @override
  final int? updatedAt;

  factory _$$SeriesShelf([void Function($SeriesShelfBuilder)? updates]) =>
      (new $SeriesShelfBuilder()..update(updates))._build();

  _$$SeriesShelf._(
      {this.books,
      this.inProgress,
      this.bookInProgressLastUpdate,
      this.hideFromContinueListening,
      this.firstBookUnread,
      this.hasActiveBook,
      this.id,
      this.name,
      this.description,
      this.addedAt,
      this.updatedAt})
      : super._();

  @override
  $SeriesShelf rebuild(void Function($SeriesShelfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SeriesShelfBuilder toBuilder() => new $SeriesShelfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $SeriesShelf &&
        books == other.books &&
        inProgress == other.inProgress &&
        bookInProgressLastUpdate == other.bookInProgressLastUpdate &&
        hideFromContinueListening == other.hideFromContinueListening &&
        firstBookUnread == other.firstBookUnread &&
        hasActiveBook == other.hasActiveBook &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, books.hashCode);
    _$hash = $jc(_$hash, inProgress.hashCode);
    _$hash = $jc(_$hash, bookInProgressLastUpdate.hashCode);
    _$hash = $jc(_$hash, hideFromContinueListening.hashCode);
    _$hash = $jc(_$hash, firstBookUnread.hashCode);
    _$hash = $jc(_$hash, hasActiveBook.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$SeriesShelf')
          ..add('books', books)
          ..add('inProgress', inProgress)
          ..add('bookInProgressLastUpdate', bookInProgressLastUpdate)
          ..add('hideFromContinueListening', hideFromContinueListening)
          ..add('firstBookUnread', firstBookUnread)
          ..add('hasActiveBook', hasActiveBook)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class $SeriesShelfBuilder
    implements Builder<$SeriesShelf, $SeriesShelfBuilder>, SeriesShelfBuilder {
  _$$SeriesShelf? _$v;

  ListBuilder<LibraryItemMinified>? _books;
  ListBuilder<LibraryItemMinified> get books =>
      _$this._books ??= new ListBuilder<LibraryItemMinified>();
  set books(covariant ListBuilder<LibraryItemMinified>? books) =>
      _$this._books = books;

  bool? _inProgress;
  bool? get inProgress => _$this._inProgress;
  set inProgress(covariant bool? inProgress) => _$this._inProgress = inProgress;

  int? _bookInProgressLastUpdate;
  int? get bookInProgressLastUpdate => _$this._bookInProgressLastUpdate;
  set bookInProgressLastUpdate(covariant int? bookInProgressLastUpdate) =>
      _$this._bookInProgressLastUpdate = bookInProgressLastUpdate;

  bool? _hideFromContinueListening;
  bool? get hideFromContinueListening => _$this._hideFromContinueListening;
  set hideFromContinueListening(covariant bool? hideFromContinueListening) =>
      _$this._hideFromContinueListening = hideFromContinueListening;

  LibraryItemMinifiedBuilder? _firstBookUnread;
  LibraryItemMinifiedBuilder get firstBookUnread =>
      _$this._firstBookUnread ??= new LibraryItemMinifiedBuilder();
  set firstBookUnread(covariant LibraryItemMinifiedBuilder? firstBookUnread) =>
      _$this._firstBookUnread = firstBookUnread;

  bool? _hasActiveBook;
  bool? get hasActiveBook => _$this._hasActiveBook;
  set hasActiveBook(covariant bool? hasActiveBook) =>
      _$this._hasActiveBook = hasActiveBook;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(covariant int? addedAt) => _$this._addedAt = addedAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(covariant int? updatedAt) => _$this._updatedAt = updatedAt;

  $SeriesShelfBuilder() {
    $SeriesShelf._defaults(this);
  }

  $SeriesShelfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _books = $v.books?.toBuilder();
      _inProgress = $v.inProgress;
      _bookInProgressLastUpdate = $v.bookInProgressLastUpdate;
      _hideFromContinueListening = $v.hideFromContinueListening;
      _firstBookUnread = $v.firstBookUnread?.toBuilder();
      _hasActiveBook = $v.hasActiveBook;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $SeriesShelf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$SeriesShelf;
  }

  @override
  void update(void Function($SeriesShelfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $SeriesShelf build() => _build();

  _$$SeriesShelf _build() {
    _$$SeriesShelf _$result;
    try {
      _$result = _$v ??
          new _$$SeriesShelf._(
              books: _books?.build(),
              inProgress: inProgress,
              bookInProgressLastUpdate: bookInProgressLastUpdate,
              hideFromContinueListening: hideFromContinueListening,
              firstBookUnread: _firstBookUnread?.build(),
              hasActiveBook: hasActiveBook,
              id: id,
              name: name,
              description: description,
              addedAt: addedAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'books';
        _books?.build();

        _$failedField = 'firstBookUnread';
        _firstBookUnread?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'$SeriesShelf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
