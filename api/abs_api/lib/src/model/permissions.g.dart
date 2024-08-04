// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Permissions extends Permissions {
  @override
  final bool download;
  @override
  final bool update_;
  @override
  final bool delete;
  @override
  final bool upload;
  @override
  final bool accessAllLibraries;
  @override
  final bool accessAllTags;
  @override
  final bool accessExplicitContent;

  factory _$Permissions([void Function(PermissionsBuilder)? updates]) =>
      (new PermissionsBuilder()..update(updates))._build();

  _$Permissions._(
      {required this.download,
      required this.update_,
      required this.delete,
      required this.upload,
      required this.accessAllLibraries,
      required this.accessAllTags,
      required this.accessExplicitContent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(download, r'Permissions', 'download');
    BuiltValueNullFieldError.checkNotNull(update_, r'Permissions', 'update_');
    BuiltValueNullFieldError.checkNotNull(delete, r'Permissions', 'delete');
    BuiltValueNullFieldError.checkNotNull(upload, r'Permissions', 'upload');
    BuiltValueNullFieldError.checkNotNull(
        accessAllLibraries, r'Permissions', 'accessAllLibraries');
    BuiltValueNullFieldError.checkNotNull(
        accessAllTags, r'Permissions', 'accessAllTags');
    BuiltValueNullFieldError.checkNotNull(
        accessExplicitContent, r'Permissions', 'accessExplicitContent');
  }

  @override
  Permissions rebuild(void Function(PermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionsBuilder toBuilder() => new PermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permissions &&
        download == other.download &&
        update_ == other.update_ &&
        delete == other.delete &&
        upload == other.upload &&
        accessAllLibraries == other.accessAllLibraries &&
        accessAllTags == other.accessAllTags &&
        accessExplicitContent == other.accessExplicitContent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, download.hashCode);
    _$hash = $jc(_$hash, update_.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, upload.hashCode);
    _$hash = $jc(_$hash, accessAllLibraries.hashCode);
    _$hash = $jc(_$hash, accessAllTags.hashCode);
    _$hash = $jc(_$hash, accessExplicitContent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Permissions')
          ..add('download', download)
          ..add('update_', update_)
          ..add('delete', delete)
          ..add('upload', upload)
          ..add('accessAllLibraries', accessAllLibraries)
          ..add('accessAllTags', accessAllTags)
          ..add('accessExplicitContent', accessExplicitContent))
        .toString();
  }
}

class PermissionsBuilder implements Builder<Permissions, PermissionsBuilder> {
  _$Permissions? _$v;

  bool? _download;
  bool? get download => _$this._download;
  set download(bool? download) => _$this._download = download;

  bool? _update_;
  bool? get update_ => _$this._update_;
  set update_(bool? update_) => _$this._update_ = update_;

  bool? _delete;
  bool? get delete => _$this._delete;
  set delete(bool? delete) => _$this._delete = delete;

  bool? _upload;
  bool? get upload => _$this._upload;
  set upload(bool? upload) => _$this._upload = upload;

  bool? _accessAllLibraries;
  bool? get accessAllLibraries => _$this._accessAllLibraries;
  set accessAllLibraries(bool? accessAllLibraries) =>
      _$this._accessAllLibraries = accessAllLibraries;

  bool? _accessAllTags;
  bool? get accessAllTags => _$this._accessAllTags;
  set accessAllTags(bool? accessAllTags) =>
      _$this._accessAllTags = accessAllTags;

  bool? _accessExplicitContent;
  bool? get accessExplicitContent => _$this._accessExplicitContent;
  set accessExplicitContent(bool? accessExplicitContent) =>
      _$this._accessExplicitContent = accessExplicitContent;

  PermissionsBuilder() {
    Permissions._defaults(this);
  }

  PermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _download = $v.download;
      _update_ = $v.update_;
      _delete = $v.delete;
      _upload = $v.upload;
      _accessAllLibraries = $v.accessAllLibraries;
      _accessAllTags = $v.accessAllTags;
      _accessExplicitContent = $v.accessExplicitContent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Permissions;
  }

  @override
  void update(void Function(PermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Permissions build() => _build();

  _$Permissions _build() {
    final _$result = _$v ??
        new _$Permissions._(
            download: BuiltValueNullFieldError.checkNotNull(
                download, r'Permissions', 'download'),
            update_: BuiltValueNullFieldError.checkNotNull(
                update_, r'Permissions', 'update_'),
            delete: BuiltValueNullFieldError.checkNotNull(
                delete, r'Permissions', 'delete'),
            upload: BuiltValueNullFieldError.checkNotNull(
                upload, r'Permissions', 'upload'),
            accessAllLibraries: BuiltValueNullFieldError.checkNotNull(
                accessAllLibraries, r'Permissions', 'accessAllLibraries'),
            accessAllTags: BuiltValueNullFieldError.checkNotNull(
                accessAllTags, r'Permissions', 'accessAllTags'),
            accessExplicitContent: BuiltValueNullFieldError.checkNotNull(
                accessExplicitContent,
                r'Permissions',
                'accessExplicitContent'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
