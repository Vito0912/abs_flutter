// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_items_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItemsRequest _$LibraryItemsRequestFromJson(Map<String, dynamic> json) {
  return _LibraryItemsRequest.fromJson(json);
}

/// @nodoc
mixin _$LibraryItemsRequest {
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  String? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  int? get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "filter")
  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(name: "minified")
  int? get minified => throw _privateConstructorUsedError;
  @JsonKey(name: "collapseseries")
  int? get collapseseries => throw _privateConstructorUsedError;
  @JsonKey(name: "include")
  String? get include => throw _privateConstructorUsedError;

  /// Serializes this LibraryItemsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItemsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemsRequestCopyWith<LibraryItemsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemsRequestCopyWith<$Res> {
  factory $LibraryItemsRequestCopyWith(
          LibraryItemsRequest value, $Res Function(LibraryItemsRequest) then) =
      _$LibraryItemsRequestCopyWithImpl<$Res, LibraryItemsRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "limit") int limit,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "sort") String? sort,
      @JsonKey(name: "desc") int? desc,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "minified") int? minified,
      @JsonKey(name: "collapseseries") int? collapseseries,
      @JsonKey(name: "include") String? include});
}

/// @nodoc
class _$LibraryItemsRequestCopyWithImpl<$Res, $Val extends LibraryItemsRequest>
    implements $LibraryItemsRequestCopyWith<$Res> {
  _$LibraryItemsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItemsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? sort = freezed,
    Object? desc = freezed,
    Object? filter = freezed,
    Object? minified = freezed,
    Object? collapseseries = freezed,
    Object? include = freezed,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      minified: freezed == minified
          ? _value.minified
          : minified // ignore: cast_nullable_to_non_nullable
              as int?,
      collapseseries: freezed == collapseseries
          ? _value.collapseseries
          : collapseseries // ignore: cast_nullable_to_non_nullable
              as int?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryItemsRequestImplCopyWith<$Res>
    implements $LibraryItemsRequestCopyWith<$Res> {
  factory _$$LibraryItemsRequestImplCopyWith(_$LibraryItemsRequestImpl value,
          $Res Function(_$LibraryItemsRequestImpl) then) =
      __$$LibraryItemsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "limit") int limit,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "sort") String? sort,
      @JsonKey(name: "desc") int? desc,
      @JsonKey(name: "filter") String? filter,
      @JsonKey(name: "minified") int? minified,
      @JsonKey(name: "collapseseries") int? collapseseries,
      @JsonKey(name: "include") String? include});
}

/// @nodoc
class __$$LibraryItemsRequestImplCopyWithImpl<$Res>
    extends _$LibraryItemsRequestCopyWithImpl<$Res, _$LibraryItemsRequestImpl>
    implements _$$LibraryItemsRequestImplCopyWith<$Res> {
  __$$LibraryItemsRequestImplCopyWithImpl(_$LibraryItemsRequestImpl _value,
      $Res Function(_$LibraryItemsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItemsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? sort = freezed,
    Object? desc = freezed,
    Object? filter = freezed,
    Object? minified = freezed,
    Object? collapseseries = freezed,
    Object? include = freezed,
  }) {
    return _then(_$LibraryItemsRequestImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as int?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      minified: freezed == minified
          ? _value.minified
          : minified // ignore: cast_nullable_to_non_nullable
              as int?,
      collapseseries: freezed == collapseseries
          ? _value.collapseseries
          : collapseseries // ignore: cast_nullable_to_non_nullable
              as int?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemsRequestImpl implements _LibraryItemsRequest {
  const _$LibraryItemsRequestImpl(
      {@JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "desc") this.desc,
      @JsonKey(name: "filter") this.filter,
      @JsonKey(name: "minified") this.minified,
      @JsonKey(name: "collapseseries") this.collapseseries,
      @JsonKey(name: "include") this.include});

  factory _$LibraryItemsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemsRequestImplFromJson(json);

  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "sort")
  final String? sort;
  @override
  @JsonKey(name: "desc")
  final int? desc;
  @override
  @JsonKey(name: "filter")
  final String? filter;
  @override
  @JsonKey(name: "minified")
  final int? minified;
  @override
  @JsonKey(name: "collapseseries")
  final int? collapseseries;
  @override
  @JsonKey(name: "include")
  final String? include;

  @override
  String toString() {
    return 'LibraryItemsRequest(limit: $limit, page: $page, sort: $sort, desc: $desc, filter: $filter, minified: $minified, collapseseries: $collapseseries, include: $include)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemsRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.minified, minified) ||
                other.minified == minified) &&
            (identical(other.collapseseries, collapseseries) ||
                other.collapseseries == collapseseries) &&
            (identical(other.include, include) || other.include == include));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, page, sort, desc, filter,
      minified, collapseseries, include);

  /// Create a copy of LibraryItemsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemsRequestImplCopyWith<_$LibraryItemsRequestImpl> get copyWith =>
      __$$LibraryItemsRequestImplCopyWithImpl<_$LibraryItemsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemsRequestImplToJson(
      this,
    );
  }
}

abstract class _LibraryItemsRequest implements LibraryItemsRequest {
  const factory _LibraryItemsRequest(
          {@JsonKey(name: "limit") required final int limit,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "sort") final String? sort,
          @JsonKey(name: "desc") final int? desc,
          @JsonKey(name: "filter") final String? filter,
          @JsonKey(name: "minified") final int? minified,
          @JsonKey(name: "collapseseries") final int? collapseseries,
          @JsonKey(name: "include") final String? include}) =
      _$LibraryItemsRequestImpl;

  factory _LibraryItemsRequest.fromJson(Map<String, dynamic> json) =
      _$LibraryItemsRequestImpl.fromJson;

  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "sort")
  String? get sort;
  @override
  @JsonKey(name: "desc")
  int? get desc;
  @override
  @JsonKey(name: "filter")
  String? get filter;
  @override
  @JsonKey(name: "minified")
  int? get minified;
  @override
  @JsonKey(name: "collapseseries")
  int? get collapseseries;
  @override
  @JsonKey(name: "include")
  String? get include;

  /// Create a copy of LibraryItemsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemsRequestImplCopyWith<_$LibraryItemsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
