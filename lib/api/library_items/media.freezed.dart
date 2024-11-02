// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  PodcastMedia? get podcastMedia => throw _privateConstructorUsedError;
  BookMedia? get bookMedia => throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call({PodcastMedia? podcastMedia, BookMedia? bookMedia});

  $PodcastMediaCopyWith<$Res>? get podcastMedia;
  $BookMediaCopyWith<$Res>? get bookMedia;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastMedia = freezed,
    Object? bookMedia = freezed,
  }) {
    return _then(_value.copyWith(
      podcastMedia: freezed == podcastMedia
          ? _value.podcastMedia
          : podcastMedia // ignore: cast_nullable_to_non_nullable
              as PodcastMedia?,
      bookMedia: freezed == bookMedia
          ? _value.bookMedia
          : bookMedia // ignore: cast_nullable_to_non_nullable
              as BookMedia?,
    ) as $Val);
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PodcastMediaCopyWith<$Res>? get podcastMedia {
    if (_value.podcastMedia == null) {
      return null;
    }

    return $PodcastMediaCopyWith<$Res>(_value.podcastMedia!, (value) {
      return _then(_value.copyWith(podcastMedia: value) as $Val);
    });
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookMediaCopyWith<$Res>? get bookMedia {
    if (_value.bookMedia == null) {
      return null;
    }

    return $BookMediaCopyWith<$Res>(_value.bookMedia!, (value) {
      return _then(_value.copyWith(bookMedia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PodcastMedia? podcastMedia, BookMedia? bookMedia});

  @override
  $PodcastMediaCopyWith<$Res>? get podcastMedia;
  @override
  $BookMediaCopyWith<$Res>? get bookMedia;
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? podcastMedia = freezed,
    Object? bookMedia = freezed,
  }) {
    return _then(_$MediaImpl(
      podcastMedia: freezed == podcastMedia
          ? _value.podcastMedia
          : podcastMedia // ignore: cast_nullable_to_non_nullable
              as PodcastMedia?,
      bookMedia: freezed == bookMedia
          ? _value.bookMedia
          : bookMedia // ignore: cast_nullable_to_non_nullable
              as BookMedia?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl({this.podcastMedia, this.bookMedia});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  final PodcastMedia? podcastMedia;
  @override
  final BookMedia? bookMedia;

  @override
  String toString() {
    return 'Media(podcastMedia: $podcastMedia, bookMedia: $bookMedia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.podcastMedia, podcastMedia) ||
                other.podcastMedia == podcastMedia) &&
            (identical(other.bookMedia, bookMedia) ||
                other.bookMedia == bookMedia));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, podcastMedia, bookMedia);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {final PodcastMedia? podcastMedia,
      final BookMedia? bookMedia}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  PodcastMedia? get podcastMedia;
  @override
  BookMedia? get bookMedia;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
