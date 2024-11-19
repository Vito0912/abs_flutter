// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaMetadata _$MediaMetadataFromJson(Map<String, dynamic> json) {
  return _MediaMetadata.fromJson(json);
}

/// @nodoc
mixin _$MediaMetadata {
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "subtitle")
  String? get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: "authors")
  List<Author>? get authors => throw _privateConstructorUsedError;
  @JsonKey(name: "narrators")
  List<String>? get narrators => throw _privateConstructorUsedError;
  @JsonKey(name: "series")
  @SeriesConverter()
  List<Series>? get series => throw _privateConstructorUsedError;
  @JsonKey(name: "genres")
  List<String>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedYear")
  String? get publishedYear => throw _privateConstructorUsedError;
  @JsonKey(name: "publishedDate")
  String? get publishedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "publisher")
  String? get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "isbn")
  String? get isbn => throw _privateConstructorUsedError;
  @JsonKey(name: "asin")
  String? get asin => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: "explicit")
  bool? get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: "abridged")
  bool? get abridged => throw _privateConstructorUsedError;

  /// Serializes this MediaMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaMetadataCopyWith<MediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaMetadataCopyWith<$Res> {
  factory $MediaMetadataCopyWith(
          MediaMetadata value, $Res Function(MediaMetadata) then) =
      _$MediaMetadataCopyWithImpl<$Res, MediaMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "subtitle") String? subtitle,
      @JsonKey(name: "authors") List<Author>? authors,
      @JsonKey(name: "narrators") List<String>? narrators,
      @JsonKey(name: "series") @SeriesConverter() List<Series>? series,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "publishedYear") String? publishedYear,
      @JsonKey(name: "publishedDate") String? publishedDate,
      @JsonKey(name: "publisher") String? publisher,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isbn") String? isbn,
      @JsonKey(name: "asin") String? asin,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "explicit") bool? explicit,
      @JsonKey(name: "abridged") bool? abridged});
}

/// @nodoc
class _$MediaMetadataCopyWithImpl<$Res, $Val extends MediaMetadata>
    implements $MediaMetadataCopyWith<$Res> {
  _$MediaMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? authors = freezed,
    Object? narrators = freezed,
    Object? series = freezed,
    Object? genres = freezed,
    Object? publishedYear = freezed,
    Object? publishedDate = freezed,
    Object? publisher = freezed,
    Object? description = freezed,
    Object? isbn = freezed,
    Object? asin = freezed,
    Object? language = freezed,
    Object? explicit = freezed,
    Object? abridged = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      narrators: freezed == narrators
          ? _value.narrators
          : narrators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publishedYear: freezed == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      asin: freezed == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      abridged: freezed == abridged
          ? _value.abridged
          : abridged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaMetadataImplCopyWith<$Res>
    implements $MediaMetadataCopyWith<$Res> {
  factory _$$MediaMetadataImplCopyWith(
          _$MediaMetadataImpl value, $Res Function(_$MediaMetadataImpl) then) =
      __$$MediaMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String title,
      @JsonKey(name: "subtitle") String? subtitle,
      @JsonKey(name: "authors") List<Author>? authors,
      @JsonKey(name: "narrators") List<String>? narrators,
      @JsonKey(name: "series") @SeriesConverter() List<Series>? series,
      @JsonKey(name: "genres") List<String>? genres,
      @JsonKey(name: "publishedYear") String? publishedYear,
      @JsonKey(name: "publishedDate") String? publishedDate,
      @JsonKey(name: "publisher") String? publisher,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isbn") String? isbn,
      @JsonKey(name: "asin") String? asin,
      @JsonKey(name: "language") String? language,
      @JsonKey(name: "explicit") bool? explicit,
      @JsonKey(name: "abridged") bool? abridged});
}

/// @nodoc
class __$$MediaMetadataImplCopyWithImpl<$Res>
    extends _$MediaMetadataCopyWithImpl<$Res, _$MediaMetadataImpl>
    implements _$$MediaMetadataImplCopyWith<$Res> {
  __$$MediaMetadataImplCopyWithImpl(
      _$MediaMetadataImpl _value, $Res Function(_$MediaMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = freezed,
    Object? authors = freezed,
    Object? narrators = freezed,
    Object? series = freezed,
    Object? genres = freezed,
    Object? publishedYear = freezed,
    Object? publishedDate = freezed,
    Object? publisher = freezed,
    Object? description = freezed,
    Object? isbn = freezed,
    Object? asin = freezed,
    Object? language = freezed,
    Object? explicit = freezed,
    Object? abridged = freezed,
  }) {
    return _then(_$MediaMetadataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<Author>?,
      narrators: freezed == narrators
          ? _value._narrators
          : narrators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      series: freezed == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publishedYear: freezed == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      asin: freezed == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      explicit: freezed == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool?,
      abridged: freezed == abridged
          ? _value.abridged
          : abridged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaMetadataImpl implements _MediaMetadata {
  const _$MediaMetadataImpl(
      {@JsonKey(name: "title") required this.title,
      @JsonKey(name: "subtitle") this.subtitle,
      @JsonKey(name: "authors") final List<Author>? authors,
      @JsonKey(name: "narrators") final List<String>? narrators,
      @JsonKey(name: "series") @SeriesConverter() final List<Series>? series,
      @JsonKey(name: "genres") final List<String>? genres,
      @JsonKey(name: "publishedYear") this.publishedYear,
      @JsonKey(name: "publishedDate") this.publishedDate,
      @JsonKey(name: "publisher") this.publisher,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "isbn") this.isbn,
      @JsonKey(name: "asin") this.asin,
      @JsonKey(name: "language") this.language,
      @JsonKey(name: "explicit") this.explicit,
      @JsonKey(name: "abridged") this.abridged})
      : _authors = authors,
        _narrators = narrators,
        _series = series,
        _genres = genres;

  factory _$MediaMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaMetadataImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "subtitle")
  final String? subtitle;
  final List<Author>? _authors;
  @override
  @JsonKey(name: "authors")
  List<Author>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _narrators;
  @override
  @JsonKey(name: "narrators")
  List<String>? get narrators {
    final value = _narrators;
    if (value == null) return null;
    if (_narrators is EqualUnmodifiableListView) return _narrators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Series>? _series;
  @override
  @JsonKey(name: "series")
  @SeriesConverter()
  List<Series>? get series {
    final value = _series;
    if (value == null) return null;
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _genres;
  @override
  @JsonKey(name: "genres")
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "publishedYear")
  final String? publishedYear;
  @override
  @JsonKey(name: "publishedDate")
  final String? publishedDate;
  @override
  @JsonKey(name: "publisher")
  final String? publisher;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "isbn")
  final String? isbn;
  @override
  @JsonKey(name: "asin")
  final String? asin;
  @override
  @JsonKey(name: "language")
  final String? language;
  @override
  @JsonKey(name: "explicit")
  final bool? explicit;
  @override
  @JsonKey(name: "abridged")
  final bool? abridged;

  @override
  String toString() {
    return 'MediaMetadata(title: $title, subtitle: $subtitle, authors: $authors, narrators: $narrators, series: $series, genres: $genres, publishedYear: $publishedYear, publishedDate: $publishedDate, publisher: $publisher, description: $description, isbn: $isbn, asin: $asin, language: $language, explicit: $explicit, abridged: $abridged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaMetadataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality()
                .equals(other._narrators, _narrators) &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.publishedYear, publishedYear) ||
                other.publishedYear == publishedYear) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.asin, asin) || other.asin == asin) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.abridged, abridged) ||
                other.abridged == abridged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      subtitle,
      const DeepCollectionEquality().hash(_authors),
      const DeepCollectionEquality().hash(_narrators),
      const DeepCollectionEquality().hash(_series),
      const DeepCollectionEquality().hash(_genres),
      publishedYear,
      publishedDate,
      publisher,
      description,
      isbn,
      asin,
      language,
      explicit,
      abridged);

  /// Create a copy of MediaMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaMetadataImplCopyWith<_$MediaMetadataImpl> get copyWith =>
      __$$MediaMetadataImplCopyWithImpl<_$MediaMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaMetadataImplToJson(
      this,
    );
  }
}

abstract class _MediaMetadata implements MediaMetadata {
  const factory _MediaMetadata(
      {@JsonKey(name: "title") required final String title,
      @JsonKey(name: "subtitle") final String? subtitle,
      @JsonKey(name: "authors") final List<Author>? authors,
      @JsonKey(name: "narrators") final List<String>? narrators,
      @JsonKey(name: "series") @SeriesConverter() final List<Series>? series,
      @JsonKey(name: "genres") final List<String>? genres,
      @JsonKey(name: "publishedYear") final String? publishedYear,
      @JsonKey(name: "publishedDate") final String? publishedDate,
      @JsonKey(name: "publisher") final String? publisher,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "isbn") final String? isbn,
      @JsonKey(name: "asin") final String? asin,
      @JsonKey(name: "language") final String? language,
      @JsonKey(name: "explicit") final bool? explicit,
      @JsonKey(name: "abridged") final bool? abridged}) = _$MediaMetadataImpl;

  factory _MediaMetadata.fromJson(Map<String, dynamic> json) =
      _$MediaMetadataImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "subtitle")
  String? get subtitle;
  @override
  @JsonKey(name: "authors")
  List<Author>? get authors;
  @override
  @JsonKey(name: "narrators")
  List<String>? get narrators;
  @override
  @JsonKey(name: "series")
  @SeriesConverter()
  List<Series>? get series;
  @override
  @JsonKey(name: "genres")
  List<String>? get genres;
  @override
  @JsonKey(name: "publishedYear")
  String? get publishedYear;
  @override
  @JsonKey(name: "publishedDate")
  String? get publishedDate;
  @override
  @JsonKey(name: "publisher")
  String? get publisher;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "isbn")
  String? get isbn;
  @override
  @JsonKey(name: "asin")
  String? get asin;
  @override
  @JsonKey(name: "language")
  String? get language;
  @override
  @JsonKey(name: "explicit")
  bool? get explicit;
  @override
  @JsonKey(name: "abridged")
  bool? get abridged;

  /// Create a copy of MediaMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaMetadataImplCopyWith<_$MediaMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
