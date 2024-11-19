// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence")
  String? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "addedAt")
  int? get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  int? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "nameIgnorePrefix")
  String? get nameIgnorePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "nameIgnorePrefixSort")
  String? get nameIgnorePrefixSort => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds => throw _privateConstructorUsedError;
  @JsonKey(name: "numBooks")
  int? get numBooks => throw _privateConstructorUsedError;
  @JsonKey(name: "books")
  List<LibraryItem>? get books => throw _privateConstructorUsedError;
  @JsonKey(name: "totalDuration")
  double? get totalDuration => throw _privateConstructorUsedError;

  /// Serializes this Series to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "sequence") String? sequence,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
      @JsonKey(name: "nameIgnorePrefixSort") String? nameIgnorePrefixSort,
      @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds,
      @JsonKey(name: "numBooks") int? numBooks,
      @JsonKey(name: "books") List<LibraryItem>? books,
      @JsonKey(name: "totalDuration") double? totalDuration});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sequence = freezed,
    Object? description = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
    Object? nameIgnorePrefix = freezed,
    Object? nameIgnorePrefixSort = freezed,
    Object? libraryItemIds = freezed,
    Object? numBooks = freezed,
    Object? books = freezed,
    Object? totalDuration = freezed,
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
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      nameIgnorePrefix: freezed == nameIgnorePrefix
          ? _value.nameIgnorePrefix
          : nameIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIgnorePrefixSort: freezed == nameIgnorePrefixSort
          ? _value.nameIgnorePrefixSort
          : nameIgnorePrefixSort // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryItemIds: freezed == libraryItemIds
          ? _value.libraryItemIds
          : libraryItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numBooks: freezed == numBooks
          ? _value.numBooks
          : numBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      books: freezed == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
          _$SeriesImpl value, $Res Function(_$SeriesImpl) then) =
      __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "sequence") String? sequence,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "addedAt") int? addedAt,
      @JsonKey(name: "updatedAt") int? updatedAt,
      @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
      @JsonKey(name: "nameIgnorePrefixSort") String? nameIgnorePrefixSort,
      @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds,
      @JsonKey(name: "numBooks") int? numBooks,
      @JsonKey(name: "books") List<LibraryItem>? books,
      @JsonKey(name: "totalDuration") double? totalDuration});
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
      _$SeriesImpl _value, $Res Function(_$SeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sequence = freezed,
    Object? description = freezed,
    Object? addedAt = freezed,
    Object? updatedAt = freezed,
    Object? nameIgnorePrefix = freezed,
    Object? nameIgnorePrefixSort = freezed,
    Object? libraryItemIds = freezed,
    Object? numBooks = freezed,
    Object? books = freezed,
    Object? totalDuration = freezed,
  }) {
    return _then(_$SeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addedAt: freezed == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      nameIgnorePrefix: freezed == nameIgnorePrefix
          ? _value.nameIgnorePrefix
          : nameIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIgnorePrefixSort: freezed == nameIgnorePrefixSort
          ? _value.nameIgnorePrefixSort
          : nameIgnorePrefixSort // ignore: cast_nullable_to_non_nullable
              as String?,
      libraryItemIds: freezed == libraryItemIds
          ? _value._libraryItemIds
          : libraryItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      numBooks: freezed == numBooks
          ? _value.numBooks
          : numBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      books: freezed == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryItem>?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesImpl implements _Series {
  const _$SeriesImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "sequence") this.sequence,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "addedAt") this.addedAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "nameIgnorePrefix") this.nameIgnorePrefix,
      @JsonKey(name: "nameIgnorePrefixSort") this.nameIgnorePrefixSort,
      @JsonKey(name: "libraryItemIds") final List<String>? libraryItemIds,
      @JsonKey(name: "numBooks") this.numBooks,
      @JsonKey(name: "books") final List<LibraryItem>? books,
      @JsonKey(name: "totalDuration") this.totalDuration})
      : _libraryItemIds = libraryItemIds,
        _books = books;

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "sequence")
  final String? sequence;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "addedAt")
  final int? addedAt;
  @override
  @JsonKey(name: "updatedAt")
  final int? updatedAt;
  @override
  @JsonKey(name: "nameIgnorePrefix")
  final String? nameIgnorePrefix;
  @override
  @JsonKey(name: "nameIgnorePrefixSort")
  final String? nameIgnorePrefixSort;
  final List<String>? _libraryItemIds;
  @override
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds {
    final value = _libraryItemIds;
    if (value == null) return null;
    if (_libraryItemIds is EqualUnmodifiableListView) return _libraryItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "numBooks")
  final int? numBooks;
  final List<LibraryItem>? _books;
  @override
  @JsonKey(name: "books")
  List<LibraryItem>? get books {
    final value = _books;
    if (value == null) return null;
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "totalDuration")
  final double? totalDuration;

  @override
  String toString() {
    return 'Series(id: $id, name: $name, sequence: $sequence, description: $description, addedAt: $addedAt, updatedAt: $updatedAt, nameIgnorePrefix: $nameIgnorePrefix, nameIgnorePrefixSort: $nameIgnorePrefixSort, libraryItemIds: $libraryItemIds, numBooks: $numBooks, books: $books, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.nameIgnorePrefix, nameIgnorePrefix) ||
                other.nameIgnorePrefix == nameIgnorePrefix) &&
            (identical(other.nameIgnorePrefixSort, nameIgnorePrefixSort) ||
                other.nameIgnorePrefixSort == nameIgnorePrefixSort) &&
            const DeepCollectionEquality()
                .equals(other._libraryItemIds, _libraryItemIds) &&
            (identical(other.numBooks, numBooks) ||
                other.numBooks == numBooks) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      sequence,
      description,
      addedAt,
      updatedAt,
      nameIgnorePrefix,
      nameIgnorePrefixSort,
      const DeepCollectionEquality().hash(_libraryItemIds),
      numBooks,
      const DeepCollectionEquality().hash(_books),
      totalDuration);

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(
      this,
    );
  }
}

abstract class _Series implements Series {
  const factory _Series(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "sequence") final String? sequence,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "addedAt") final int? addedAt,
      @JsonKey(name: "updatedAt") final int? updatedAt,
      @JsonKey(name: "nameIgnorePrefix") final String? nameIgnorePrefix,
      @JsonKey(name: "nameIgnorePrefixSort") final String? nameIgnorePrefixSort,
      @JsonKey(name: "libraryItemIds") final List<String>? libraryItemIds,
      @JsonKey(name: "numBooks") final int? numBooks,
      @JsonKey(name: "books") final List<LibraryItem>? books,
      @JsonKey(name: "totalDuration")
      final double? totalDuration}) = _$SeriesImpl;

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "sequence")
  String? get sequence;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "addedAt")
  int? get addedAt;
  @override
  @JsonKey(name: "updatedAt")
  int? get updatedAt;
  @override
  @JsonKey(name: "nameIgnorePrefix")
  String? get nameIgnorePrefix;
  @override
  @JsonKey(name: "nameIgnorePrefixSort")
  String? get nameIgnorePrefixSort;
  @override
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds;
  @override
  @JsonKey(name: "numBooks")
  int? get numBooks;
  @override
  @JsonKey(name: "books")
  List<LibraryItem>? get books;
  @override
  @JsonKey(name: "totalDuration")
  double? get totalDuration;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
