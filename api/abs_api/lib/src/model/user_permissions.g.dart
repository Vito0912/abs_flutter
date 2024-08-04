// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPermissions extends UserPermissions {
  @override
  final bool? download;
  @override
  final bool? delete;
  @override
  final bool? upload;
  @override
  final bool? accessAllLibraries;
  @override
  final bool? accessAllTags;
  @override
  final bool? accessExplicitContent;

  factory _$UserPermissions([void Function(UserPermissionsBuilder)? updates]) =>
      (new UserPermissionsBuilder()..update(updates))._build();

  _$UserPermissions._(
      {this.download,
      this.delete,
      this.upload,
      this.accessAllLibraries,
      this.accessAllTags,
      this.accessExplicitContent})
      : super._();

  @override
  UserPermissions rebuild(void Function(UserPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPermissionsBuilder toBuilder() =>
      new UserPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPermissions &&
        download == other.download &&
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
    return (newBuiltValueToStringHelper(r'UserPermissions')
          ..add('download', download)
          ..add('delete', delete)
          ..add('upload', upload)
          ..add('accessAllLibraries', accessAllLibraries)
          ..add('accessAllTags', accessAllTags)
          ..add('accessExplicitContent', accessExplicitContent))
        .toString();
  }
}

class UserPermissionsBuilder
    implements Builder<UserPermissions, UserPermissionsBuilder> {
  _$UserPermissions? _$v;

  bool? _download;
  bool? get download => _$this._download;
  set download(bool? download) => _$this._download = download;

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

  UserPermissionsBuilder() {
    UserPermissions._defaults(this);
  }

  UserPermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _download = $v.download;
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
  void replace(UserPermissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserPermissions;
  }

  @override
  void update(void Function(UserPermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPermissions build() => _build();

  _$UserPermissions _build() {
    final _$result = _$v ??
        new _$UserPermissions._(
            download: download,
            delete: delete,
            upload: upload,
            accessAllLibraries: accessAllLibraries,
            accessAllTags: accessAllTags,
            accessExplicitContent: accessExplicitContent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
