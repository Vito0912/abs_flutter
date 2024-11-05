// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item_duration_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItemDurationStats _$LibraryItemDurationStatsFromJson(
    Map<String, dynamic> json) {
  return _LibraryItemDurationStats.fromJson(json);
}

/// @nodoc
mixin _$LibraryItemDurationStats {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "duration")
  double get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this LibraryItemDurationStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItemDurationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemDurationStatsCopyWith<LibraryItemDurationStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemDurationStatsCopyWith<$Res> {
  factory $LibraryItemDurationStatsCopyWith(LibraryItemDurationStats value,
          $Res Function(LibraryItemDurationStats) then) =
      _$LibraryItemDurationStatsCopyWithImpl<$Res, LibraryItemDurationStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "duration") double duration,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$LibraryItemDurationStatsCopyWithImpl<$Res,
        $Val extends LibraryItemDurationStats>
    implements $LibraryItemDurationStatsCopyWith<$Res> {
  _$LibraryItemDurationStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItemDurationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryItemDurationStatsImplCopyWith<$Res>
    implements $LibraryItemDurationStatsCopyWith<$Res> {
  factory _$$LibraryItemDurationStatsImplCopyWith(
          _$LibraryItemDurationStatsImpl value,
          $Res Function(_$LibraryItemDurationStatsImpl) then) =
      __$$LibraryItemDurationStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "duration") double duration,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$LibraryItemDurationStatsImplCopyWithImpl<$Res>
    extends _$LibraryItemDurationStatsCopyWithImpl<$Res,
        _$LibraryItemDurationStatsImpl>
    implements _$$LibraryItemDurationStatsImplCopyWith<$Res> {
  __$$LibraryItemDurationStatsImplCopyWithImpl(
      _$LibraryItemDurationStatsImpl _value,
      $Res Function(_$LibraryItemDurationStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItemDurationStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? title = null,
  }) {
    return _then(_$LibraryItemDurationStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemDurationStatsImpl implements _LibraryItemDurationStats {
  const _$LibraryItemDurationStatsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "duration") required this.duration,
      @JsonKey(name: "title") required this.title});

  factory _$LibraryItemDurationStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemDurationStatsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "duration")
  final double duration;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'LibraryItemDurationStats(id: $id, duration: $duration, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemDurationStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, duration, title);

  /// Create a copy of LibraryItemDurationStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemDurationStatsImplCopyWith<_$LibraryItemDurationStatsImpl>
      get copyWith => __$$LibraryItemDurationStatsImplCopyWithImpl<
          _$LibraryItemDurationStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemDurationStatsImplToJson(
      this,
    );
  }
}

abstract class _LibraryItemDurationStats implements LibraryItemDurationStats {
  const factory _LibraryItemDurationStats(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "duration") required final double duration,
          @JsonKey(name: "title") required final String title}) =
      _$LibraryItemDurationStatsImpl;

  factory _LibraryItemDurationStats.fromJson(Map<String, dynamic> json) =
      _$LibraryItemDurationStatsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "duration")
  double get duration;
  @override
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of LibraryItemDurationStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemDurationStatsImplCopyWith<_$LibraryItemDurationStatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
