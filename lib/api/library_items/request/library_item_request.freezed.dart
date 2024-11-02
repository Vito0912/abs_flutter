// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LibraryItemRequest _$LibraryItemRequestFromJson(Map<String, dynamic> json) {
  return _LibraryItemRequest.fromJson(json);
}

/// @nodoc
mixin _$LibraryItemRequest {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "expanded")
  int? get expanded => throw _privateConstructorUsedError;
  @JsonKey(name: "include")
  String? get include => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  String? get episode => throw _privateConstructorUsedError;

  /// Serializes this LibraryItemRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LibraryItemRequestCopyWith<LibraryItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryItemRequestCopyWith<$Res> {
  factory $LibraryItemRequestCopyWith(
          LibraryItemRequest value, $Res Function(LibraryItemRequest) then) =
      _$LibraryItemRequestCopyWithImpl<$Res, LibraryItemRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "expanded") int? expanded,
      @JsonKey(name: "include") String? include,
      @JsonKey(name: "episode") String? episode});
}

/// @nodoc
class _$LibraryItemRequestCopyWithImpl<$Res, $Val extends LibraryItemRequest>
    implements $LibraryItemRequestCopyWith<$Res> {
  _$LibraryItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expanded = freezed,
    Object? include = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as int?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LibraryItemRequestImplCopyWith<$Res>
    implements $LibraryItemRequestCopyWith<$Res> {
  factory _$$LibraryItemRequestImplCopyWith(_$LibraryItemRequestImpl value,
          $Res Function(_$LibraryItemRequestImpl) then) =
      __$$LibraryItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "expanded") int? expanded,
      @JsonKey(name: "include") String? include,
      @JsonKey(name: "episode") String? episode});
}

/// @nodoc
class __$$LibraryItemRequestImplCopyWithImpl<$Res>
    extends _$LibraryItemRequestCopyWithImpl<$Res, _$LibraryItemRequestImpl>
    implements _$$LibraryItemRequestImplCopyWith<$Res> {
  __$$LibraryItemRequestImplCopyWithImpl(_$LibraryItemRequestImpl _value,
      $Res Function(_$LibraryItemRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expanded = freezed,
    Object? include = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$LibraryItemRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as int?,
      include: freezed == include
          ? _value.include
          : include // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LibraryItemRequestImpl implements _LibraryItemRequest {
  const _$LibraryItemRequestImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "expanded") this.expanded,
      @JsonKey(name: "include") this.include,
      @JsonKey(name: "episode") this.episode});

  factory _$LibraryItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LibraryItemRequestImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "expanded")
  final int? expanded;
  @override
  @JsonKey(name: "include")
  final String? include;
  @override
  @JsonKey(name: "episode")
  final String? episode;

  @override
  String toString() {
    return 'LibraryItemRequest(id: $id, expanded: $expanded, include: $include, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LibraryItemRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded) &&
            (identical(other.include, include) || other.include == include) &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, expanded, include, episode);

  /// Create a copy of LibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LibraryItemRequestImplCopyWith<_$LibraryItemRequestImpl> get copyWith =>
      __$$LibraryItemRequestImplCopyWithImpl<_$LibraryItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LibraryItemRequestImplToJson(
      this,
    );
  }
}

abstract class _LibraryItemRequest implements LibraryItemRequest {
  const factory _LibraryItemRequest(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "expanded") final int? expanded,
          @JsonKey(name: "include") final String? include,
          @JsonKey(name: "episode") final String? episode}) =
      _$LibraryItemRequestImpl;

  factory _LibraryItemRequest.fromJson(Map<String, dynamic> json) =
      _$LibraryItemRequestImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "expanded")
  int? get expanded;
  @override
  @JsonKey(name: "include")
  String? get include;
  @override
  @JsonKey(name: "episode")
  String? get episode;

  /// Create a copy of LibraryItemRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LibraryItemRequestImplCopyWith<_$LibraryItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
