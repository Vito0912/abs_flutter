// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItems _$LibraryItemsFromJson(Map<String, dynamic> json) {
  return _LibraryItems.fromJson(json);
}

/// @nodoc
mixin _$LibraryItems {
  @JsonKey(name: "results")
  List<LibraryItem> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "sortBy")
  String get sortBy => throw _privateConstructorUsedError;
  @JsonKey(name: "sortDesc")
  bool get sortDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaType")
  MediaType get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "minified")
  bool get minified => throw _privateConstructorUsedError;
  @JsonKey(name: "collapseseries")
  bool get collapseseries => throw _privateConstructorUsedError;
  @JsonKey(name: "include")
  String get include => throw _privateConstructorUsedError;
  @JsonKey(name: "offset")
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this LibraryItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemsCopyWith<LibraryItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemsCopyWith<$Res> {
  factory $LibraryItemsCopyWith(
          LibraryItems value, $Res Function(LibraryItems) then) =
      _$LibraryItemsCopyWithImpl<$Res, LibraryItems>;
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<LibraryItem> results,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "sortBy") String sortBy,
      @JsonKey(name: "sortDesc") bool sortDesc,
      @JsonKey(name: "mediaType") MediaType mediaType,
      @JsonKey(name: "minified") bool minified,
      @JsonKey(name: "collapseseries") bool collapseseries,
      @JsonKey(name: "include") String include,
      @JsonKey(name: "offset") int offset});
}

/// @nodoc
class _$LibraryItemsCopyWithImpl<$Res, $Val extends LibraryItems>
    implements $LibraryItemsCopyWith<$Res> {
  _$LibraryItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? sortBy = null,
    Object? sortDesc = null,
    Object? mediaType = null,
    Object? minified = null,
    Object? collapseseries = null,
    Object? include = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortDesc: null == sortDesc
          ? _value.sortDesc
          : sortDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      minified: null == minified
          ? _value.minified
          : minified // ignore: cast_nullable_to_non_nullable
              as bool,
      collapseseries: null == collapseseries
          ? _value.collapseseries
          : collapseseries // ignore: cast_nullable_to_non_nullable
              as bool,
      include: null == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryItemsImplCopyWith<$Res>
    implements $LibraryItemsCopyWith<$Res> {
  factory _$$LibraryItemsImplCopyWith(
          _$LibraryItemsImpl value, $Res Function(_$LibraryItemsImpl) then) =
      __$$LibraryItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "results") List<LibraryItem> results,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "sortBy") String sortBy,
      @JsonKey(name: "sortDesc") bool sortDesc,
      @JsonKey(name: "mediaType") MediaType mediaType,
      @JsonKey(name: "minified") bool minified,
      @JsonKey(name: "collapseseries") bool collapseseries,
      @JsonKey(name: "include") String include,
      @JsonKey(name: "offset") int offset});
}

/// @nodoc
class __$$LibraryItemsImplCopyWithImpl<$Res>
    extends _$LibraryItemsCopyWithImpl<$Res, _$LibraryItemsImpl>
    implements _$$LibraryItemsImplCopyWith<$Res> {
  __$$LibraryItemsImplCopyWithImpl(
      _$LibraryItemsImpl _value, $Res Function(_$LibraryItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? total = null,
    Object? limit = null,
    Object? page = null,
    Object? sortBy = null,
    Object? sortDesc = null,
    Object? mediaType = null,
    Object? minified = null,
    Object? collapseseries = null,
    Object? include = null,
    Object? offset = null,
  }) {
    return _then(_$LibraryItemsImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String,
      sortDesc: null == sortDesc
          ? _value.sortDesc
          : sortDesc // ignore: cast_nullable_to_non_nullable
              as bool,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      minified: null == minified
          ? _value.minified
          : minified // ignore: cast_nullable_to_non_nullable
              as bool,
      collapseseries: null == collapseseries
          ? _value.collapseseries
          : collapseseries // ignore: cast_nullable_to_non_nullable
              as bool,
      include: null == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemsImpl implements _LibraryItems {
  const _$LibraryItemsImpl(
      {@JsonKey(name: "results") required final List<LibraryItem> results,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "sortBy") required this.sortBy,
      @JsonKey(name: "sortDesc") required this.sortDesc,
      @JsonKey(name: "mediaType") required this.mediaType,
      @JsonKey(name: "minified") required this.minified,
      @JsonKey(name: "collapseseries") required this.collapseseries,
      @JsonKey(name: "include") required this.include,
      @JsonKey(name: "offset") required this.offset})
      : _results = results;

  factory _$LibraryItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemsImplFromJson(json);

  final List<LibraryItem> _results;
  @override
  @JsonKey(name: "results")
  List<LibraryItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "sortBy")
  final String sortBy;
  @override
  @JsonKey(name: "sortDesc")
  final bool sortDesc;
  @override
  @JsonKey(name: "mediaType")
  final MediaType mediaType;
  @override
  @JsonKey(name: "minified")
  final bool minified;
  @override
  @JsonKey(name: "collapseseries")
  final bool collapseseries;
  @override
  @JsonKey(name: "include")
  final String include;
  @override
  @JsonKey(name: "offset")
  final int offset;

  @override
  String toString() {
    return 'LibraryItems(results: $results, total: $total, limit: $limit, page: $page, sortBy: $sortBy, sortDesc: $sortDesc, mediaType: $mediaType, minified: $minified, collapseseries: $collapseseries, include: $include, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemsImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortDesc, sortDesc) ||
                other.sortDesc == sortDesc) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.minified, minified) ||
                other.minified == minified) &&
            (identical(other.collapseseries, collapseseries) ||
                other.collapseseries == collapseseries) &&
            (identical(other.include, include) || other.include == include) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_results),
      total,
      limit,
      page,
      sortBy,
      sortDesc,
      mediaType,
      minified,
      collapseseries,
      include,
      offset);

  /// Create a copy of LibraryItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemsImplCopyWith<_$LibraryItemsImpl> get copyWith =>
      __$$LibraryItemsImplCopyWithImpl<_$LibraryItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemsImplToJson(
      this,
    );
  }
}

abstract class _LibraryItems implements LibraryItems {
  const factory _LibraryItems(
      {@JsonKey(name: "results") required final List<LibraryItem> results,
      @JsonKey(name: "total") required final int total,
      @JsonKey(name: "limit") required final int limit,
      @JsonKey(name: "page") required final int page,
      @JsonKey(name: "sortBy") required final String sortBy,
      @JsonKey(name: "sortDesc") required final bool sortDesc,
      @JsonKey(name: "mediaType") required final MediaType mediaType,
      @JsonKey(name: "minified") required final bool minified,
      @JsonKey(name: "collapseseries") required final bool collapseseries,
      @JsonKey(name: "include") required final String include,
      @JsonKey(name: "offset") required final int offset}) = _$LibraryItemsImpl;

  factory _LibraryItems.fromJson(Map<String, dynamic> json) =
      _$LibraryItemsImpl.fromJson;

  @override
  @JsonKey(name: "results")
  List<LibraryItem> get results;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "sortBy")
  String get sortBy;
  @override
  @JsonKey(name: "sortDesc")
  bool get sortDesc;
  @override
  @JsonKey(name: "mediaType")
  MediaType get mediaType;
  @override
  @JsonKey(name: "minified")
  bool get minified;
  @override
  @JsonKey(name: "collapseseries")
  bool get collapseseries;
  @override
  @JsonKey(name: "include")
  String get include;
  @override
  @JsonKey(name: "offset")
  int get offset;

  /// Create a copy of LibraryItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemsImplCopyWith<_$LibraryItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
