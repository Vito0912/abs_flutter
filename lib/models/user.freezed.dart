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
  String? get id => throw _privateConstructorUsedError;
  set id(String? value) => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  set username(String? value) => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  set type(String? value) => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  set token(String? value) => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  set isActive(bool? value) => throw _privateConstructorUsedError;
  bool? get isLocked => throw _privateConstructorUsedError;
  set isLocked(bool? value) => throw _privateConstructorUsedError;
  int? get lastSeen => throw _privateConstructorUsedError;
  set lastSeen(int? value) => throw _privateConstructorUsedError;
  int? get createdAt => throw _privateConstructorUsedError;
  set createdAt(int? value) => throw _privateConstructorUsedError;
  Server? get server => throw _privateConstructorUsedError;
  set server(Server? value) => throw _privateConstructorUsedError;
  Permissions? get permissions => throw _privateConstructorUsedError;
  set permissions(Permissions? value) => throw _privateConstructorUsedError;
  Setting? get setting => throw _privateConstructorUsedError;
  set setting(Setting? value) => throw _privateConstructorUsedError;
  List<String>? get librariesAccessible => throw _privateConstructorUsedError;
  set librariesAccessible(List<String>? value) =>
      throw _privateConstructorUsedError;
  List<String>? get itemTagsAccessible => throw _privateConstructorUsedError;
  set itemTagsAccessible(List<String>? value) =>
      throw _privateConstructorUsedError;

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
      {String? id,
      String? username,
      String? type,
      String? token,
      bool? isActive,
      bool? isLocked,
      int? lastSeen,
      int? createdAt,
      Server? server,
      Permissions? permissions,
      Setting? setting,
      List<String>? librariesAccessible,
      List<String>? itemTagsAccessible});

  $ServerCopyWith<$Res>? get server;
  $PermissionsCopyWith<$Res>? get permissions;
  $SettingCopyWith<$Res>? get setting;
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
    Object? id = freezed,
    Object? username = freezed,
    Object? type = freezed,
    Object? token = freezed,
    Object? isActive = freezed,
    Object? isLocked = freezed,
    Object? lastSeen = freezed,
    Object? createdAt = freezed,
    Object? server = freezed,
    Object? permissions = freezed,
    Object? setting = freezed,
    Object? librariesAccessible = freezed,
    Object? itemTagsAccessible = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      librariesAccessible: freezed == librariesAccessible
          ? _value.librariesAccessible
          : librariesAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemTagsAccessible: freezed == itemTagsAccessible
          ? _value.itemTagsAccessible
          : itemTagsAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
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

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res>? get permissions {
    if (_value.permissions == null) {
      return null;
    }

    return $PermissionsCopyWith<$Res>(_value.permissions!, (value) {
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
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? username,
      String? type,
      String? token,
      bool? isActive,
      bool? isLocked,
      int? lastSeen,
      int? createdAt,
      Server? server,
      Permissions? permissions,
      Setting? setting,
      List<String>? librariesAccessible,
      List<String>? itemTagsAccessible});

  @override
  $ServerCopyWith<$Res>? get server;
  @override
  $PermissionsCopyWith<$Res>? get permissions;
  @override
  $SettingCopyWith<$Res>? get setting;
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
    Object? id = freezed,
    Object? username = freezed,
    Object? type = freezed,
    Object? token = freezed,
    Object? isActive = freezed,
    Object? isLocked = freezed,
    Object? lastSeen = freezed,
    Object? createdAt = freezed,
    Object? server = freezed,
    Object? permissions = freezed,
    Object? setting = freezed,
    Object? librariesAccessible = freezed,
    Object? itemTagsAccessible = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
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
      server: freezed == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as Server?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions?,
      setting: freezed == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as Setting?,
      librariesAccessible: freezed == librariesAccessible
          ? _value.librariesAccessible
          : librariesAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      itemTagsAccessible: freezed == itemTagsAccessible
          ? _value.itemTagsAccessible
          : itemTagsAccessible // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  _$UserImpl(
      {this.id,
      this.username,
      this.type,
      this.token,
      this.isActive,
      this.isLocked,
      this.lastSeen,
      this.createdAt,
      this.server,
      this.permissions,
      this.setting,
      this.librariesAccessible,
      this.itemTagsAccessible});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  String? id;
  @override
  String? username;
  @override
  String? type;
  @override
  String? token;
  @override
  bool? isActive;
  @override
  bool? isLocked;
  @override
  int? lastSeen;
  @override
  int? createdAt;
  @override
  Server? server;
  @override
  Permissions? permissions;
  @override
  Setting? setting;
  @override
  List<String>? librariesAccessible;
  @override
  List<String>? itemTagsAccessible;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, username: $username, type: $type, token: $token, isActive: $isActive, isLocked: $isLocked, lastSeen: $lastSeen, createdAt: $createdAt, server: $server, permissions: $permissions, setting: $setting, librariesAccessible: $librariesAccessible, itemTagsAccessible: $itemTagsAccessible)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('isLocked', isLocked))
      ..add(DiagnosticsProperty('lastSeen', lastSeen))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('server', server))
      ..add(DiagnosticsProperty('permissions', permissions))
      ..add(DiagnosticsProperty('setting', setting))
      ..add(DiagnosticsProperty('librariesAccessible', librariesAccessible))
      ..add(DiagnosticsProperty('itemTagsAccessible', itemTagsAccessible));
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
      {String? id,
      String? username,
      String? type,
      String? token,
      bool? isActive,
      bool? isLocked,
      int? lastSeen,
      int? createdAt,
      Server? server,
      Permissions? permissions,
      Setting? setting,
      List<String>? librariesAccessible,
      List<String>? itemTagsAccessible}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  set id(String? value);
  @override
  String? get username;
  set username(String? value);
  @override
  String? get type;
  set type(String? value);
  @override
  String? get token;
  set token(String? value);
  @override
  bool? get isActive;
  set isActive(bool? value);
  @override
  bool? get isLocked;
  set isLocked(bool? value);
  @override
  int? get lastSeen;
  set lastSeen(int? value);
  @override
  int? get createdAt;
  set createdAt(int? value);
  @override
  Server? get server;
  set server(Server? value);
  @override
  Permissions? get permissions;
  set permissions(Permissions? value);
  @override
  Setting? get setting;
  set setting(Setting? value);
  @override
  List<String>? get librariesAccessible;
  set librariesAccessible(List<String>? value);
  @override
  List<String>? get itemTagsAccessible;
  set itemTagsAccessible(List<String>? value);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
