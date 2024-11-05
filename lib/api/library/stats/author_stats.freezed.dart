// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthorStats _$AuthorStatsFromJson(Map<String, dynamic> json) {
  return _AuthorStats.fromJson(json);
}

/// @nodoc
mixin _$AuthorStats {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;

  /// Serializes this AuthorStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorStatsCopyWith<AuthorStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorStatsCopyWith<$Res> {
  factory $AuthorStatsCopyWith(
          AuthorStats value, $Res Function(AuthorStats) then) =
      _$AuthorStatsCopyWithImpl<$Res, AuthorStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class _$AuthorStatsCopyWithImpl<$Res, $Val extends AuthorStats>
    implements $AuthorStatsCopyWith<$Res> {
  _$AuthorStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorStatsImplCopyWith<$Res>
    implements $AuthorStatsCopyWith<$Res> {
  factory _$$AuthorStatsImplCopyWith(
          _$AuthorStatsImpl value, $Res Function(_$AuthorStatsImpl) then) =
      __$$AuthorStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class __$$AuthorStatsImplCopyWithImpl<$Res>
    extends _$AuthorStatsCopyWithImpl<$Res, _$AuthorStatsImpl>
    implements _$$AuthorStatsImplCopyWith<$Res> {
  __$$AuthorStatsImplCopyWithImpl(
      _$AuthorStatsImpl _value, $Res Function(_$AuthorStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$AuthorStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$AuthorStatsImpl implements _AuthorStats {
  const _$AuthorStatsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "count") required this.count});

  factory _$AuthorStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorStatsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "count")
  final int count;

  @override
  String toString() {
    return 'AuthorStats(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, count);

  /// Create a copy of AuthorStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorStatsImplCopyWith<_$AuthorStatsImpl> get copyWith =>
      __$$AuthorStatsImplCopyWithImpl<_$AuthorStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorStatsImplToJson(
      this,
    );
  }
}

abstract class _AuthorStats implements AuthorStats {
  const factory _AuthorStats(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "count") required final int count}) = _$AuthorStatsImpl;

  factory _AuthorStats.fromJson(Map<String, dynamic> json) =
      _$AuthorStatsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "count")
  int get count;

  /// Create a copy of AuthorStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorStatsImplCopyWith<_$AuthorStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
