// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
mixin _$Login {
  @JsonKey(name: "user")
  User get user => throw _privateConstructorUsedError;
  @JsonKey(name: "userDefaultLibraryId")
  String get userDefaultLibraryId => throw _privateConstructorUsedError;
  @JsonKey(name: "serverSettings")
  ServerSettings get serverSettings => throw _privateConstructorUsedError;
  @JsonKey(name: "Source")
  String get source => throw _privateConstructorUsedError;

  /// Serializes this Login to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call(
      {@JsonKey(name: "user") User user,
      @JsonKey(name: "userDefaultLibraryId") String userDefaultLibraryId,
      @JsonKey(name: "serverSettings") ServerSettings serverSettings,
      @JsonKey(name: "Source") String source});

  $UserCopyWith<$Res> get user;
  $ServerSettingsCopyWith<$Res> get serverSettings;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? userDefaultLibraryId = null,
    Object? serverSettings = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userDefaultLibraryId: null == userDefaultLibraryId
          ? _value.userDefaultLibraryId
          : userDefaultLibraryId // ignore: cast_nullable_to_non_nullable
              as String,
      serverSettings: null == serverSettings
          ? _value.serverSettings
          : serverSettings // ignore: cast_nullable_to_non_nullable
              as ServerSettings,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServerSettingsCopyWith<$Res> get serverSettings {
    return $ServerSettingsCopyWith<$Res>(_value.serverSettings, (value) {
      return _then(_value.copyWith(serverSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user") User user,
      @JsonKey(name: "userDefaultLibraryId") String userDefaultLibraryId,
      @JsonKey(name: "serverSettings") ServerSettings serverSettings,
      @JsonKey(name: "Source") String source});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $ServerSettingsCopyWith<$Res> get serverSettings;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? userDefaultLibraryId = null,
    Object? serverSettings = null,
    Object? source = null,
  }) {
    return _then(_$LoginImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      userDefaultLibraryId: null == userDefaultLibraryId
          ? _value.userDefaultLibraryId
          : userDefaultLibraryId // ignore: cast_nullable_to_non_nullable
              as String,
      serverSettings: null == serverSettings
          ? _value.serverSettings
          : serverSettings // ignore: cast_nullable_to_non_nullable
              as ServerSettings,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginImpl implements _Login {
  const _$LoginImpl(
      {@JsonKey(name: "user") required this.user,
      @JsonKey(name: "userDefaultLibraryId") required this.userDefaultLibraryId,
      @JsonKey(name: "serverSettings") required this.serverSettings,
      @JsonKey(name: "Source") required this.source});

  factory _$LoginImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginImplFromJson(json);

  @override
  @JsonKey(name: "user")
  final User user;
  @override
  @JsonKey(name: "userDefaultLibraryId")
  final String userDefaultLibraryId;
  @override
  @JsonKey(name: "serverSettings")
  final ServerSettings serverSettings;
  @override
  @JsonKey(name: "Source")
  final String source;

  @override
  String toString() {
    return 'Login(user: $user, userDefaultLibraryId: $userDefaultLibraryId, serverSettings: $serverSettings, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userDefaultLibraryId, userDefaultLibraryId) ||
                other.userDefaultLibraryId == userDefaultLibraryId) &&
            (identical(other.serverSettings, serverSettings) ||
                other.serverSettings == serverSettings) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, userDefaultLibraryId, serverSettings, source);

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginImplToJson(
      this,
    );
  }
}

abstract class _Login implements Login {
  const factory _Login(
      {@JsonKey(name: "user") required final User user,
      @JsonKey(name: "userDefaultLibraryId")
      required final String userDefaultLibraryId,
      @JsonKey(name: "serverSettings")
      required final ServerSettings serverSettings,
      @JsonKey(name: "Source") required final String source}) = _$LoginImpl;

  factory _Login.fromJson(Map<String, dynamic> json) = _$LoginImpl.fromJson;

  @override
  @JsonKey(name: "user")
  User get user;
  @override
  @JsonKey(name: "userDefaultLibraryId")
  String get userDefaultLibraryId;
  @override
  @JsonKey(name: "serverSettings")
  ServerSettings get serverSettings;
  @override
  @JsonKey(name: "Source")
  String get source;

  /// Create a copy of Login
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
