// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollectionResponse _$CollectionResponseFromJson(Map<String, dynamic> json) {
  return _CollectionResponse.fromJson(json);
}

/// @nodoc
mixin _$CollectionResponse {
  @JsonKey(name: "collections")
  List<Collection> get items => throw _privateConstructorUsedError;

  /// Serializes this CollectionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionResponseCopyWith<CollectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionResponseCopyWith<$Res> {
  factory $CollectionResponseCopyWith(
          CollectionResponse value, $Res Function(CollectionResponse) then) =
      _$CollectionResponseCopyWithImpl<$Res, CollectionResponse>;
  @useResult
  $Res call({@JsonKey(name: "collections") List<Collection> items});
}

/// @nodoc
class _$CollectionResponseCopyWithImpl<$Res, $Val extends CollectionResponse>
    implements $CollectionResponseCopyWith<$Res> {
  _$CollectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionResponseImplCopyWith<$Res>
    implements $CollectionResponseCopyWith<$Res> {
  factory _$$CollectionResponseImplCopyWith(_$CollectionResponseImpl value,
          $Res Function(_$CollectionResponseImpl) then) =
      __$$CollectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "collections") List<Collection> items});
}

/// @nodoc
class __$$CollectionResponseImplCopyWithImpl<$Res>
    extends _$CollectionResponseCopyWithImpl<$Res, _$CollectionResponseImpl>
    implements _$$CollectionResponseImplCopyWith<$Res> {
  __$$CollectionResponseImplCopyWithImpl(_$CollectionResponseImpl _value,
      $Res Function(_$CollectionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$CollectionResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Collection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectionResponseImpl implements _CollectionResponse {
  const _$CollectionResponseImpl(
      {@JsonKey(name: "collections") required final List<Collection> items})
      : _items = items;

  factory _$CollectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectionResponseImplFromJson(json);

  final List<Collection> _items;
  @override
  @JsonKey(name: "collections")
  List<Collection> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CollectionResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionResponseImplCopyWith<_$CollectionResponseImpl> get copyWith =>
      __$$CollectionResponseImplCopyWithImpl<_$CollectionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectionResponseImplToJson(
      this,
    );
  }
}

abstract class _CollectionResponse implements CollectionResponse {
  const factory _CollectionResponse(
      {@JsonKey(name: "collections")
      required final List<Collection> items}) = _$CollectionResponseImpl;

  factory _CollectionResponse.fromJson(Map<String, dynamic> json) =
      _$CollectionResponseImpl.fromJson;

  @override
  @JsonKey(name: "collections")
  List<Collection> get items;

  /// Create a copy of CollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionResponseImplCopyWith<_$CollectionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
