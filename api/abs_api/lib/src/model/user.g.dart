// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final String? id;
  @override
  final String? username;
  @override
  final String? type;
  @override
  final String? token;
  @override
  final BuiltList<MediaProgress>? mediaProgress;
  @override
  final BuiltList<String>? seriesHideFromContinueListening;
  @override
  final BuiltList<Bookmark>? bookmarks;
  @override
  final int? lastSeen;
  @override
  final bool? isActive;
  @override
  final bool? isLocked;
  @override
  final int? createdAt;
  @override
  final Permissions? permissions;
  @override
  final BuiltList<String>? librariesAccessible;
  @override
  final BuiltList<String>? itemTagsSelected;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (new UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.username,
      this.type,
      this.token,
      this.mediaProgress,
      this.seriesHideFromContinueListening,
      this.bookmarks,
      this.lastSeen,
      this.isActive,
      this.isLocked,
      this.createdAt,
      this.permissions,
      this.librariesAccessible,
      this.itemTagsSelected})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        username == other.username &&
        type == other.type &&
        token == other.token &&
        mediaProgress == other.mediaProgress &&
        seriesHideFromContinueListening ==
            other.seriesHideFromContinueListening &&
        bookmarks == other.bookmarks &&
        lastSeen == other.lastSeen &&
        isActive == other.isActive &&
        isLocked == other.isLocked &&
        createdAt == other.createdAt &&
        permissions == other.permissions &&
        librariesAccessible == other.librariesAccessible &&
        itemTagsSelected == other.itemTagsSelected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, mediaProgress.hashCode);
    _$hash = $jc(_$hash, seriesHideFromContinueListening.hashCode);
    _$hash = $jc(_$hash, bookmarks.hashCode);
    _$hash = $jc(_$hash, lastSeen.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isLocked.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, librariesAccessible.hashCode);
    _$hash = $jc(_$hash, itemTagsSelected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('username', username)
          ..add('type', type)
          ..add('token', token)
          ..add('mediaProgress', mediaProgress)
          ..add('seriesHideFromContinueListening',
              seriesHideFromContinueListening)
          ..add('bookmarks', bookmarks)
          ..add('lastSeen', lastSeen)
          ..add('isActive', isActive)
          ..add('isLocked', isLocked)
          ..add('createdAt', createdAt)
          ..add('permissions', permissions)
          ..add('librariesAccessible', librariesAccessible)
          ..add('itemTagsSelected', itemTagsSelected))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ListBuilder<MediaProgress>? _mediaProgress;
  ListBuilder<MediaProgress> get mediaProgress =>
      _$this._mediaProgress ??= new ListBuilder<MediaProgress>();
  set mediaProgress(ListBuilder<MediaProgress>? mediaProgress) =>
      _$this._mediaProgress = mediaProgress;

  ListBuilder<String>? _seriesHideFromContinueListening;
  ListBuilder<String> get seriesHideFromContinueListening =>
      _$this._seriesHideFromContinueListening ??= new ListBuilder<String>();
  set seriesHideFromContinueListening(
          ListBuilder<String>? seriesHideFromContinueListening) =>
      _$this._seriesHideFromContinueListening = seriesHideFromContinueListening;

  ListBuilder<Bookmark>? _bookmarks;
  ListBuilder<Bookmark> get bookmarks =>
      _$this._bookmarks ??= new ListBuilder<Bookmark>();
  set bookmarks(ListBuilder<Bookmark>? bookmarks) =>
      _$this._bookmarks = bookmarks;

  int? _lastSeen;
  int? get lastSeen => _$this._lastSeen;
  set lastSeen(int? lastSeen) => _$this._lastSeen = lastSeen;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isLocked;
  bool? get isLocked => _$this._isLocked;
  set isLocked(bool? isLocked) => _$this._isLocked = isLocked;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  PermissionsBuilder? _permissions;
  PermissionsBuilder get permissions =>
      _$this._permissions ??= new PermissionsBuilder();
  set permissions(PermissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  ListBuilder<String>? _librariesAccessible;
  ListBuilder<String> get librariesAccessible =>
      _$this._librariesAccessible ??= new ListBuilder<String>();
  set librariesAccessible(ListBuilder<String>? librariesAccessible) =>
      _$this._librariesAccessible = librariesAccessible;

  ListBuilder<String>? _itemTagsSelected;
  ListBuilder<String> get itemTagsSelected =>
      _$this._itemTagsSelected ??= new ListBuilder<String>();
  set itemTagsSelected(ListBuilder<String>? itemTagsSelected) =>
      _$this._itemTagsSelected = itemTagsSelected;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _type = $v.type;
      _token = $v.token;
      _mediaProgress = $v.mediaProgress?.toBuilder();
      _seriesHideFromContinueListening =
          $v.seriesHideFromContinueListening?.toBuilder();
      _bookmarks = $v.bookmarks?.toBuilder();
      _lastSeen = $v.lastSeen;
      _isActive = $v.isActive;
      _isLocked = $v.isLocked;
      _createdAt = $v.createdAt;
      _permissions = $v.permissions?.toBuilder();
      _librariesAccessible = $v.librariesAccessible?.toBuilder();
      _itemTagsSelected = $v.itemTagsSelected?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              id: id,
              username: username,
              type: type,
              token: token,
              mediaProgress: _mediaProgress?.build(),
              seriesHideFromContinueListening:
                  _seriesHideFromContinueListening?.build(),
              bookmarks: _bookmarks?.build(),
              lastSeen: lastSeen,
              isActive: isActive,
              isLocked: isLocked,
              createdAt: createdAt,
              permissions: _permissions?.build(),
              librariesAccessible: _librariesAccessible?.build(),
              itemTagsSelected: _itemTagsSelected?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaProgress';
        _mediaProgress?.build();
        _$failedField = 'seriesHideFromContinueListening';
        _seriesHideFromContinueListening?.build();
        _$failedField = 'bookmarks';
        _bookmarks?.build();

        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'librariesAccessible';
        _librariesAccessible?.build();
        _$failedField = 'itemTagsSelected';
        _itemTagsSelected?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
