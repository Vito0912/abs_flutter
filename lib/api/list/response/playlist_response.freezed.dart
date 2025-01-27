// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistResponse _$PlaylistResponseFromJson(Map<String, dynamic> json) {
  return _PlaylistResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaylistResponse {
  @JsonKey(name: "playlists")
  List<Playlist> get playlists => throw _privateConstructorUsedError;

  /// Serializes this PlaylistResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistResponseCopyWith<PlaylistResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistResponseCopyWith<$Res> {
  factory $PlaylistResponseCopyWith(
          PlaylistResponse value, $Res Function(PlaylistResponse) then) =
      _$PlaylistResponseCopyWithImpl<$Res, PlaylistResponse>;
  @useResult
  $Res call({@JsonKey(name: "playlists") List<Playlist> playlists});
}

/// @nodoc
class _$PlaylistResponseCopyWithImpl<$Res, $Val extends PlaylistResponse>
    implements $PlaylistResponseCopyWith<$Res> {
  _$PlaylistResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistResponseImplCopyWith<$Res>
    implements $PlaylistResponseCopyWith<$Res> {
  factory _$$PlaylistResponseImplCopyWith(_$PlaylistResponseImpl value,
          $Res Function(_$PlaylistResponseImpl) then) =
      __$$PlaylistResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "playlists") List<Playlist> playlists});
}

/// @nodoc
class __$$PlaylistResponseImplCopyWithImpl<$Res>
    extends _$PlaylistResponseCopyWithImpl<$Res, _$PlaylistResponseImpl>
    implements _$$PlaylistResponseImplCopyWith<$Res> {
  __$$PlaylistResponseImplCopyWithImpl(_$PlaylistResponseImpl _value,
      $Res Function(_$PlaylistResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlists = null,
  }) {
    return _then(_$PlaylistResponseImpl(
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<Playlist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistResponseImpl implements _PlaylistResponse {
  const _$PlaylistResponseImpl(
      {@JsonKey(name: "playlists") required final List<Playlist> playlists})
      : _playlists = playlists;

  factory _$PlaylistResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistResponseImplFromJson(json);

  final List<Playlist> _playlists;
  @override
  @JsonKey(name: "playlists")
  List<Playlist> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  @override
  String toString() {
    return 'PlaylistResponse(playlists: $playlists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playlists));

  /// Create a copy of PlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistResponseImplCopyWith<_$PlaylistResponseImpl> get copyWith =>
      __$$PlaylistResponseImplCopyWithImpl<_$PlaylistResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaylistResponse implements PlaylistResponse {
  const factory _PlaylistResponse(
      {@JsonKey(name: "playlists")
      required final List<Playlist> playlists}) = _$PlaylistResponseImpl;

  factory _PlaylistResponse.fromJson(Map<String, dynamic> json) =
      _$PlaylistResponseImpl.fromJson;

  @override
  @JsonKey(name: "playlists")
  List<Playlist> get playlists;

  /// Create a copy of PlaylistResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistResponseImplCopyWith<_$PlaylistResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
