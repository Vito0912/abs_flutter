// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Playlist _$PlaylistFromJson(Map<String, dynamic> json) {
  return _Playlist.fromJson(json);
}

/// @nodoc
mixin _$Playlist {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryId")
  String get libraryId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPath")
  String? get coverPath => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<PlaylistItem>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "lastUpdate")
  int get lastUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Playlist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistCopyWith<Playlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistCopyWith<$Res> {
  factory $PlaylistCopyWith(Playlist value, $Res Function(Playlist) then) =
      _$PlaylistCopyWithImpl<$Res, Playlist>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryId") String libraryId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "items") List<PlaylistItem>? items,
      @JsonKey(name: "lastUpdate") int lastUpdate,
      @JsonKey(name: "createdAt") int createdAt});
}

/// @nodoc
class _$PlaylistCopyWithImpl<$Res, $Val extends Playlist>
    implements $PlaylistCopyWith<$Res> {
  _$PlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryId = null,
    Object? userId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? coverPath = freezed,
    Object? items = freezed,
    Object? lastUpdate = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistItem>?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaylistImplCopyWith<$Res>
    implements $PlaylistCopyWith<$Res> {
  factory _$$PlaylistImplCopyWith(
          _$PlaylistImpl value, $Res Function(_$PlaylistImpl) then) =
      __$$PlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "libraryId") String libraryId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "coverPath") String? coverPath,
      @JsonKey(name: "items") List<PlaylistItem>? items,
      @JsonKey(name: "lastUpdate") int lastUpdate,
      @JsonKey(name: "createdAt") int createdAt});
}

/// @nodoc
class __$$PlaylistImplCopyWithImpl<$Res>
    extends _$PlaylistCopyWithImpl<$Res, _$PlaylistImpl>
    implements _$$PlaylistImplCopyWith<$Res> {
  __$$PlaylistImplCopyWithImpl(
      _$PlaylistImpl _value, $Res Function(_$PlaylistImpl) _then)
      : super(_value, _then);

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? libraryId = null,
    Object? userId = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? coverPath = freezed,
    Object? items = freezed,
    Object? lastUpdate = null,
    Object? createdAt = null,
  }) {
    return _then(_$PlaylistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPath: freezed == coverPath
          ? _value.coverPath
          : coverPath // ignore: cast_nullable_to_non_nullable
              as String?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<PlaylistItem>?,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistImpl implements _Playlist {
  const _$PlaylistImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "libraryId") required this.libraryId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "coverPath") this.coverPath,
      @JsonKey(name: "items") final List<PlaylistItem>? items,
      @JsonKey(name: "lastUpdate") required this.lastUpdate,
      @JsonKey(name: "createdAt") required this.createdAt})
      : _items = items;

  factory _$PlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "libraryId")
  final String libraryId;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "coverPath")
  final String? coverPath;
  final List<PlaylistItem>? _items;
  @override
  @JsonKey(name: "items")
  List<PlaylistItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "lastUpdate")
  final int lastUpdate;
  @override
  @JsonKey(name: "createdAt")
  final int createdAt;

  @override
  String toString() {
    return 'Playlist(id: $id, libraryId: $libraryId, userId: $userId, name: $name, description: $description, coverPath: $coverPath, items: $items, lastUpdate: $lastUpdate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverPath, coverPath) ||
                other.coverPath == coverPath) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      libraryId,
      userId,
      name,
      description,
      coverPath,
      const DeepCollectionEquality().hash(_items),
      lastUpdate,
      createdAt);

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      __$$PlaylistImplCopyWithImpl<_$PlaylistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistImplToJson(
      this,
    );
  }
}

abstract class _Playlist implements Playlist {
  const factory _Playlist(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "libraryId") required final String libraryId,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "coverPath") final String? coverPath,
          @JsonKey(name: "items") final List<PlaylistItem>? items,
          @JsonKey(name: "lastUpdate") required final int lastUpdate,
          @JsonKey(name: "createdAt") required final int createdAt}) =
      _$PlaylistImpl;

  factory _Playlist.fromJson(Map<String, dynamic> json) =
      _$PlaylistImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "libraryId")
  String get libraryId;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "coverPath")
  String? get coverPath;
  @override
  @JsonKey(name: "items")
  List<PlaylistItem>? get items;
  @override
  @JsonKey(name: "lastUpdate")
  int get lastUpdate;
  @override
  @JsonKey(name: "createdAt")
  int get createdAt;

  /// Create a copy of Playlist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistImplCopyWith<_$PlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
