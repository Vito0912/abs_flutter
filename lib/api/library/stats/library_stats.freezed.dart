// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryStats _$LibraryStatsFromJson(Map<String, dynamic> json) {
  return _LibraryStats.fromJson(json);
}

/// @nodoc
mixin _$LibraryStats {
  @JsonKey(name: "totalItems")
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "totalAuthors")
  int? get totalAuthors => throw _privateConstructorUsedError;
  @JsonKey(name: "totalGenres")
  int? get totalGenres => throw _privateConstructorUsedError;
  @JsonKey(name: "totalDuration")
  double? get totalDuration => throw _privateConstructorUsedError;
  @JsonKey(name: "longestItems")
  List<LibraryItemDurationStats>? get longestItems =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "numAudioTrack")
  int? get numAudioTrack => throw _privateConstructorUsedError;
  @JsonKey(name: "totalSize")
  int? get totalSize => throw _privateConstructorUsedError;
  @JsonKey(name: "largestItems")
  List<LibraryItemSizeStats>? get largestItems =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "authorsWithCount")
  List<AuthorStats>? get authorsWithCount => throw _privateConstructorUsedError;
  @JsonKey(name: "genresWithCount")
  List<GenreStats>? get genresWithCount => throw _privateConstructorUsedError;

  /// Serializes this LibraryStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryStatsCopyWith<LibraryStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStatsCopyWith<$Res> {
  factory $LibraryStatsCopyWith(
          LibraryStats value, $Res Function(LibraryStats) then) =
      _$LibraryStatsCopyWithImpl<$Res, LibraryStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalItems") int? totalItems,
      @JsonKey(name: "totalAuthors") int? totalAuthors,
      @JsonKey(name: "totalGenres") int? totalGenres,
      @JsonKey(name: "totalDuration") double? totalDuration,
      @JsonKey(name: "longestItems")
      List<LibraryItemDurationStats>? longestItems,
      @JsonKey(name: "numAudioTrack") int? numAudioTrack,
      @JsonKey(name: "totalSize") int? totalSize,
      @JsonKey(name: "largestItems") List<LibraryItemSizeStats>? largestItems,
      @JsonKey(name: "authorsWithCount") List<AuthorStats>? authorsWithCount,
      @JsonKey(name: "genresWithCount") List<GenreStats>? genresWithCount});
}

/// @nodoc
class _$LibraryStatsCopyWithImpl<$Res, $Val extends LibraryStats>
    implements $LibraryStatsCopyWith<$Res> {
  _$LibraryStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalAuthors = freezed,
    Object? totalGenres = freezed,
    Object? totalDuration = freezed,
    Object? longestItems = freezed,
    Object? numAudioTrack = freezed,
    Object? totalSize = freezed,
    Object? largestItems = freezed,
    Object? authorsWithCount = freezed,
    Object? genresWithCount = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAuthors: freezed == totalAuthors
          ? _value.totalAuthors
          : totalAuthors // ignore: cast_nullable_to_non_nullable
              as int?,
      totalGenres: freezed == totalGenres
          ? _value.totalGenres
          : totalGenres // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      longestItems: freezed == longestItems
          ? _value.longestItems
          : longestItems // ignore: cast_nullable_to_non_nullable
              as List<LibraryItemDurationStats>?,
      numAudioTrack: freezed == numAudioTrack
          ? _value.numAudioTrack
          : numAudioTrack // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      largestItems: freezed == largestItems
          ? _value.largestItems
          : largestItems // ignore: cast_nullable_to_non_nullable
              as List<LibraryItemSizeStats>?,
      authorsWithCount: freezed == authorsWithCount
          ? _value.authorsWithCount
          : authorsWithCount // ignore: cast_nullable_to_non_nullable
              as List<AuthorStats>?,
      genresWithCount: freezed == genresWithCount
          ? _value.genresWithCount
          : genresWithCount // ignore: cast_nullable_to_non_nullable
              as List<GenreStats>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryStatsImplCopyWith<$Res>
    implements $LibraryStatsCopyWith<$Res> {
  factory _$$LibraryStatsImplCopyWith(
          _$LibraryStatsImpl value, $Res Function(_$LibraryStatsImpl) then) =
      __$$LibraryStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalItems") int? totalItems,
      @JsonKey(name: "totalAuthors") int? totalAuthors,
      @JsonKey(name: "totalGenres") int? totalGenres,
      @JsonKey(name: "totalDuration") double? totalDuration,
      @JsonKey(name: "longestItems")
      List<LibraryItemDurationStats>? longestItems,
      @JsonKey(name: "numAudioTrack") int? numAudioTrack,
      @JsonKey(name: "totalSize") int? totalSize,
      @JsonKey(name: "largestItems") List<LibraryItemSizeStats>? largestItems,
      @JsonKey(name: "authorsWithCount") List<AuthorStats>? authorsWithCount,
      @JsonKey(name: "genresWithCount") List<GenreStats>? genresWithCount});
}

/// @nodoc
class __$$LibraryStatsImplCopyWithImpl<$Res>
    extends _$LibraryStatsCopyWithImpl<$Res, _$LibraryStatsImpl>
    implements _$$LibraryStatsImplCopyWith<$Res> {
  __$$LibraryStatsImplCopyWithImpl(
      _$LibraryStatsImpl _value, $Res Function(_$LibraryStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? totalAuthors = freezed,
    Object? totalGenres = freezed,
    Object? totalDuration = freezed,
    Object? longestItems = freezed,
    Object? numAudioTrack = freezed,
    Object? totalSize = freezed,
    Object? largestItems = freezed,
    Object? authorsWithCount = freezed,
    Object? genresWithCount = freezed,
  }) {
    return _then(_$LibraryStatsImpl(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAuthors: freezed == totalAuthors
          ? _value.totalAuthors
          : totalAuthors // ignore: cast_nullable_to_non_nullable
              as int?,
      totalGenres: freezed == totalGenres
          ? _value.totalGenres
          : totalGenres // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      longestItems: freezed == longestItems
          ? _value._longestItems
          : longestItems // ignore: cast_nullable_to_non_nullable
              as List<LibraryItemDurationStats>?,
      numAudioTrack: freezed == numAudioTrack
          ? _value.numAudioTrack
          : numAudioTrack // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSize: freezed == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int?,
      largestItems: freezed == largestItems
          ? _value._largestItems
          : largestItems // ignore: cast_nullable_to_non_nullable
              as List<LibraryItemSizeStats>?,
      authorsWithCount: freezed == authorsWithCount
          ? _value._authorsWithCount
          : authorsWithCount // ignore: cast_nullable_to_non_nullable
              as List<AuthorStats>?,
      genresWithCount: freezed == genresWithCount
          ? _value._genresWithCount
          : genresWithCount // ignore: cast_nullable_to_non_nullable
              as List<GenreStats>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryStatsImpl implements _LibraryStats {
  const _$LibraryStatsImpl(
      {@JsonKey(name: "totalItems") this.totalItems,
      @JsonKey(name: "totalAuthors") this.totalAuthors,
      @JsonKey(name: "totalGenres") this.totalGenres,
      @JsonKey(name: "totalDuration") this.totalDuration,
      @JsonKey(name: "longestItems")
      final List<LibraryItemDurationStats>? longestItems,
      @JsonKey(name: "numAudioTrack") this.numAudioTrack,
      @JsonKey(name: "totalSize") this.totalSize,
      @JsonKey(name: "largestItems")
      final List<LibraryItemSizeStats>? largestItems,
      @JsonKey(name: "authorsWithCount")
      final List<AuthorStats>? authorsWithCount,
      @JsonKey(name: "genresWithCount")
      final List<GenreStats>? genresWithCount})
      : _longestItems = longestItems,
        _largestItems = largestItems,
        _authorsWithCount = authorsWithCount,
        _genresWithCount = genresWithCount;

  factory _$LibraryStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryStatsImplFromJson(json);

  @override
  @JsonKey(name: "totalItems")
  final int? totalItems;
  @override
  @JsonKey(name: "totalAuthors")
  final int? totalAuthors;
  @override
  @JsonKey(name: "totalGenres")
  final int? totalGenres;
  @override
  @JsonKey(name: "totalDuration")
  final double? totalDuration;
  final List<LibraryItemDurationStats>? _longestItems;
  @override
  @JsonKey(name: "longestItems")
  List<LibraryItemDurationStats>? get longestItems {
    final value = _longestItems;
    if (value == null) return null;
    if (_longestItems is EqualUnmodifiableListView) return _longestItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "numAudioTrack")
  final int? numAudioTrack;
  @override
  @JsonKey(name: "totalSize")
  final int? totalSize;
  final List<LibraryItemSizeStats>? _largestItems;
  @override
  @JsonKey(name: "largestItems")
  List<LibraryItemSizeStats>? get largestItems {
    final value = _largestItems;
    if (value == null) return null;
    if (_largestItems is EqualUnmodifiableListView) return _largestItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AuthorStats>? _authorsWithCount;
  @override
  @JsonKey(name: "authorsWithCount")
  List<AuthorStats>? get authorsWithCount {
    final value = _authorsWithCount;
    if (value == null) return null;
    if (_authorsWithCount is EqualUnmodifiableListView)
      return _authorsWithCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GenreStats>? _genresWithCount;
  @override
  @JsonKey(name: "genresWithCount")
  List<GenreStats>? get genresWithCount {
    final value = _genresWithCount;
    if (value == null) return null;
    if (_genresWithCount is EqualUnmodifiableListView) return _genresWithCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LibraryStats(totalItems: $totalItems, totalAuthors: $totalAuthors, totalGenres: $totalGenres, totalDuration: $totalDuration, longestItems: $longestItems, numAudioTrack: $numAudioTrack, totalSize: $totalSize, largestItems: $largestItems, authorsWithCount: $authorsWithCount, genresWithCount: $genresWithCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryStatsImpl &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalAuthors, totalAuthors) ||
                other.totalAuthors == totalAuthors) &&
            (identical(other.totalGenres, totalGenres) ||
                other.totalGenres == totalGenres) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            const DeepCollectionEquality()
                .equals(other._longestItems, _longestItems) &&
            (identical(other.numAudioTrack, numAudioTrack) ||
                other.numAudioTrack == numAudioTrack) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            const DeepCollectionEquality()
                .equals(other._largestItems, _largestItems) &&
            const DeepCollectionEquality()
                .equals(other._authorsWithCount, _authorsWithCount) &&
            const DeepCollectionEquality()
                .equals(other._genresWithCount, _genresWithCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItems,
      totalAuthors,
      totalGenres,
      totalDuration,
      const DeepCollectionEquality().hash(_longestItems),
      numAudioTrack,
      totalSize,
      const DeepCollectionEquality().hash(_largestItems),
      const DeepCollectionEquality().hash(_authorsWithCount),
      const DeepCollectionEquality().hash(_genresWithCount));

  /// Create a copy of LibraryStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryStatsImplCopyWith<_$LibraryStatsImpl> get copyWith =>
      __$$LibraryStatsImplCopyWithImpl<_$LibraryStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryStatsImplToJson(
      this,
    );
  }
}

abstract class _LibraryStats implements LibraryStats {
  const factory _LibraryStats(
      {@JsonKey(name: "totalItems") final int? totalItems,
      @JsonKey(name: "totalAuthors") final int? totalAuthors,
      @JsonKey(name: "totalGenres") final int? totalGenres,
      @JsonKey(name: "totalDuration") final double? totalDuration,
      @JsonKey(name: "longestItems")
      final List<LibraryItemDurationStats>? longestItems,
      @JsonKey(name: "numAudioTrack") final int? numAudioTrack,
      @JsonKey(name: "totalSize") final int? totalSize,
      @JsonKey(name: "largestItems")
      final List<LibraryItemSizeStats>? largestItems,
      @JsonKey(name: "authorsWithCount")
      final List<AuthorStats>? authorsWithCount,
      @JsonKey(name: "genresWithCount")
      final List<GenreStats>? genresWithCount}) = _$LibraryStatsImpl;

  factory _LibraryStats.fromJson(Map<String, dynamic> json) =
      _$LibraryStatsImpl.fromJson;

  @override
  @JsonKey(name: "totalItems")
  int? get totalItems;
  @override
  @JsonKey(name: "totalAuthors")
  int? get totalAuthors;
  @override
  @JsonKey(name: "totalGenres")
  int? get totalGenres;
  @override
  @JsonKey(name: "totalDuration")
  double? get totalDuration;
  @override
  @JsonKey(name: "longestItems")
  List<LibraryItemDurationStats>? get longestItems;
  @override
  @JsonKey(name: "numAudioTrack")
  int? get numAudioTrack;
  @override
  @JsonKey(name: "totalSize")
  int? get totalSize;
  @override
  @JsonKey(name: "largestItems")
  List<LibraryItemSizeStats>? get largestItems;
  @override
  @JsonKey(name: "authorsWithCount")
  List<AuthorStats>? get authorsWithCount;
  @override
  @JsonKey(name: "genresWithCount")
  List<GenreStats>? get genresWithCount;

  /// Create a copy of LibraryStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryStatsImplCopyWith<_$LibraryStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
