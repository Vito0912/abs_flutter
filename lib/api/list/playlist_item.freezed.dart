// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistItem _$PlaylistItemFromJson(Map<String, dynamic> json) {
  return _PlaylistItem.fromJson(json);
}

/// @nodoc
mixin _$PlaylistItem {
  @JsonKey(name: "libraryItemId")
  String get itemId => throw _privateConstructorUsedError;
  @JsonKey(name: "episodeId")
  String? get episodeId => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  Episode? get episode => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem => throw _privateConstructorUsedError;

  /// Serializes this PlaylistItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaylistItemCopyWith<PlaylistItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistItemCopyWith<$Res> {
  factory $PlaylistItemCopyWith(
          PlaylistItem value, $Res Function(PlaylistItem) then) =
      _$PlaylistItemCopyWithImpl<$Res, PlaylistItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItemId") String itemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "episode") Episode? episode,
      @JsonKey(name: "libraryItem") LibraryItem? libraryItem});

  $EpisodeCopyWith<$Res>? get episode;
  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class _$PlaylistItemCopyWithImpl<$Res, $Val extends PlaylistItem>
    implements $PlaylistItemCopyWith<$Res> {
  _$PlaylistItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? episodeId = freezed,
    Object? episode = freezed,
    Object? libraryItem = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as Episode?,
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
    ) as $Val);
  }

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EpisodeCopyWith<$Res>? get episode {
    if (_value.episode == null) {
      return null;
    }

    return $EpisodeCopyWith<$Res>(_value.episode!, (value) {
      return _then(_value.copyWith(episode: value) as $Val);
    });
  }

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryItemCopyWith<$Res>? get libraryItem {
    if (_value.libraryItem == null) {
      return null;
    }

    return $LibraryItemCopyWith<$Res>(_value.libraryItem!, (value) {
      return _then(_value.copyWith(libraryItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistItemImplCopyWith<$Res>
    implements $PlaylistItemCopyWith<$Res> {
  factory _$$PlaylistItemImplCopyWith(
          _$PlaylistItemImpl value, $Res Function(_$PlaylistItemImpl) then) =
      __$$PlaylistItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItemId") String itemId,
      @JsonKey(name: "episodeId") String? episodeId,
      @JsonKey(name: "episode") Episode? episode,
      @JsonKey(name: "libraryItem") LibraryItem? libraryItem});

  @override
  $EpisodeCopyWith<$Res>? get episode;
  @override
  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class __$$PlaylistItemImplCopyWithImpl<$Res>
    extends _$PlaylistItemCopyWithImpl<$Res, _$PlaylistItemImpl>
    implements _$$PlaylistItemImplCopyWith<$Res> {
  __$$PlaylistItemImplCopyWithImpl(
      _$PlaylistItemImpl _value, $Res Function(_$PlaylistItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? episodeId = freezed,
    Object? episode = freezed,
    Object? libraryItem = freezed,
  }) {
    return _then(_$PlaylistItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as Episode?,
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistItemImpl implements _PlaylistItem {
  const _$PlaylistItemImpl(
      {@JsonKey(name: "libraryItemId") required this.itemId,
      @JsonKey(name: "episodeId") this.episodeId,
      @JsonKey(name: "episode") this.episode,
      @JsonKey(name: "libraryItem") this.libraryItem});

  factory _$PlaylistItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistItemImplFromJson(json);

  @override
  @JsonKey(name: "libraryItemId")
  final String itemId;
  @override
  @JsonKey(name: "episodeId")
  final String? episodeId;
  @override
  @JsonKey(name: "episode")
  final Episode? episode;
  @override
  @JsonKey(name: "libraryItem")
  final LibraryItem? libraryItem;

  @override
  String toString() {
    return 'PlaylistItem(itemId: $itemId, episodeId: $episodeId, episode: $episode, libraryItem: $libraryItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistItemImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.episodeId, episodeId) ||
                other.episodeId == episodeId) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.libraryItem, libraryItem) ||
                other.libraryItem == libraryItem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemId, episodeId, episode, libraryItem);

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistItemImplCopyWith<_$PlaylistItemImpl> get copyWith =>
      __$$PlaylistItemImplCopyWithImpl<_$PlaylistItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistItemImplToJson(
      this,
    );
  }
}

abstract class _PlaylistItem implements PlaylistItem {
  const factory _PlaylistItem(
          {@JsonKey(name: "libraryItemId") required final String itemId,
          @JsonKey(name: "episodeId") final String? episodeId,
          @JsonKey(name: "episode") final Episode? episode,
          @JsonKey(name: "libraryItem") final LibraryItem? libraryItem}) =
      _$PlaylistItemImpl;

  factory _PlaylistItem.fromJson(Map<String, dynamic> json) =
      _$PlaylistItemImpl.fromJson;

  @override
  @JsonKey(name: "libraryItemId")
  String get itemId;
  @override
  @JsonKey(name: "episodeId")
  String? get episodeId;
  @override
  @JsonKey(name: "episode")
  Episode? get episode;
  @override
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem;

  /// Create a copy of PlaylistItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaylistItemImplCopyWith<_$PlaylistItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
