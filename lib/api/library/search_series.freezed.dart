// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchSeries _$SearchSeriesFromJson(Map<String, dynamic> json) {
  return _SearchSeries.fromJson(json);
}

/// @nodoc
mixin _$SearchSeries {
  @JsonKey(name: "series")
  Series get series => throw _privateConstructorUsedError;
  @JsonKey(name: "books")
  List<LibraryItem> get books => throw _privateConstructorUsedError;

  /// Serializes this SearchSeries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchSeriesCopyWith<SearchSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSeriesCopyWith<$Res> {
  factory $SearchSeriesCopyWith(
          SearchSeries value, $Res Function(SearchSeries) then) =
      _$SearchSeriesCopyWithImpl<$Res, SearchSeries>;
  @useResult
  $Res call(
      {@JsonKey(name: "series") Series series,
      @JsonKey(name: "books") List<LibraryItem> books});

  $SeriesCopyWith<$Res> get series;
}

/// @nodoc
class _$SearchSeriesCopyWithImpl<$Res, $Val extends SearchSeries>
    implements $SearchSeriesCopyWith<$Res> {
  _$SearchSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
    Object? books = null,
  }) {
    return _then(_value.copyWith(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>,
    ) as $Val);
  }

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res> get series {
    return $SeriesCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchSeriesImplCopyWith<$Res>
    implements $SearchSeriesCopyWith<$Res> {
  factory _$$SearchSeriesImplCopyWith(
          _$SearchSeriesImpl value, $Res Function(_$SearchSeriesImpl) then) =
      __$$SearchSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "series") Series series,
      @JsonKey(name: "books") List<LibraryItem> books});

  @override
  $SeriesCopyWith<$Res> get series;
}

/// @nodoc
class __$$SearchSeriesImplCopyWithImpl<$Res>
    extends _$SearchSeriesCopyWithImpl<$Res, _$SearchSeriesImpl>
    implements _$$SearchSeriesImplCopyWith<$Res> {
  __$$SearchSeriesImplCopyWithImpl(
      _$SearchSeriesImpl _value, $Res Function(_$SearchSeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
    Object? books = null,
  }) {
    return _then(_$SearchSeriesImpl(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchSeriesImpl implements _SearchSeries {
  const _$SearchSeriesImpl(
      {@JsonKey(name: "series") required this.series,
      @JsonKey(name: "books") required final List<LibraryItem> books})
      : _books = books;

  factory _$SearchSeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSeriesImplFromJson(json);

  @override
  @JsonKey(name: "series")
  final Series series;
  final List<LibraryItem> _books;
  @override
  @JsonKey(name: "books")
  List<LibraryItem> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'SearchSeries(series: $series, books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSeriesImpl &&
            (identical(other.series, series) || other.series == series) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, series, const DeepCollectionEquality().hash(_books));

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSeriesImplCopyWith<_$SearchSeriesImpl> get copyWith =>
      __$$SearchSeriesImplCopyWithImpl<_$SearchSeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSeriesImplToJson(
      this,
    );
  }
}

abstract class _SearchSeries implements SearchSeries {
  const factory _SearchSeries(
          {@JsonKey(name: "series") required final Series series,
          @JsonKey(name: "books") required final List<LibraryItem> books}) =
      _$SearchSeriesImpl;

  factory _SearchSeries.fromJson(Map<String, dynamic> json) =
      _$SearchSeriesImpl.fromJson;

  @override
  @JsonKey(name: "series")
  Series get series;
  @override
  @JsonKey(name: "books")
  List<LibraryItem> get books;

  /// Create a copy of SearchSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSeriesImplCopyWith<_$SearchSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
