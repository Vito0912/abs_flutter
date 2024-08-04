// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorSeries extends AuthorSeries {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BuiltList<LibraryItemMinified>? items;

  factory _$AuthorSeries([void Function(AuthorSeriesBuilder)? updates]) =>
      (new AuthorSeriesBuilder()..update(updates))._build();

  _$AuthorSeries._({this.id, this.name, this.items}) : super._();

  @override
  AuthorSeries rebuild(void Function(AuthorSeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorSeriesBuilder toBuilder() => new AuthorSeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorSeries &&
        id == other.id &&
        name == other.name &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorSeries')
          ..add('id', id)
          ..add('name', name)
          ..add('items', items))
        .toString();
  }
}

class AuthorSeriesBuilder
    implements Builder<AuthorSeries, AuthorSeriesBuilder> {
  _$AuthorSeries? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<LibraryItemMinified>? _items;
  ListBuilder<LibraryItemMinified> get items =>
      _$this._items ??= new ListBuilder<LibraryItemMinified>();
  set items(ListBuilder<LibraryItemMinified>? items) => _$this._items = items;

  AuthorSeriesBuilder() {
    AuthorSeries._defaults(this);
  }

  AuthorSeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorSeries other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorSeries;
  }

  @override
  void update(void Function(AuthorSeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorSeries build() => _build();

  _$AuthorSeries _build() {
    _$AuthorSeries _$result;
    try {
      _$result = _$v ??
          new _$AuthorSeries._(id: id, name: name, items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthorSeries', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
