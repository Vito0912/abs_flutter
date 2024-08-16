// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_series_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibrarySeriesPreview _$LibrarySeriesPreviewFromJson(Map<String, dynamic> json) {
  return _LibrarySeriesPreview.fromJson(json);
}

/// @nodoc
mixin _$LibrarySeriesPreview {
  List<LibraryPreviewItem> get books => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get libraryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this LibrarySeriesPreview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibrarySeriesPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibrarySeriesPreviewCopyWith<LibrarySeriesPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibrarySeriesPreviewCopyWith<$Res> {
  factory $LibrarySeriesPreviewCopyWith(LibrarySeriesPreview value,
          $Res Function(LibrarySeriesPreview) then) =
      _$LibrarySeriesPreviewCopyWithImpl<$Res, LibrarySeriesPreview>;
  @useResult
  $Res call(
      {List<LibraryPreviewItem> books,
      int total,
      int page,
      String id,
      String libraryId,
      String name,
      String? description});
}

/// @nodoc
class _$LibrarySeriesPreviewCopyWithImpl<$Res,
        $Val extends LibrarySeriesPreview>
    implements $LibrarySeriesPreviewCopyWith<$Res> {
  _$LibrarySeriesPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibrarySeriesPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? total = null,
    Object? page = null,
    Object? id = null,
    Object? libraryId = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryPreviewItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibrarySeriesPreviewImplCopyWith<$Res>
    implements $LibrarySeriesPreviewCopyWith<$Res> {
  factory _$$LibrarySeriesPreviewImplCopyWith(_$LibrarySeriesPreviewImpl value,
          $Res Function(_$LibrarySeriesPreviewImpl) then) =
      __$$LibrarySeriesPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LibraryPreviewItem> books,
      int total,
      int page,
      String id,
      String libraryId,
      String name,
      String? description});
}

/// @nodoc
class __$$LibrarySeriesPreviewImplCopyWithImpl<$Res>
    extends _$LibrarySeriesPreviewCopyWithImpl<$Res, _$LibrarySeriesPreviewImpl>
    implements _$$LibrarySeriesPreviewImplCopyWith<$Res> {
  __$$LibrarySeriesPreviewImplCopyWithImpl(_$LibrarySeriesPreviewImpl _value,
      $Res Function(_$LibrarySeriesPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibrarySeriesPreview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? total = null,
    Object? page = null,
    Object? id = null,
    Object? libraryId = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$LibrarySeriesPreviewImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<LibraryPreviewItem>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      libraryId: null == libraryId
          ? _value.libraryId
          : libraryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibrarySeriesPreviewImpl extends _LibrarySeriesPreview
    with DiagnosticableTreeMixin {
  _$LibrarySeriesPreviewImpl(
      {required final List<LibraryPreviewItem> books,
      required this.total,
      required this.page,
      required this.id,
      required this.libraryId,
      required this.name,
      this.description})
      : _books = books,
        super._();

  factory _$LibrarySeriesPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibrarySeriesPreviewImplFromJson(json);

  final List<LibraryPreviewItem> _books;
  @override
  List<LibraryPreviewItem> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final String id;
  @override
  final String libraryId;
  @override
  final String name;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibrarySeriesPreview(books: $books, total: $total, page: $page, id: $id, libraryId: $libraryId, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LibrarySeriesPreview'))
      ..add(DiagnosticsProperty('books', books))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('libraryId', libraryId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibrarySeriesPreviewImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.libraryId, libraryId) ||
                other.libraryId == libraryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      total,
      page,
      id,
      libraryId,
      name,
      description);

  /// Create a copy of LibrarySeriesPreview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibrarySeriesPreviewImplCopyWith<_$LibrarySeriesPreviewImpl>
      get copyWith =>
          __$$LibrarySeriesPreviewImplCopyWithImpl<_$LibrarySeriesPreviewImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibrarySeriesPreviewImplToJson(
      this,
    );
  }
}

abstract class _LibrarySeriesPreview extends LibrarySeriesPreview {
  factory _LibrarySeriesPreview(
      {required final List<LibraryPreviewItem> books,
      required final int total,
      required final int page,
      required final String id,
      required final String libraryId,
      required final String name,
      final String? description}) = _$LibrarySeriesPreviewImpl;
  _LibrarySeriesPreview._() : super._();

  factory _LibrarySeriesPreview.fromJson(Map<String, dynamic> json) =
      _$LibrarySeriesPreviewImpl.fromJson;

  @override
  List<LibraryPreviewItem> get books;
  @override
  int get total;
  @override
  int get page;
  @override
  String get id;
  @override
  String get libraryId;
  @override
  String get name;
  @override
  String? get description;

  /// Create a copy of LibrarySeriesPreview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibrarySeriesPreviewImplCopyWith<_$LibrarySeriesPreviewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
