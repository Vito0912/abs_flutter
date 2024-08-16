// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_preview_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryPreviewItem _$LibraryPreviewItemFromJson(Map<String, dynamic> json) {
  return _LibraryPreviewItem.fromJson(json);
}

/// @nodoc
mixin _$LibraryPreviewItem {
  String get id => throw _privateConstructorUsedError;
  set id(String value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  set subtitle(String value) => throw _privateConstructorUsedError;
  List<String> get authors => throw _privateConstructorUsedError;
  set authors(List<String> value) => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  set mediaType(String value) => throw _privateConstructorUsedError;
  String? get episodeId => throw _privateConstructorUsedError;
  set episodeId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this LibraryPreviewItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryPreviewItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryPreviewItemCopyWith<LibraryPreviewItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryPreviewItemCopyWith<$Res> {
  factory $LibraryPreviewItemCopyWith(
          LibraryPreviewItem value, $Res Function(LibraryPreviewItem) then) =
      _$LibraryPreviewItemCopyWithImpl<$Res, LibraryPreviewItem>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      List<String> authors,
      String mediaType,
      String? episodeId});
}

/// @nodoc
class _$LibraryPreviewItemCopyWithImpl<$Res, $Val extends LibraryPreviewItem>
    implements $LibraryPreviewItemCopyWith<$Res> {
  _$LibraryPreviewItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryPreviewItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? authors = null,
    Object? mediaType = null,
    Object? episodeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryPreviewItemImplCopyWith<$Res>
    implements $LibraryPreviewItemCopyWith<$Res> {
  factory _$$LibraryPreviewItemImplCopyWith(_$LibraryPreviewItemImpl value,
          $Res Function(_$LibraryPreviewItemImpl) then) =
      __$$LibraryPreviewItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      List<String> authors,
      String mediaType,
      String? episodeId});
}

/// @nodoc
class __$$LibraryPreviewItemImplCopyWithImpl<$Res>
    extends _$LibraryPreviewItemCopyWithImpl<$Res, _$LibraryPreviewItemImpl>
    implements _$$LibraryPreviewItemImplCopyWith<$Res> {
  __$$LibraryPreviewItemImplCopyWithImpl(_$LibraryPreviewItemImpl _value,
      $Res Function(_$LibraryPreviewItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryPreviewItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? authors = null,
    Object? mediaType = null,
    Object? episodeId = freezed,
  }) {
    return _then(_$LibraryPreviewItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryPreviewItemImpl extends _LibraryPreviewItem
    with DiagnosticableTreeMixin {
  _$LibraryPreviewItemImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.authors,
      required this.mediaType,
      this.episodeId})
      : super._();

  factory _$LibraryPreviewItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryPreviewItemImplFromJson(json);

  @override
  String id;
  @override
  String title;
  @override
  String subtitle;
  @override
  List<String> authors;
  @override
  String mediaType;
  @override
  String? episodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LibraryPreviewItem(id: $id, title: $title, subtitle: $subtitle, authors: $authors, mediaType: $mediaType, episodeId: $episodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LibraryPreviewItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('authors', authors))
      ..add(DiagnosticsProperty('mediaType', mediaType))
      ..add(DiagnosticsProperty('episodeId', episodeId));
  }

  /// Create a copy of LibraryPreviewItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryPreviewItemImplCopyWith<_$LibraryPreviewItemImpl> get copyWith =>
      __$$LibraryPreviewItemImplCopyWithImpl<_$LibraryPreviewItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryPreviewItemImplToJson(
      this,
    );
  }
}

abstract class _LibraryPreviewItem extends LibraryPreviewItem {
  factory _LibraryPreviewItem(
      {required String id,
      required String title,
      required String subtitle,
      required List<String> authors,
      required String mediaType,
      String? episodeId}) = _$LibraryPreviewItemImpl;
  _LibraryPreviewItem._() : super._();

  factory _LibraryPreviewItem.fromJson(Map<String, dynamic> json) =
      _$LibraryPreviewItemImpl.fromJson;

  @override
  String get id;
  set id(String value);
  @override
  String get title;
  set title(String value);
  @override
  String get subtitle;
  set subtitle(String value);
  @override
  List<String> get authors;
  set authors(List<String> value);
  @override
  String get mediaType;
  set mediaType(String value);
  @override
  String? get episodeId;
  set episodeId(String? value);

  /// Create a copy of LibraryPreviewItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryPreviewItemImplCopyWith<_$LibraryPreviewItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
