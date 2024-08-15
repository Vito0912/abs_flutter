// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_shelf.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LibraryShelfTypeEnum _$libraryShelfTypeEnum_book =
    const LibraryShelfTypeEnum._('book');
const LibraryShelfTypeEnum _$libraryShelfTypeEnum_podcast =
    const LibraryShelfTypeEnum._('podcast');
const LibraryShelfTypeEnum _$libraryShelfTypeEnum_series =
    const LibraryShelfTypeEnum._('series');
const LibraryShelfTypeEnum _$libraryShelfTypeEnum_authors =
    const LibraryShelfTypeEnum._('authors');
const LibraryShelfTypeEnum _$libraryShelfTypeEnum_episode =
    const LibraryShelfTypeEnum._('episode');

LibraryShelfTypeEnum _$libraryShelfTypeEnumValueOf(String name) {
  switch (name) {
    case 'book':
      return _$libraryShelfTypeEnum_book;
    case 'podcast':
      return _$libraryShelfTypeEnum_podcast;
    case 'series':
      return _$libraryShelfTypeEnum_series;
    case 'authors':
      return _$libraryShelfTypeEnum_authors;
    case 'episode':
      return _$libraryShelfTypeEnum_episode;
    default:
      return _$libraryShelfTypeEnum_episode;
  }
}

final BuiltSet<LibraryShelfTypeEnum> _$libraryShelfTypeEnumValues =
    new BuiltSet<LibraryShelfTypeEnum>(const <LibraryShelfTypeEnum>[
  _$libraryShelfTypeEnum_book,
  _$libraryShelfTypeEnum_podcast,
  _$libraryShelfTypeEnum_series,
  _$libraryShelfTypeEnum_authors,
  _$libraryShelfTypeEnum_episode,
]);

Serializer<LibraryShelfTypeEnum> _$libraryShelfTypeEnumSerializer =
    new _$LibraryShelfTypeEnumSerializer();

class _$LibraryShelfTypeEnumSerializer
    implements PrimitiveSerializer<LibraryShelfTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'book': 'book',
    'podcast': 'podcast',
    'series': 'series',
    'authors': 'authors',
    'episode': 'episode',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'book': 'book',
    'podcast': 'podcast',
    'series': 'series',
    'authors': 'authors',
    'episode': 'episode',
  };

  @override
  final Iterable<Type> types = const <Type>[LibraryShelfTypeEnum];
  @override
  final String wireName = 'LibraryShelfTypeEnum';

  @override
  Object serialize(Serializers serializers, LibraryShelfTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LibraryShelfTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LibraryShelfTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LibraryShelf extends LibraryShelf {
  @override
  final String? id;
  @override
  final String? label;
  @override
  final String? labelStringKey;
  @override
  final LibraryShelfTypeEnum? type;
  @override
  final String? category;
  @override
  final BuiltList<LibraryShelfEntitiesInner>? entities;

  factory _$LibraryShelf([void Function(LibraryShelfBuilder)? updates]) =>
      (new LibraryShelfBuilder()..update(updates))._build();

  _$LibraryShelf._(
      {this.id,
      this.label,
      this.labelStringKey,
      this.type,
      this.category,
      this.entities})
      : super._();

  @override
  LibraryShelf rebuild(void Function(LibraryShelfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryShelfBuilder toBuilder() => new LibraryShelfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryShelf &&
        id == other.id &&
        label == other.label &&
        labelStringKey == other.labelStringKey &&
        type == other.type &&
        category == other.category &&
        entities == other.entities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, labelStringKey.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryShelf')
          ..add('id', id)
          ..add('label', label)
          ..add('labelStringKey', labelStringKey)
          ..add('type', type)
          ..add('category', category)
          ..add('entities', entities))
        .toString();
  }
}

class LibraryShelfBuilder
    implements Builder<LibraryShelf, LibraryShelfBuilder> {
  _$LibraryShelf? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _labelStringKey;
  String? get labelStringKey => _$this._labelStringKey;
  set labelStringKey(String? labelStringKey) =>
      _$this._labelStringKey = labelStringKey;

  LibraryShelfTypeEnum? _type;
  LibraryShelfTypeEnum? get type => _$this._type;
  set type(LibraryShelfTypeEnum? type) => _$this._type = type;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  ListBuilder<LibraryShelfEntitiesInner>? _entities;
  ListBuilder<LibraryShelfEntitiesInner> get entities =>
      _$this._entities ??= new ListBuilder<LibraryShelfEntitiesInner>();
  set entities(ListBuilder<LibraryShelfEntitiesInner>? entities) =>
      _$this._entities = entities;

  LibraryShelfBuilder() {
    LibraryShelf._defaults(this);
  }

  LibraryShelfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _label = $v.label;
      _labelStringKey = $v.labelStringKey;
      _type = $v.type;
      _category = $v.category;
      _entities = $v.entities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryShelf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryShelf;
  }

  @override
  void update(void Function(LibraryShelfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryShelf build() => _build();

  _$LibraryShelf _build() {
    _$LibraryShelf _$result;
    try {
      _$result = _$v ??
          new _$LibraryShelf._(
              id: id,
              label: label,
              labelStringKey: labelStringKey,
              type: type,
              category: category,
              entities: _entities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entities';
        _entities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryShelf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
