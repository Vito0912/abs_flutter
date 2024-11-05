// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenreStats _$GenreStatsFromJson(Map<String, dynamic> json) {
  return _GenreStats.fromJson(json);
}

/// @nodoc
mixin _$GenreStats {
  @JsonKey(name: "genre")
  String get genre => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;

  /// Serializes this GenreStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenreStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreStatsCopyWith<GenreStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreStatsCopyWith<$Res> {
  factory $GenreStatsCopyWith(
          GenreStats value, $Res Function(GenreStats) then) =
      _$GenreStatsCopyWithImpl<$Res, GenreStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "genre") String genre,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class _$GenreStatsCopyWithImpl<$Res, $Val extends GenreStats>
    implements $GenreStatsCopyWith<$Res> {
  _$GenreStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreStatsImplCopyWith<$Res>
    implements $GenreStatsCopyWith<$Res> {
  factory _$$GenreStatsImplCopyWith(
          _$GenreStatsImpl value, $Res Function(_$GenreStatsImpl) then) =
      __$$GenreStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "genre") String genre,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class __$$GenreStatsImplCopyWithImpl<$Res>
    extends _$GenreStatsCopyWithImpl<$Res, _$GenreStatsImpl>
    implements _$$GenreStatsImplCopyWith<$Res> {
  __$$GenreStatsImplCopyWithImpl(
      _$GenreStatsImpl _value, $Res Function(_$GenreStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? count = null,
  }) {
    return _then(_$GenreStatsImpl(
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreStatsImpl implements _GenreStats {
  const _$GenreStatsImpl(
      {@JsonKey(name: "genre") required this.genre,
      @JsonKey(name: "count") required this.count});

  factory _$GenreStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreStatsImplFromJson(json);

  @override
  @JsonKey(name: "genre")
  final String genre;
  @override
  @JsonKey(name: "count")
  final int count;

  @override
  String toString() {
    return 'GenreStats(genre: $genre, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreStatsImpl &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genre, count);

  /// Create a copy of GenreStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreStatsImplCopyWith<_$GenreStatsImpl> get copyWith =>
      __$$GenreStatsImplCopyWithImpl<_$GenreStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreStatsImplToJson(
      this,
    );
  }
}

abstract class _GenreStats implements GenreStats {
  const factory _GenreStats(
      {@JsonKey(name: "genre") required final String genre,
      @JsonKey(name: "count") required final int count}) = _$GenreStatsImpl;

  factory _GenreStats.fromJson(Map<String, dynamic> json) =
      _$GenreStatsImpl.fromJson;

  @override
  @JsonKey(name: "genre")
  String get genre;
  @override
  @JsonKey(name: "count")
  int get count;

  /// Create a copy of GenreStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreStatsImplCopyWith<_$GenreStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
