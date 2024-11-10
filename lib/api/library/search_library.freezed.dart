// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_library.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchLibrary _$SearchLibraryFromJson(Map<String, dynamic> json) {
  return _SearchLibrary.fromJson(json);
}

/// @nodoc
mixin _$SearchLibrary {
  @JsonKey(name: "book")
  List<SearchLibraryResult>? get book => throw _privateConstructorUsedError;
  @JsonKey(name: "podcast")
  List<SearchLibraryResult>? get podcast => throw _privateConstructorUsedError;
  @JsonKey(name: "narrators")
  List<SearchResultNarrator>? get narrators =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<SearchResultItem>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<SearchResultItem>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "series")
  List<Series>? get series => throw _privateConstructorUsedError;
  @JsonKey(name: "authors")
  List<SearchLibraryAuthor>? get authors => throw _privateConstructorUsedError;

  /// Serializes this SearchLibrary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchLibrary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchLibraryCopyWith<SearchLibrary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLibraryCopyWith<$Res> {
  factory $SearchLibraryCopyWith(
          SearchLibrary value, $Res Function(SearchLibrary) then) =
      _$SearchLibraryCopyWithImpl<$Res, SearchLibrary>;
  @useResult
  $Res call(
      {@JsonKey(name: "book") List<SearchLibraryResult>? book,
      @JsonKey(name: "podcast") List<SearchLibraryResult>? podcast,
      @JsonKey(name: "narrators") List<SearchResultNarrator>? narrators,
      @JsonKey(name: "tags") List<SearchResultItem>? tags,
      @JsonKey(name: "genres") List<SearchResultItem>? genres,
      @JsonKey(name: "series") List<Series>? series,
      @JsonKey(name: "authors") List<SearchLibraryAuthor>? authors});
}

/// @nodoc
class _$SearchLibraryCopyWithImpl<$Res, $Val extends SearchLibrary>
    implements $SearchLibraryCopyWith<$Res> {
  _$SearchLibraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchLibrary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? podcast = freezed,
    Object? narrators = freezed,
    Object? tags = freezed,
    Object? genres = freezed,
    Object? series = freezed,
    Object? authors = freezed,
  }) {
    return _then(_value.copyWith(
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryResult>?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryResult>?,
      narrators: freezed == narrators
          ? _value.narrators
          : narrators // ignore: cast_nullable_to_non_nullable
              as List<SearchResultNarrator>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryAuthor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchLibraryImplCopyWith<$Res>
    implements $SearchLibraryCopyWith<$Res> {
  factory _$$SearchLibraryImplCopyWith(
          _$SearchLibraryImpl value, $Res Function(_$SearchLibraryImpl) then) =
      __$$SearchLibraryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "book") List<SearchLibraryResult>? book,
      @JsonKey(name: "podcast") List<SearchLibraryResult>? podcast,
      @JsonKey(name: "narrators") List<SearchResultNarrator>? narrators,
      @JsonKey(name: "tags") List<SearchResultItem>? tags,
      @JsonKey(name: "genres") List<SearchResultItem>? genres,
      @JsonKey(name: "series") List<Series>? series,
      @JsonKey(name: "authors") List<SearchLibraryAuthor>? authors});
}

/// @nodoc
class __$$SearchLibraryImplCopyWithImpl<$Res>
    extends _$SearchLibraryCopyWithImpl<$Res, _$SearchLibraryImpl>
    implements _$$SearchLibraryImplCopyWith<$Res> {
  __$$SearchLibraryImplCopyWithImpl(
      _$SearchLibraryImpl _value, $Res Function(_$SearchLibraryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLibrary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = freezed,
    Object? podcast = freezed,
    Object? narrators = freezed,
    Object? tags = freezed,
    Object? genres = freezed,
    Object? series = freezed,
    Object? authors = freezed,
  }) {
    return _then(_$SearchLibraryImpl(
      book: freezed == book
          ? _value._book
          : book // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryResult>?,
      podcast: freezed == podcast
          ? _value._podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryResult>?,
      narrators: freezed == narrators
          ? _value._narrators
          : narrators // ignore: cast_nullable_to_non_nullable
              as List<SearchResultNarrator>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItem>?,
      series: freezed == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<SearchLibraryAuthor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchLibraryImpl implements _SearchLibrary {
  const _$SearchLibraryImpl(
      {@JsonKey(name: "book") final List<SearchLibraryResult>? book,
      @JsonKey(name: "podcast") final List<SearchLibraryResult>? podcast,
      @JsonKey(name: "narrators") final List<SearchResultNarrator>? narrators,
      @JsonKey(name: "tags") final List<SearchResultItem>? tags,
      @JsonKey(name: "genres") final List<SearchResultItem>? genres,
      @JsonKey(name: "series") final List<Series>? series,
      @JsonKey(name: "authors") final List<SearchLibraryAuthor>? authors})
      : _book = book,
        _podcast = podcast,
        _narrators = narrators,
        _tags = tags,
        _genres = genres,
        _series = series,
        _authors = authors;

  factory _$SearchLibraryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchLibraryImplFromJson(json);

  final List<SearchLibraryResult>? _book;
  @override
  @JsonKey(name: "book")
  List<SearchLibraryResult>? get book {
    final value = _book;
    if (value == null) return null;
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchLibraryResult>? _podcast;
  @override
  @JsonKey(name: "podcast")
  List<SearchLibraryResult>? get podcast {
    final value = _podcast;
    if (value == null) return null;
    if (_podcast is EqualUnmodifiableListView) return _podcast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchResultNarrator>? _narrators;
  @override
  @JsonKey(name: "narrators")
  List<SearchResultNarrator>? get narrators {
    final value = _narrators;
    if (value == null) return null;
    if (_narrators is EqualUnmodifiableListView) return _narrators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchResultItem>? _tags;
  @override
  @JsonKey(name: "tags")
  List<SearchResultItem>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchResultItem>? _genres;
  @override
  @JsonKey(name: "genres")
  List<SearchResultItem>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Series>? _series;
  @override
  @JsonKey(name: "series")
  List<Series>? get series {
    final value = _series;
    if (value == null) return null;
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SearchLibraryAuthor>? _authors;
  @override
  @JsonKey(name: "authors")
  List<SearchLibraryAuthor>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchLibrary(book: $book, podcast: $podcast, narrators: $narrators, tags: $tags, genres: $genres, series: $series, authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLibraryImpl &&
            const DeepCollectionEquality().equals(other._book, _book) &&
            const DeepCollectionEquality().equals(other._podcast, _podcast) &&
            const DeepCollectionEquality()
                .equals(other._narrators, _narrators) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_book),
      const DeepCollectionEquality().hash(_podcast),
      const DeepCollectionEquality().hash(_narrators),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_series),
      const DeepCollectionEquality().hash(_authors));

  /// Create a copy of SearchLibrary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLibraryImplCopyWith<_$SearchLibraryImpl> get copyWith =>
      __$$SearchLibraryImplCopyWithImpl<_$SearchLibraryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchLibraryImplToJson(
      this,
    );
  }
}

abstract class _SearchLibrary implements SearchLibrary {
  const factory _SearchLibrary(
      {@JsonKey(name: "book") final List<SearchLibraryResult>? book,
      @JsonKey(name: "podcast") final List<SearchLibraryResult>? podcast,
      @JsonKey(name: "narrators") final List<SearchResultNarrator>? narrators,
      @JsonKey(name: "tags") final List<SearchResultItem>? tags,
      @JsonKey(name: "genres") final List<SearchResultItem>? genres,
      @JsonKey(name: "series") final List<Series>? series,
      @JsonKey(name: "authors")
      final List<SearchLibraryAuthor>? authors}) = _$SearchLibraryImpl;

  factory _SearchLibrary.fromJson(Map<String, dynamic> json) =
      _$SearchLibraryImpl.fromJson;

  @override
  @JsonKey(name: "book")
  List<SearchLibraryResult>? get book;
  @override
  @JsonKey(name: "podcast")
  List<SearchLibraryResult>? get podcast;
  @override
  @JsonKey(name: "narrators")
  List<SearchResultNarrator>? get narrators;
  @override
  @JsonKey(name: "tags")
  List<SearchResultItem>? get tags;
  @override
  @JsonKey(name: "genres")
  List<SearchResultItem>? get genres;
  @override
  @JsonKey(name: "series")
  List<Series>? get series;
  @override
  @JsonKey(name: "authors")
  List<SearchLibraryAuthor>? get authors;

  /// Create a copy of SearchLibrary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLibraryImplCopyWith<_$SearchLibraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchLibraryResult _$SearchLibraryResultFromJson(Map<String, dynamic> json) {
  return _SearchLibraryResult.fromJson(json);
}

/// @nodoc
mixin _$SearchLibraryResult {
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem => throw _privateConstructorUsedError;
  @JsonKey(name: "matchKey")
  String? get matchKey => throw _privateConstructorUsedError;
  @JsonKey(name: "matchText")
  String? get matchText => throw _privateConstructorUsedError;

  /// Serializes this SearchLibraryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchLibraryResultCopyWith<SearchLibraryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLibraryResultCopyWith<$Res> {
  factory $SearchLibraryResultCopyWith(
          SearchLibraryResult value, $Res Function(SearchLibraryResult) then) =
      _$SearchLibraryResultCopyWithImpl<$Res, SearchLibraryResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItem") LibraryItem? libraryItem,
      @JsonKey(name: "matchKey") String? matchKey,
      @JsonKey(name: "matchText") String? matchText});

  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class _$SearchLibraryResultCopyWithImpl<$Res, $Val extends SearchLibraryResult>
    implements $SearchLibraryResultCopyWith<$Res> {
  _$SearchLibraryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryItem = freezed,
    Object? matchKey = freezed,
    Object? matchText = freezed,
  }) {
    return _then(_value.copyWith(
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
      matchKey: freezed == matchKey
          ? _value.matchKey
          : matchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      matchText: freezed == matchText
          ? _value.matchText
          : matchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LibraryItemCopyWith<$Res>? get libraryItem {
    if (_value.libraryItem == null) {
      return null;
    }

    return $LibraryItemCopyWith<$Res>(_value.libraryItem!, (value) {
      return _then(_value.copyWith(libraryItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchLibraryResultImplCopyWith<$Res>
    implements $SearchLibraryResultCopyWith<$Res> {
  factory _$$SearchLibraryResultImplCopyWith(_$SearchLibraryResultImpl value,
          $Res Function(_$SearchLibraryResultImpl) then) =
      __$$SearchLibraryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "libraryItem") LibraryItem? libraryItem,
      @JsonKey(name: "matchKey") String? matchKey,
      @JsonKey(name: "matchText") String? matchText});

  @override
  $LibraryItemCopyWith<$Res>? get libraryItem;
}

/// @nodoc
class __$$SearchLibraryResultImplCopyWithImpl<$Res>
    extends _$SearchLibraryResultCopyWithImpl<$Res, _$SearchLibraryResultImpl>
    implements _$$SearchLibraryResultImplCopyWith<$Res> {
  __$$SearchLibraryResultImplCopyWithImpl(_$SearchLibraryResultImpl _value,
      $Res Function(_$SearchLibraryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? libraryItem = freezed,
    Object? matchKey = freezed,
    Object? matchText = freezed,
  }) {
    return _then(_$SearchLibraryResultImpl(
      libraryItem: freezed == libraryItem
          ? _value.libraryItem
          : libraryItem // ignore: cast_nullable_to_non_nullable
              as LibraryItem?,
      matchKey: freezed == matchKey
          ? _value.matchKey
          : matchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      matchText: freezed == matchText
          ? _value.matchText
          : matchText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchLibraryResultImpl implements _SearchLibraryResult {
  const _$SearchLibraryResultImpl(
      {@JsonKey(name: "libraryItem") this.libraryItem,
      @JsonKey(name: "matchKey") this.matchKey,
      @JsonKey(name: "matchText") this.matchText});

  factory _$SearchLibraryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchLibraryResultImplFromJson(json);

  @override
  @JsonKey(name: "libraryItem")
  final LibraryItem? libraryItem;
  @override
  @JsonKey(name: "matchKey")
  final String? matchKey;
  @override
  @JsonKey(name: "matchText")
  final String? matchText;

  @override
  String toString() {
    return 'SearchLibraryResult(libraryItem: $libraryItem, matchKey: $matchKey, matchText: $matchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLibraryResultImpl &&
            (identical(other.libraryItem, libraryItem) ||
                other.libraryItem == libraryItem) &&
            (identical(other.matchKey, matchKey) ||
                other.matchKey == matchKey) &&
            (identical(other.matchText, matchText) ||
                other.matchText == matchText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, libraryItem, matchKey, matchText);

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLibraryResultImplCopyWith<_$SearchLibraryResultImpl> get copyWith =>
      __$$SearchLibraryResultImplCopyWithImpl<_$SearchLibraryResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchLibraryResultImplToJson(
      this,
    );
  }
}

abstract class _SearchLibraryResult implements SearchLibraryResult {
  const factory _SearchLibraryResult(
          {@JsonKey(name: "libraryItem") final LibraryItem? libraryItem,
          @JsonKey(name: "matchKey") final String? matchKey,
          @JsonKey(name: "matchText") final String? matchText}) =
      _$SearchLibraryResultImpl;

  factory _SearchLibraryResult.fromJson(Map<String, dynamic> json) =
      _$SearchLibraryResultImpl.fromJson;

  @override
  @JsonKey(name: "libraryItem")
  LibraryItem? get libraryItem;
  @override
  @JsonKey(name: "matchKey")
  String? get matchKey;
  @override
  @JsonKey(name: "matchText")
  String? get matchText;

  /// Create a copy of SearchLibraryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLibraryResultImplCopyWith<_$SearchLibraryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultItem _$SearchResultItemFromJson(Map<String, dynamic> json) {
  return _SearchResultItem.fromJson(json);
}

/// @nodoc
mixin _$SearchResultItem {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "numItems")
  int get numItems => throw _privateConstructorUsedError;

  /// Serializes this SearchResultItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultItemCopyWith<SearchResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultItemCopyWith<$Res> {
  factory $SearchResultItemCopyWith(
          SearchResultItem value, $Res Function(SearchResultItem) then) =
      _$SearchResultItemCopyWithImpl<$Res, SearchResultItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "numItems") int numItems});
}

/// @nodoc
class _$SearchResultItemCopyWithImpl<$Res, $Val extends SearchResultItem>
    implements $SearchResultItemCopyWith<$Res> {
  _$SearchResultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numItems = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numItems: null == numItems
          ? _value.numItems
          : numItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultItemImplCopyWith<$Res>
    implements $SearchResultItemCopyWith<$Res> {
  factory _$$SearchResultItemImplCopyWith(_$SearchResultItemImpl value,
          $Res Function(_$SearchResultItemImpl) then) =
      __$$SearchResultItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "numItems") int numItems});
}

/// @nodoc
class __$$SearchResultItemImplCopyWithImpl<$Res>
    extends _$SearchResultItemCopyWithImpl<$Res, _$SearchResultItemImpl>
    implements _$$SearchResultItemImplCopyWith<$Res> {
  __$$SearchResultItemImplCopyWithImpl(_$SearchResultItemImpl _value,
      $Res Function(_$SearchResultItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numItems = null,
  }) {
    return _then(_$SearchResultItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numItems: null == numItems
          ? _value.numItems
          : numItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultItemImpl implements _SearchResultItem {
  const _$SearchResultItemImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "numItems") required this.numItems});

  factory _$SearchResultItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultItemImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "numItems")
  final int numItems;

  @override
  String toString() {
    return 'SearchResultItem(name: $name, numItems: $numItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numItems, numItems) ||
                other.numItems == numItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, numItems);

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      __$$SearchResultItemImplCopyWithImpl<_$SearchResultItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultItemImplToJson(
      this,
    );
  }
}

abstract class _SearchResultItem implements SearchResultItem {
  const factory _SearchResultItem(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "numItems") required final int numItems}) =
      _$SearchResultItemImpl;

  factory _SearchResultItem.fromJson(Map<String, dynamic> json) =
      _$SearchResultItemImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "numItems")
  int get numItems;

  /// Create a copy of SearchResultItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultItemImplCopyWith<_$SearchResultItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultNarrator _$SearchResultNarratorFromJson(Map<String, dynamic> json) {
  return _SearchResultNarrator.fromJson(json);
}

/// @nodoc
mixin _$SearchResultNarrator {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "numItems")
  int get numItems => throw _privateConstructorUsedError;

  /// Serializes this SearchResultNarrator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResultNarrator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultNarratorCopyWith<SearchResultNarrator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultNarratorCopyWith<$Res> {
  factory $SearchResultNarratorCopyWith(SearchResultNarrator value,
          $Res Function(SearchResultNarrator) then) =
      _$SearchResultNarratorCopyWithImpl<$Res, SearchResultNarrator>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "numItems") int numItems});
}

/// @nodoc
class _$SearchResultNarratorCopyWithImpl<$Res,
        $Val extends SearchResultNarrator>
    implements $SearchResultNarratorCopyWith<$Res> {
  _$SearchResultNarratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResultNarrator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numItems = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numItems: null == numItems
          ? _value.numItems
          : numItems // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultNarratorImplCopyWith<$Res>
    implements $SearchResultNarratorCopyWith<$Res> {
  factory _$$SearchResultNarratorImplCopyWith(_$SearchResultNarratorImpl value,
          $Res Function(_$SearchResultNarratorImpl) then) =
      __$$SearchResultNarratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "numItems") int numItems});
}

/// @nodoc
class __$$SearchResultNarratorImplCopyWithImpl<$Res>
    extends _$SearchResultNarratorCopyWithImpl<$Res, _$SearchResultNarratorImpl>
    implements _$$SearchResultNarratorImplCopyWith<$Res> {
  __$$SearchResultNarratorImplCopyWithImpl(_$SearchResultNarratorImpl _value,
      $Res Function(_$SearchResultNarratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchResultNarrator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? numItems = null,
  }) {
    return _then(_$SearchResultNarratorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numItems: null == numItems
          ? _value.numItems
          : numItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultNarratorImpl implements _SearchResultNarrator {
  const _$SearchResultNarratorImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "numItems") required this.numItems});

  factory _$SearchResultNarratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultNarratorImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "numItems")
  final int numItems;

  @override
  String toString() {
    return 'SearchResultNarrator(name: $name, numItems: $numItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultNarratorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numItems, numItems) ||
                other.numItems == numItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, numItems);

  /// Create a copy of SearchResultNarrator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultNarratorImplCopyWith<_$SearchResultNarratorImpl>
      get copyWith =>
          __$$SearchResultNarratorImplCopyWithImpl<_$SearchResultNarratorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultNarratorImplToJson(
      this,
    );
  }
}

abstract class _SearchResultNarrator implements SearchResultNarrator {
  const factory _SearchResultNarrator(
          {@JsonKey(name: "name") required final String name,
          @JsonKey(name: "numItems") required final int numItems}) =
      _$SearchResultNarratorImpl;

  factory _SearchResultNarrator.fromJson(Map<String, dynamic> json) =
      _$SearchResultNarratorImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "numItems")
  int get numItems;

  /// Create a copy of SearchResultNarrator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultNarratorImplCopyWith<_$SearchResultNarratorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
