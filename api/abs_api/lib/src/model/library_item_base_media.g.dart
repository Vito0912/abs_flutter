// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_base_media.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryItemBaseMedia extends LibraryItemBaseMedia {
  @override
  final OneOf oneOf;

  factory _$LibraryItemBaseMedia(
          [void Function(LibraryItemBaseMediaBuilder)? updates]) =>
      (new LibraryItemBaseMediaBuilder()..update(updates))._build();

  _$LibraryItemBaseMedia._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'LibraryItemBaseMedia', 'oneOf');
  }

  @override
  LibraryItemBaseMedia rebuild(
          void Function(LibraryItemBaseMediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryItemBaseMediaBuilder toBuilder() =>
      new LibraryItemBaseMediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryItemBaseMedia && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryItemBaseMedia')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class LibraryItemBaseMediaBuilder
    implements Builder<LibraryItemBaseMedia, LibraryItemBaseMediaBuilder> {
  _$LibraryItemBaseMedia? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  LibraryItemBaseMediaBuilder() {
    LibraryItemBaseMedia._defaults(this);
  }

  LibraryItemBaseMediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryItemBaseMedia other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryItemBaseMedia;
  }

  @override
  void update(void Function(LibraryItemBaseMediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryItemBaseMedia build() => _build();

  _$LibraryItemBaseMedia _build() {
    final _$result = _$v ??
        new _$LibraryItemBaseMedia._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'LibraryItemBaseMedia', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
