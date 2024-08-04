// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_minified.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorMinified extends AuthorMinified {
  @override
  final String? id;
  @override
  final String? name;

  factory _$AuthorMinified([void Function(AuthorMinifiedBuilder)? updates]) =>
      (new AuthorMinifiedBuilder()..update(updates))._build();

  _$AuthorMinified._({this.id, this.name}) : super._();

  @override
  AuthorMinified rebuild(void Function(AuthorMinifiedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorMinifiedBuilder toBuilder() =>
      new AuthorMinifiedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorMinified && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorMinified')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class AuthorMinifiedBuilder
    implements Builder<AuthorMinified, AuthorMinifiedBuilder> {
  _$AuthorMinified? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AuthorMinifiedBuilder() {
    AuthorMinified._defaults(this);
  }

  AuthorMinifiedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorMinified other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthorMinified;
  }

  @override
  void update(void Function(AuthorMinifiedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorMinified build() => _build();

  _$AuthorMinified _build() {
    final _$result = _$v ?? new _$AuthorMinified._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
