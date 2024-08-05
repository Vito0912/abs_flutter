// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibrarySort _$LibrarySortFromJson(Map<String, dynamic> json) {
  return _LibrarySort.fromJson(json);
}

/// @nodoc
mixin _$LibrarySort {
  int? get limit => throw _privateConstructorUsedError;
  set limit(int? value) => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  set page(int? value) => throw _privateConstructorUsedError;
  String? get sort => throw _privateConstructorUsedError;
  set sort(String? value) => throw _privateConstructorUsedError;
  int? get desc => throw _privateConstructorUsedError;
  set desc(int? value) => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  set filter(String? value) => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  set search(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LibrarySortCopyWith<LibrarySort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibrarySortCopyWith<$Res> {
  factory $LibrarySortCopyWith(
          LibrarySort value, $Res Function(LibrarySort) then) =
      _$LibrarySortCopyWithImpl<$Res, LibrarySort>;
  @useResult
  $Res call(
      {int? limit,
      int? page,
      String? sort,
      int? desc,
      String? filter,
      String? search});
}

/// @nodoc
class _$LibrarySortCopyWithImpl<$Res, $Val extends LibrarySort>
    implements $LibrarySortCopyWith<$Res> {
  _$LibrarySortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? sort = freezed,
    Object? desc = freezed,
    Object? filter = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
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
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibrarySortImplCopyWith<$Res>
    implements $LibrarySortCopyWith<$Res> {
  factory _$$LibrarySortImplCopyWith(
          _$LibrarySortImpl value, $Res Function(_$LibrarySortImpl) then) =
      __$$LibrarySortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? limit,
      int? page,
      String? sort,
      int? desc,
      String? filter,
      String? search});
}

/// @nodoc
class __$$LibrarySortImplCopyWithImpl<$Res>
    extends _$LibrarySortCopyWithImpl<$Res, _$LibrarySortImpl>
    implements _$$LibrarySortImplCopyWith<$Res> {
  __$$LibrarySortImplCopyWithImpl(
      _$LibrarySortImpl _value, $Res Function(_$LibrarySortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? sort = freezed,
    Object? desc = freezed,
    Object? filter = freezed,
    Object? search = freezed,
  }) {
    return _then(_$LibrarySortImpl(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
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
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibrarySortImpl with DiagnosticableTreeMixin implements _LibrarySort {
  _$LibrarySortImpl(
      {this.limit = 10,
      this.page = 0,
      this.sort = "media.metadata.title",
      this.desc = 0,
      this.filter = "",
      this.search = ""});

  factory _$LibrarySortImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibrarySortImplFromJson(json);

  @override
  @JsonKey()
  int? limit;
  @override
  @JsonKey()
  int? page;
  @override
  @JsonKey()
  String? sort;
  @override
  @JsonKey()
  int? desc;
  @override
  @JsonKey()
  String? filter;
  @override
  @JsonKey()
  String? search;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibrarySort(limit: $limit, page: $page, sort: $sort, desc: $desc, filter: $filter, search: $search)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LibrarySort'))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('search', search));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LibrarySortImplCopyWith<_$LibrarySortImpl> get copyWith =>
      __$$LibrarySortImplCopyWithImpl<_$LibrarySortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibrarySortImplToJson(
      this,
    );
  }
}

abstract class _LibrarySort implements LibrarySort {
  factory _LibrarySort(
      {int? limit,
      int? page,
      String? sort,
      int? desc,
      String? filter,
      String? search}) = _$LibrarySortImpl;

  factory _LibrarySort.fromJson(Map<String, dynamic> json) =
      _$LibrarySortImpl.fromJson;

  @override
  int? get limit;
  set limit(int? value);
  @override
  int? get page;
  set page(int? value);
  @override
  String? get sort;
  set sort(String? value);
  @override
  int? get desc;
  set desc(int? value);
  @override
  String? get filter;
  set filter(String? value);
  @override
  String? get search;
  set search(String? value);
  @override
  @JsonKey(ignore: true)
  _$$LibrarySortImplCopyWith<_$LibrarySortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
