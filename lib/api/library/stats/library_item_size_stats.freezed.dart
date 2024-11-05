// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item_size_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItemSizeStats _$LibraryItemSizeStatsFromJson(Map<String, dynamic> json) {
  return _LibraryItemSizeStats.fromJson(json);
}

/// @nodoc
mixin _$LibraryItemSizeStats {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this LibraryItemSizeStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItemSizeStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemSizeStatsCopyWith<LibraryItemSizeStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemSizeStatsCopyWith<$Res> {
  factory $LibraryItemSizeStatsCopyWith(LibraryItemSizeStats value,
          $Res Function(LibraryItemSizeStats) then) =
      _$LibraryItemSizeStatsCopyWithImpl<$Res, LibraryItemSizeStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "size") int size,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class _$LibraryItemSizeStatsCopyWithImpl<$Res,
        $Val extends LibraryItemSizeStats>
    implements $LibraryItemSizeStatsCopyWith<$Res> {
  _$LibraryItemSizeStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItemSizeStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryItemSizeStatsImplCopyWith<$Res>
    implements $LibraryItemSizeStatsCopyWith<$Res> {
  factory _$$LibraryItemSizeStatsImplCopyWith(_$LibraryItemSizeStatsImpl value,
          $Res Function(_$LibraryItemSizeStatsImpl) then) =
      __$$LibraryItemSizeStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "size") int size,
      @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$LibraryItemSizeStatsImplCopyWithImpl<$Res>
    extends _$LibraryItemSizeStatsCopyWithImpl<$Res, _$LibraryItemSizeStatsImpl>
    implements _$$LibraryItemSizeStatsImplCopyWith<$Res> {
  __$$LibraryItemSizeStatsImplCopyWithImpl(_$LibraryItemSizeStatsImpl _value,
      $Res Function(_$LibraryItemSizeStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItemSizeStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? title = null,
  }) {
    return _then(_$LibraryItemSizeStatsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemSizeStatsImpl implements _LibraryItemSizeStats {
  const _$LibraryItemSizeStatsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "title") required this.title});

  factory _$LibraryItemSizeStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemSizeStatsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "size")
  final int size;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'LibraryItemSizeStats(id: $id, size: $size, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemSizeStatsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, size, title);

  /// Create a copy of LibraryItemSizeStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemSizeStatsImplCopyWith<_$LibraryItemSizeStatsImpl>
      get copyWith =>
          __$$LibraryItemSizeStatsImplCopyWithImpl<_$LibraryItemSizeStatsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemSizeStatsImplToJson(
      this,
    );
  }
}

abstract class _LibraryItemSizeStats implements LibraryItemSizeStats {
  const factory _LibraryItemSizeStats(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "size") required final int size,
          @JsonKey(name: "title") required final String title}) =
      _$LibraryItemSizeStatsImpl;

  factory _LibraryItemSizeStats.fromJson(Map<String, dynamic> json) =
      _$LibraryItemSizeStatsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "size")
  int get size;
  @override
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of LibraryItemSizeStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemSizeStatsImplCopyWith<_$LibraryItemSizeStatsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
