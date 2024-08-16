// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class SeriesBuilder {
  void replace(Series other);
  void update(void Function(SeriesBuilder) updates);
  String? get id;
  set id(String? id);

  String? get name;
  set name(String? name);

  String? get description;
  set description(String? description);

  int? get addedAt;
  set addedAt(int? addedAt);

  int? get updatedAt;
  set updatedAt(int? updatedAt);
}

class _$$Series extends $Series {
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

  factory _$$Series([void Function($SeriesBuilder)? updates]) =>
      (new $SeriesBuilder()..update(updates))._build();

  _$$Series._(
      {this.id, this.name, this.description, this.addedAt, this.updatedAt})
      : super._();

  @override
  $Series rebuild(void Function($SeriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $SeriesBuilder toBuilder() => new $SeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $Series &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'$Series')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class $SeriesBuilder
    implements Builder<$Series, $SeriesBuilder>, SeriesBuilder {
  _$$Series? _$v;

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

  $SeriesBuilder() {
    $Series._defaults(this);
  }

  $SeriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $Series other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$Series;
  }

  @override
  void update(void Function($SeriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $Series build() => _build();

  _$$Series _build() {
    final _$result = _$v ??
        new _$$Series._(
            id: id,
            name: name,
            description: description,
            addedAt: addedAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
