// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_listened_to.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemsListenedTo _$ItemsListenedToFromJson(Map<String, dynamic> json) {
  return _ItemsListenedTo.fromJson(json);
}

/// @nodoc
mixin _$ItemsListenedTo {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "timeListening")
  double? get timeListening => throw _privateConstructorUsedError;
  @JsonKey(name: "mediaMetadata")
  Metadata? get mediaMetadata => throw _privateConstructorUsedError;

  /// Serializes this ItemsListenedTo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsListenedToCopyWith<ItemsListenedTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsListenedToCopyWith<$Res> {
  factory $ItemsListenedToCopyWith(
          ItemsListenedTo value, $Res Function(ItemsListenedTo) then) =
      _$ItemsListenedToCopyWithImpl<$Res, ItemsListenedTo>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "timeListening") double? timeListening,
      @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata});

  $MetadataCopyWith<$Res>? get mediaMetadata;
}

/// @nodoc
class _$ItemsListenedToCopyWithImpl<$Res, $Val extends ItemsListenedTo>
    implements $ItemsListenedToCopyWith<$Res> {
  _$ItemsListenedToCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timeListening = freezed,
    Object? mediaMetadata = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeListening: freezed == timeListening
          ? _value.timeListening
          : timeListening // ignore: cast_nullable_to_non_nullable
              as double?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ) as $Val);
  }

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get mediaMetadata {
    if (_value.mediaMetadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.mediaMetadata!, (value) {
      return _then(_value.copyWith(mediaMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemsListenedToImplCopyWith<$Res>
    implements $ItemsListenedToCopyWith<$Res> {
  factory _$$ItemsListenedToImplCopyWith(_$ItemsListenedToImpl value,
          $Res Function(_$ItemsListenedToImpl) then) =
      __$$ItemsListenedToImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "timeListening") double? timeListening,
      @JsonKey(name: "mediaMetadata") Metadata? mediaMetadata});

  @override
  $MetadataCopyWith<$Res>? get mediaMetadata;
}

/// @nodoc
class __$$ItemsListenedToImplCopyWithImpl<$Res>
    extends _$ItemsListenedToCopyWithImpl<$Res, _$ItemsListenedToImpl>
    implements _$$ItemsListenedToImplCopyWith<$Res> {
  __$$ItemsListenedToImplCopyWithImpl(
      _$ItemsListenedToImpl _value, $Res Function(_$ItemsListenedToImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? timeListening = freezed,
    Object? mediaMetadata = freezed,
  }) {
    return _then(_$ItemsListenedToImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      timeListening: freezed == timeListening
          ? _value.timeListening
          : timeListening // ignore: cast_nullable_to_non_nullable
              as double?,
      mediaMetadata: freezed == mediaMetadata
          ? _value.mediaMetadata
          : mediaMetadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsListenedToImpl implements _ItemsListenedTo {
  const _$ItemsListenedToImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "timeListening") this.timeListening,
      @JsonKey(name: "mediaMetadata") this.mediaMetadata});

  factory _$ItemsListenedToImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsListenedToImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "timeListening")
  final double? timeListening;
  @override
  @JsonKey(name: "mediaMetadata")
  final Metadata? mediaMetadata;

  @override
  String toString() {
    return 'ItemsListenedTo(id: $id, timeListening: $timeListening, mediaMetadata: $mediaMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsListenedToImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeListening, timeListening) ||
                other.timeListening == timeListening) &&
            (identical(other.mediaMetadata, mediaMetadata) ||
                other.mediaMetadata == mediaMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timeListening, mediaMetadata);

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsListenedToImplCopyWith<_$ItemsListenedToImpl> get copyWith =>
      __$$ItemsListenedToImplCopyWithImpl<_$ItemsListenedToImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsListenedToImplToJson(
      this,
    );
  }
}

abstract class _ItemsListenedTo implements ItemsListenedTo {
  const factory _ItemsListenedTo(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "timeListening") final double? timeListening,
          @JsonKey(name: "mediaMetadata") final Metadata? mediaMetadata}) =
      _$ItemsListenedToImpl;

  factory _ItemsListenedTo.fromJson(Map<String, dynamic> json) =
      _$ItemsListenedToImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "timeListening")
  double? get timeListening;
  @override
  @JsonKey(name: "mediaMetadata")
  Metadata? get mediaMetadata;

  /// Create a copy of ItemsListenedTo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsListenedToImplCopyWith<_$ItemsListenedToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
