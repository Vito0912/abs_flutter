// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bookmark_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBookmarkRequest _$CreateBookmarkRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBookmarkRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBookmarkRequest {
  @JsonKey(name: "time")
  int get time => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;

  /// Serializes this CreateBookmarkRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBookmarkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBookmarkRequestCopyWith<CreateBookmarkRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookmarkRequestCopyWith<$Res> {
  factory $CreateBookmarkRequestCopyWith(CreateBookmarkRequest value,
          $Res Function(CreateBookmarkRequest) then) =
      _$CreateBookmarkRequestCopyWithImpl<$Res, CreateBookmarkRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "time") int time, @JsonKey(name: "title") String title});
}

/// @nodoc
class _$CreateBookmarkRequestCopyWithImpl<$Res,
        $Val extends CreateBookmarkRequest>
    implements $CreateBookmarkRequestCopyWith<$Res> {
  _$CreateBookmarkRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBookmarkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBookmarkRequestImplCopyWith<$Res>
    implements $CreateBookmarkRequestCopyWith<$Res> {
  factory _$$CreateBookmarkRequestImplCopyWith(
          _$CreateBookmarkRequestImpl value,
          $Res Function(_$CreateBookmarkRequestImpl) then) =
      __$$CreateBookmarkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "time") int time, @JsonKey(name: "title") String title});
}

/// @nodoc
class __$$CreateBookmarkRequestImplCopyWithImpl<$Res>
    extends _$CreateBookmarkRequestCopyWithImpl<$Res,
        _$CreateBookmarkRequestImpl>
    implements _$$CreateBookmarkRequestImplCopyWith<$Res> {
  __$$CreateBookmarkRequestImplCopyWithImpl(_$CreateBookmarkRequestImpl _value,
      $Res Function(_$CreateBookmarkRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBookmarkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? title = null,
  }) {
    return _then(_$CreateBookmarkRequestImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookmarkRequestImpl implements _CreateBookmarkRequest {
  const _$CreateBookmarkRequestImpl(
      {@JsonKey(name: "time") required this.time,
      @JsonKey(name: "title") required this.title});

  factory _$CreateBookmarkRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookmarkRequestImplFromJson(json);

  @override
  @JsonKey(name: "time")
  final int time;
  @override
  @JsonKey(name: "title")
  final String title;

  @override
  String toString() {
    return 'CreateBookmarkRequest(time: $time, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookmarkRequestImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, title);

  /// Create a copy of CreateBookmarkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookmarkRequestImplCopyWith<_$CreateBookmarkRequestImpl>
      get copyWith => __$$CreateBookmarkRequestImplCopyWithImpl<
          _$CreateBookmarkRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookmarkRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBookmarkRequest implements CreateBookmarkRequest {
  const factory _CreateBookmarkRequest(
          {@JsonKey(name: "time") required final int time,
          @JsonKey(name: "title") required final String title}) =
      _$CreateBookmarkRequestImpl;

  factory _CreateBookmarkRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBookmarkRequestImpl.fromJson;

  @override
  @JsonKey(name: "time")
  int get time;
  @override
  @JsonKey(name: "title")
  String get title;

  /// Create a copy of CreateBookmarkRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBookmarkRequestImplCopyWith<_$CreateBookmarkRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
