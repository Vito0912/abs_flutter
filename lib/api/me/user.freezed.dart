// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  set id(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  set username(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  dynamic get email => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  set email(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  set type(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  set token(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaProgress")
  List<MediaProgress>? get mediaProgress => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaProgress")
  set mediaProgress(List<MediaProgress>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "seriesHideFromContinueListening")
  List<String>? get seriesHideFromContinueListening =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "seriesHideFromContinueListening")
  set seriesHideFromContinueListening(List<String>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "bookmarks")
  List<Bookmark>? get bookmarks => throw _privateConstructorUsedError;
  @JsonKey(name: "bookmarks")
  set bookmarks(List<Bookmark>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  set isActive(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "isLocked")
  bool? get isLocked => throw _privateConstructorUsedError;
  @JsonKey(name: "isLocked")
  set isLocked(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "lastSeen")
  int? get lastSeen => throw _privateConstructorUsedError;
  @JsonKey(name: "lastSeen")
  set lastSeen(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  set createdAt(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "permissions")
  Permissions get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: "permissions")
  set permissions(Permissions value) => throw _privateConstructorUsedError;
  @JsonKey(name: "librariesAccessible")
  List<String>? get librariesAccessible => throw _privateConstructorUsedError;
  @JsonKey(name: "librariesAccessible")
  set librariesAccessible(List<String>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "itemTagsSelected")
  List<String>? get itemTagsSelected => throw _privateConstructorUsedError;
  @JsonKey(name: "itemTagsSelected")
  set itemTagsSelected(List<String>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "hasOpenIDLink")
  bool? get hasOpenIdLink => throw _privateConstructorUsedError;
  @JsonKey(name: "hasOpenIDLink")
  set hasOpenIdLink(bool? value) => throw _privateConstructorUsedError;
  Setting? get setting => throw _privateConstructorUsedError;
  set setting(Setting? value) => throw _privateConstructorUsedError;
  Server? get server => throw _privateConstructorUsedError;
  set server(Server? value) => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "mediaProgress") List<MediaProgress>? mediaProgress,
      @JsonKey(name: "seriesHideFromContinueListening")
      List<String>? seriesHideFromContinueListening,
      @JsonKey(name: "bookmarks") List<Bookmark>? bookmarks,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "isLocked") bool? isLocked,
      @JsonKey(name: "lastSeen") int? lastSeen,
      @JsonKey(name: "createdAt") int? createdAt,
      @JsonKey(name: "permissions") Permissions permissions,
      @JsonKey(name: "librariesAccessible") List<String>? librariesAccessible,
      @JsonKey(name: "itemTagsSelected") List<String>? itemTagsSelected,
      @JsonKey(name: "hasOpenIDLink") bool? hasOpenIdLink,
      Setting? setting,
      Server? server});

  $PermissionsCopyWith<$Res> get permissions;
  $SettingCopyWith<$Res>? get setting;
  $ServerCopyWith<$Res>? get server;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? type = null,
    Object? token = freezed,
    Object? mediaProgress = freezed,
    Object? seriesHideFromContinueListening = freezed,
    Object? bookmarks = freezed,
    Object? isActive = freezed,
    Object? isLocked = freezed,
    Object? lastSeen = freezed,
    Object? createdAt = freezed,
    Object? permissions = null,
    Object? librariesAccessible = freezed,
    Object? itemTagsSelected = freezed,
    Object? hasOpenIdLink = freezed,
    Object? setting = freezed,
    Object? server = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaProgress: freezed == mediaProgress
          ? _value.mediaProgress
          : mediaProgress // ignore: cast_nullable_to_non_nullable
              as List<MediaProgress>?,
      seriesHideFromContinueListening: freezed ==
              seriesHideFromContinueListening
          ? _value.seriesHideFromContinueListening
          : seriesHideFromContinueListening // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      librariesAccessible: freezed == librariesAccessible
          ? _value.librariesAccessible
          : librariesAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemTagsSelected: freezed == itemTagsSelected
          ? _value.itemTagsSelected
          : itemTagsSelected // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasOpenIdLink: freezed == hasOpenIdLink
          ? _value.hasOpenIdLink
          : hasOpenIdLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server?,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res> get permissions {
    return $PermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SettingCopyWith<$Res>? get setting {
    if (_value.setting == null) {
      return null;
    }

    return $SettingCopyWith<$Res>(_value.setting!, (value) {
      return _then(_value.copyWith(setting: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerCopyWith<$Res>? get server {
    if (_value.server == null) {
      return null;
    }

    return $ServerCopyWith<$Res>(_value.server!, (value) {
      return _then(_value.copyWith(server: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "email") dynamic email,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "token") String? token,
      @JsonKey(name: "mediaProgress") List<MediaProgress>? mediaProgress,
      @JsonKey(name: "seriesHideFromContinueListening")
      List<String>? seriesHideFromContinueListening,
      @JsonKey(name: "bookmarks") List<Bookmark>? bookmarks,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "isLocked") bool? isLocked,
      @JsonKey(name: "lastSeen") int? lastSeen,
      @JsonKey(name: "createdAt") int? createdAt,
      @JsonKey(name: "permissions") Permissions permissions,
      @JsonKey(name: "librariesAccessible") List<String>? librariesAccessible,
      @JsonKey(name: "itemTagsSelected") List<String>? itemTagsSelected,
      @JsonKey(name: "hasOpenIDLink") bool? hasOpenIdLink,
      Setting? setting,
      Server? server});

  @override
  $PermissionsCopyWith<$Res> get permissions;
  @override
  $SettingCopyWith<$Res>? get setting;
  @override
  $ServerCopyWith<$Res>? get server;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = freezed,
    Object? type = null,
    Object? token = freezed,
    Object? mediaProgress = freezed,
    Object? seriesHideFromContinueListening = freezed,
    Object? bookmarks = freezed,
    Object? isActive = freezed,
    Object? isLocked = freezed,
    Object? lastSeen = freezed,
    Object? createdAt = freezed,
    Object? permissions = null,
    Object? librariesAccessible = freezed,
    Object? itemTagsSelected = freezed,
    Object? hasOpenIdLink = freezed,
    Object? setting = freezed,
    Object? server = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaProgress: freezed == mediaProgress
          ? _value.mediaProgress
          : mediaProgress // ignore: cast_nullable_to_non_nullable
              as List<MediaProgress>?,
      seriesHideFromContinueListening: freezed ==
              seriesHideFromContinueListening
          ? _value.seriesHideFromContinueListening
          : seriesHideFromContinueListening // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bookmarks: freezed == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as List<Bookmark>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      librariesAccessible: freezed == librariesAccessible
          ? _value.librariesAccessible
          : librariesAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemTagsSelected: freezed == itemTagsSelected
          ? _value.itemTagsSelected
          : itemTagsSelected // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      hasOpenIdLink: freezed == hasOpenIdLink
          ? _value.hasOpenIdLink
          : hasOpenIdLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "token") required this.token,
      @JsonKey(name: "mediaProgress") this.mediaProgress,
      @JsonKey(name: "seriesHideFromContinueListening")
      this.seriesHideFromContinueListening,
      @JsonKey(name: "bookmarks") this.bookmarks,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "isLocked") this.isLocked,
      @JsonKey(name: "lastSeen") this.lastSeen,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "permissions") required this.permissions,
      @JsonKey(name: "librariesAccessible") this.librariesAccessible,
      @JsonKey(name: "itemTagsSelected") this.itemTagsSelected,
      @JsonKey(name: "hasOpenIDLink") this.hasOpenIdLink,
      this.setting,
      this.server});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: "id")
  String id;
  @override
  @JsonKey(name: "username")
  String username;
  @override
  @JsonKey(name: "email")
  dynamic email;
  @override
  @JsonKey(name: "type")
  String type;
  @override
  @JsonKey(name: "token")
  String? token;
  @override
  @JsonKey(name: "mediaProgress")
  List<MediaProgress>? mediaProgress;
  @override
  @JsonKey(name: "seriesHideFromContinueListening")
  List<String>? seriesHideFromContinueListening;
  @override
  @JsonKey(name: "bookmarks")
  List<Bookmark>? bookmarks;
  @override
  @JsonKey(name: "isActive")
  bool? isActive;
  @override
  @JsonKey(name: "isLocked")
  bool? isLocked;
  @override
  @JsonKey(name: "lastSeen")
  int? lastSeen;
  @override
  @JsonKey(name: "createdAt")
  int? createdAt;
  @override
  @JsonKey(name: "permissions")
  Permissions permissions;
  @override
  @JsonKey(name: "librariesAccessible")
  List<String>? librariesAccessible;
  @override
  @JsonKey(name: "itemTagsSelected")
  List<String>? itemTagsSelected;
  @override
  @JsonKey(name: "hasOpenIDLink")
  bool? hasOpenIdLink;
  @override
  Setting? setting;
  @override
  Server? server;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, type: $type, token: $token, mediaProgress: $mediaProgress, seriesHideFromContinueListening: $seriesHideFromContinueListening, bookmarks: $bookmarks, isActive: $isActive, isLocked: $isLocked, lastSeen: $lastSeen, createdAt: $createdAt, permissions: $permissions, librariesAccessible: $librariesAccessible, itemTagsSelected: $itemTagsSelected, hasOpenIdLink: $hasOpenIdLink, setting: $setting, server: $server)';
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: "id") required String id,
      @JsonKey(name: "username") required String username,
      @JsonKey(name: "email") required dynamic email,
      @JsonKey(name: "type") required String type,
      @JsonKey(name: "token") required String? token,
      @JsonKey(name: "mediaProgress") List<MediaProgress>? mediaProgress,
      @JsonKey(name: "seriesHideFromContinueListening")
      List<String>? seriesHideFromContinueListening,
      @JsonKey(name: "bookmarks") List<Bookmark>? bookmarks,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "isLocked") bool? isLocked,
      @JsonKey(name: "lastSeen") int? lastSeen,
      @JsonKey(name: "createdAt") int? createdAt,
      @JsonKey(name: "permissions") required Permissions permissions,
      @JsonKey(name: "librariesAccessible") List<String>? librariesAccessible,
      @JsonKey(name: "itemTagsSelected") List<String>? itemTagsSelected,
      @JsonKey(name: "hasOpenIDLink") bool? hasOpenIdLink,
      Setting? setting,
      Server? server}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @JsonKey(name: "id")
  set id(String value);
  @override
  @JsonKey(name: "username")
  String get username;
  @JsonKey(name: "username")
  set username(String value);
  @override
  @JsonKey(name: "email")
  dynamic get email;
  @JsonKey(name: "email")
  set email(dynamic value);
  @override
  @JsonKey(name: "type")
  String get type;
  @JsonKey(name: "type")
  set type(String value);
  @override
  @JsonKey(name: "token")
  String? get token;
  @JsonKey(name: "token")
  set token(String? value);
  @override
  @JsonKey(name: "mediaProgress")
  List<MediaProgress>? get mediaProgress;
  @JsonKey(name: "mediaProgress")
  set mediaProgress(List<MediaProgress>? value);
  @override
  @JsonKey(name: "seriesHideFromContinueListening")
  List<String>? get seriesHideFromContinueListening;
  @JsonKey(name: "seriesHideFromContinueListening")
  set seriesHideFromContinueListening(List<String>? value);
  @override
  @JsonKey(name: "bookmarks")
  List<Bookmark>? get bookmarks;
  @JsonKey(name: "bookmarks")
  set bookmarks(List<Bookmark>? value);
  @override
  @JsonKey(name: "isActive")
  bool? get isActive;
  @JsonKey(name: "isActive")
  set isActive(bool? value);
  @override
  @JsonKey(name: "isLocked")
  bool? get isLocked;
  @JsonKey(name: "isLocked")
  set isLocked(bool? value);
  @override
  @JsonKey(name: "lastSeen")
  int? get lastSeen;
  @JsonKey(name: "lastSeen")
  set lastSeen(int? value);
  @override
  @JsonKey(name: "createdAt")
  int? get createdAt;
  @JsonKey(name: "createdAt")
  set createdAt(int? value);
  @override
  @JsonKey(name: "permissions")
  Permissions get permissions;
  @JsonKey(name: "permissions")
  set permissions(Permissions value);
  @override
  @JsonKey(name: "librariesAccessible")
  List<String>? get librariesAccessible;
  @JsonKey(name: "librariesAccessible")
  set librariesAccessible(List<String>? value);
  @override
  @JsonKey(name: "itemTagsSelected")
  List<String>? get itemTagsSelected;
  @JsonKey(name: "itemTagsSelected")
  set itemTagsSelected(List<String>? value);
  @override
  @JsonKey(name: "hasOpenIDLink")
  bool? get hasOpenIdLink;
  @JsonKey(name: "hasOpenIDLink")
  set hasOpenIdLink(bool? value);
  @override
  Setting? get setting;
  set setting(Setting? value);
  @override
  Server? get server;
  set server(Server? value);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
