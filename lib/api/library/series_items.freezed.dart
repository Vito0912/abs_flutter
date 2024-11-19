// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeriesItems _$SeriesItemsFromJson(Map<String, dynamic> json) {
  return _SeriesItems.fromJson(json);
}

/// @nodoc
mixin _$SeriesItems {
  @JsonKey(name: "results")
  List<Series> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "sortBy")
  String? get sortBy => throw _privateConstructorUsedError;
  @JsonKey(name: "sortDesc")
  bool? get sortDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "filterBy")
  String? get filterBy => throw _privateConstructorUsedError;

  /// Serializes this SeriesItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeriesItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeriesItemsCopyWith<SeriesItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesItemsCopyWith<$Res> {
  factory $SeriesItemsCopyWith(
          SeriesItems value, $Res Function(SeriesItems) then) =
      _$SeriesItemsCopyWithImpl<$Res, SeriesItems>;
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Series> results,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "sortBy") String? sortBy,
      @JsonKey(name: "sortDesc") bool? sortDesc,
      @JsonKey(name: "filterBy") String? filterBy});
}

/// @nodoc
class _$SeriesItemsCopyWithImpl<$Res, $Val extends SeriesItems>
    implements $SeriesItemsCopyWith<$Res> {
  _$SeriesItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeriesItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? page = null,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortDesc = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortDesc: freezed == sortDesc
          ? _value.sortDesc
          : sortDesc // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterBy: freezed == filterBy
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesItemsImplCopyWith<$Res>
    implements $SeriesItemsCopyWith<$Res> {
  factory _$$SeriesItemsImplCopyWith(
          _$SeriesItemsImpl value, $Res Function(_$SeriesItemsImpl) then) =
      __$$SeriesItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<Series> results,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "limit") int? limit,
      @JsonKey(name: "sortBy") String? sortBy,
      @JsonKey(name: "sortDesc") bool? sortDesc,
      @JsonKey(name: "filterBy") String? filterBy});
}

/// @nodoc
class __$$SeriesItemsImplCopyWithImpl<$Res>
    extends _$SeriesItemsCopyWithImpl<$Res, _$SeriesItemsImpl>
    implements _$$SeriesItemsImplCopyWith<$Res> {
  __$$SeriesItemsImplCopyWithImpl(
      _$SeriesItemsImpl _value, $Res Function(_$SeriesItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeriesItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? page = null,
    Object? limit = freezed,
    Object? sortBy = freezed,
    Object? sortDesc = freezed,
    Object? filterBy = freezed,
  }) {
    return _then(_$SeriesItemsImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      sortDesc: freezed == sortDesc
          ? _value.sortDesc
          : sortDesc // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterBy: freezed == filterBy
          ? _value.filterBy
          : filterBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesItemsImpl implements _SeriesItems {
  const _$SeriesItemsImpl(
      {@JsonKey(name: "results") required final List<Series> results,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "limit") this.limit,
      @JsonKey(name: "sortBy") this.sortBy,
      @JsonKey(name: "sortDesc") this.sortDesc,
      @JsonKey(name: "filterBy") this.filterBy})
      : _results = results;

  factory _$SeriesItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesItemsImplFromJson(json);

  final List<Series> _results;
  @override
  @JsonKey(name: "results")
  List<Series> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "limit")
  final int? limit;
  @override
  @JsonKey(name: "sortBy")
  final String? sortBy;
  @override
  @JsonKey(name: "sortDesc")
  final bool? sortDesc;
  @override
  @JsonKey(name: "filterBy")
  final String? filterBy;

  @override
  String toString() {
    return 'SeriesItems(results: $results, total: $total, page: $page, limit: $limit, sortBy: $sortBy, sortDesc: $sortDesc, filterBy: $filterBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesItemsImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortDesc, sortDesc) ||
                other.sortDesc == sortDesc) &&
            (identical(other.filterBy, filterBy) ||
                other.filterBy == filterBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      total,
      page,
      limit,
      sortBy,
      sortDesc,
      filterBy);

  /// Create a copy of SeriesItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesItemsImplCopyWith<_$SeriesItemsImpl> get copyWith =>
      __$$SeriesItemsImplCopyWithImpl<_$SeriesItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesItemsImplToJson(
      this,
    );
  }
}

abstract class _SeriesItems implements SeriesItems {
  const factory _SeriesItems(
      {@JsonKey(name: "results") required final List<Series> results,
      @JsonKey(name: "total") required final int total,
      @JsonKey(name: "page") required final int page,
      @JsonKey(name: "limit") final int? limit,
      @JsonKey(name: "sortBy") final String? sortBy,
      @JsonKey(name: "sortDesc") final bool? sortDesc,
      @JsonKey(name: "filterBy") final String? filterBy}) = _$SeriesItemsImpl;

  factory _SeriesItems.fromJson(Map<String, dynamic> json) =
      _$SeriesItemsImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<Series> get results;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "limit")
  int? get limit;
  @override
  @JsonKey(name: "sortBy")
  String? get sortBy;
  @override
  @JsonKey(name: "sortDesc")
  bool? get sortDesc;
  @override
  @JsonKey(name: "filterBy")
  String? get filterBy;

  /// Create a copy of SeriesItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesItemsImplCopyWith<_$SeriesItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
