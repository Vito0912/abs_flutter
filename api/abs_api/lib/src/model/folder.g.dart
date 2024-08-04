// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Folder extends Folder {
  @override
  final String? id;
  @override
  final String? fullPath;
  @override
  final String? libraryId;
  @override
  final int? addedAt;

  factory _$Folder([void Function(FolderBuilder)? updates]) =>
      (new FolderBuilder()..update(updates))._build();

  _$Folder._({this.id, this.fullPath, this.libraryId, this.addedAt})
      : super._();

  @override
  Folder rebuild(void Function(FolderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FolderBuilder toBuilder() => new FolderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Folder &&
        id == other.id &&
        fullPath == other.fullPath &&
        libraryId == other.libraryId &&
        addedAt == other.addedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullPath.hashCode);
    _$hash = $jc(_$hash, libraryId.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Folder')
          ..add('id', id)
          ..add('fullPath', fullPath)
          ..add('libraryId', libraryId)
          ..add('addedAt', addedAt))
        .toString();
  }
}

class FolderBuilder implements Builder<Folder, FolderBuilder> {
  _$Folder? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _fullPath;
  String? get fullPath => _$this._fullPath;
  set fullPath(String? fullPath) => _$this._fullPath = fullPath;

  String? _libraryId;
  String? get libraryId => _$this._libraryId;
  set libraryId(String? libraryId) => _$this._libraryId = libraryId;

  int? _addedAt;
  int? get addedAt => _$this._addedAt;
  set addedAt(int? addedAt) => _$this._addedAt = addedAt;

  FolderBuilder() {
    Folder._defaults(this);
  }

  FolderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullPath = $v.fullPath;
      _libraryId = $v.libraryId;
      _addedAt = $v.addedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Folder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Folder;
  }

  @override
  void update(void Function(FolderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Folder build() => _build();

  _$Folder _build() {
    final _$result = _$v ??
        new _$Folder._(
            id: id, fullPath: fullPath, libraryId: libraryId, addedAt: addedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
