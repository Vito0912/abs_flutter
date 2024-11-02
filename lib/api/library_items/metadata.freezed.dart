// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Metadata {
  PodcastMetadata? get podcastMetadata => throw _privateConstructorUsedError;
  MediaMetadata? get bookMetadata => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call({PodcastMetadata? podcastMetadata, MediaMetadata? bookMetadata});

  $PodcastMetadataCopyWith<$Res>? get podcastMetadata;
  $MediaMetadataCopyWith<$Res>? get bookMetadata;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastMetadata = freezed,
    Object? bookMetadata = freezed,
  }) {
    return _then(_value.copyWith(
      podcastMetadata: freezed == podcastMetadata
          ? _value.podcastMetadata
          : podcastMetadata // ignore: cast_nullable_to_non_nullable
              as PodcastMetadata?,
      bookMetadata: freezed == bookMetadata
          ? _value.bookMetadata
          : bookMetadata // ignore: cast_nullable_to_non_nullable
              as MediaMetadata?,
    ) as $Val);
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PodcastMetadataCopyWith<$Res>? get podcastMetadata {
    if (_value.podcastMetadata == null) {
      return null;
    }

    return $PodcastMetadataCopyWith<$Res>(_value.podcastMetadata!, (value) {
      return _then(_value.copyWith(podcastMetadata: value) as $Val);
    });
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MediaMetadataCopyWith<$Res>? get bookMetadata {
    if (_value.bookMetadata == null) {
      return null;
    }

    return $MediaMetadataCopyWith<$Res>(_value.bookMetadata!, (value) {
      return _then(_value.copyWith(bookMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PodcastMetadata? podcastMetadata, MediaMetadata? bookMetadata});

  @override
  $PodcastMetadataCopyWith<$Res>? get podcastMetadata;
  @override
  $MediaMetadataCopyWith<$Res>? get bookMetadata;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastMetadata = freezed,
    Object? bookMetadata = freezed,
  }) {
    return _then(_$MetadataImpl(
      podcastMetadata: freezed == podcastMetadata
          ? _value.podcastMetadata
          : podcastMetadata // ignore: cast_nullable_to_non_nullable
              as PodcastMetadata?,
      bookMetadata: freezed == bookMetadata
          ? _value.bookMetadata
          : bookMetadata // ignore: cast_nullable_to_non_nullable
              as MediaMetadata?,
    ));
  }
}

/// @nodoc

class _$MetadataImpl extends _Metadata {
  const _$MetadataImpl({this.podcastMetadata, this.bookMetadata}) : super._();

  @override
  final PodcastMetadata? podcastMetadata;
  @override
  final MediaMetadata? bookMetadata;

  @override
  String toString() {
    return 'Metadata(podcastMetadata: $podcastMetadata, bookMetadata: $bookMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.podcastMetadata, podcastMetadata) ||
                other.podcastMetadata == podcastMetadata) &&
            (identical(other.bookMetadata, bookMetadata) ||
                other.bookMetadata == bookMetadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, podcastMetadata, bookMetadata);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);
}

abstract class _Metadata extends Metadata {
  const factory _Metadata(
      {final PodcastMetadata? podcastMetadata,
      final MediaMetadata? bookMetadata}) = _$MetadataImpl;
  const _Metadata._() : super._();

  @override
  PodcastMetadata? get podcastMetadata;
  @override
  MediaMetadata? get bookMetadata;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
