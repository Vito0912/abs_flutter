// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Queue _$QueueFromJson(Map<String, dynamic> json) {
  return _Queue.fromJson(json);
}

/// @nodoc
mixin _$Queue {
  String get itemId => throw _privateConstructorUsedError;
  set itemId(String value) => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String? get episodeId => throw _privateConstructorUsedError;
  set episodeId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this Queue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Queue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueueCopyWith<Queue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueCopyWith<$Res> {
  factory $QueueCopyWith(Queue value, $Res Function(Queue) then) =
      _$QueueCopyWithImpl<$Res, Queue>;
  @useResult
  $Res call({String itemId, String title, String? episodeId});
}

/// @nodoc
class _$QueueCopyWithImpl<$Res, $Val extends Queue>
    implements $QueueCopyWith<$Res> {
  _$QueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Queue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? title = null,
    Object? episodeId = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueueImplCopyWith<$Res> implements $QueueCopyWith<$Res> {
  factory _$$QueueImplCopyWith(
          _$QueueImpl value, $Res Function(_$QueueImpl) then) =
      __$$QueueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String itemId, String title, String? episodeId});
}

/// @nodoc
class __$$QueueImplCopyWithImpl<$Res>
    extends _$QueueCopyWithImpl<$Res, _$QueueImpl>
    implements _$$QueueImplCopyWith<$Res> {
  __$$QueueImplCopyWithImpl(
      _$QueueImpl _value, $Res Function(_$QueueImpl) _then)
      : super(_value, _then);

  /// Create a copy of Queue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? title = null,
    Object? episodeId = freezed,
  }) {
    return _then(_$QueueImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$QueueImpl extends _Queue with DiagnosticableTreeMixin {
  _$QueueImpl({required this.itemId, required this.title, this.episodeId})
      : super._();

  factory _$QueueImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueueImplFromJson(json);

  @override
  String itemId;
  @override
  String title;
  @override
  String? episodeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Queue(itemId: $itemId, title: $title, episodeId: $episodeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Queue'))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('episodeId', episodeId));
  }

  /// Create a copy of Queue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueueImplCopyWith<_$QueueImpl> get copyWith =>
      __$$QueueImplCopyWithImpl<_$QueueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueueImplToJson(
      this,
    );
  }
}

abstract class _Queue extends Queue {
  factory _Queue(
      {required String itemId,
      required String title,
      String? episodeId}) = _$QueueImpl;
  _Queue._() : super._();

  factory _Queue.fromJson(Map<String, dynamic> json) = _$QueueImpl.fromJson;

  @override
  String get itemId;
  set itemId(String value);
  @override
  String get title;
  set title(String value);
  @override
  String? get episodeId;
  set episodeId(String? value);

  /// Create a copy of Queue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueueImplCopyWith<_$QueueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
