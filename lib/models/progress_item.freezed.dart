// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProgressItem _$ProgressItemFromJson(Map<String, dynamic> json) {
  return _ProgressItem.fromJson(json);
}

/// @nodoc
mixin _$ProgressItem {
  String get itemId => throw _privateConstructorUsedError;
  set itemId(String value) => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  set userId(String value) => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;
  set sessionId(String? value) => throw _privateConstructorUsedError;
  String? get episodeId => throw _privateConstructorUsedError;
  set episodeId(String? value) => throw _privateConstructorUsedError;
  double get currentTime => throw _privateConstructorUsedError;
  set currentTime(double value) => throw _privateConstructorUsedError;
  double get timeListened => throw _privateConstructorUsedError;
  set timeListened(double value) => throw _privateConstructorUsedError;
  double get durationOfItem => throw _privateConstructorUsedError;
  set durationOfItem(double value) => throw _privateConstructorUsedError;
  double get startTime => throw _privateConstructorUsedError;
  set startTime(double value) => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  set type(String value) => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  set success(bool? value) => throw _privateConstructorUsedError;

  /// Serializes this ProgressItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressItemCopyWith<ProgressItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressItemCopyWith<$Res> {
  factory $ProgressItemCopyWith(
          ProgressItem value, $Res Function(ProgressItem) then) =
      _$ProgressItemCopyWithImpl<$Res, ProgressItem>;
  @useResult
  $Res call(
      {String itemId,
      String userId,
      String? sessionId,
      String? episodeId,
      double currentTime,
      double timeListened,
      double durationOfItem,
      double startTime,
      String type,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? success});
}

/// @nodoc
class _$ProgressItemCopyWithImpl<$Res, $Val extends ProgressItem>
    implements $ProgressItemCopyWith<$Res> {
  _$ProgressItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? userId = null,
    Object? sessionId = freezed,
    Object? episodeId = freezed,
    Object? currentTime = null,
    Object? timeListened = null,
    Object? durationOfItem = null,
    Object? startTime = null,
    Object? type = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double,
      timeListened: null == timeListened
          ? _value.timeListened
          : timeListened // ignore: cast_nullable_to_non_nullable
              as double,
      durationOfItem: null == durationOfItem
          ? _value.durationOfItem
          : durationOfItem // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressItemImplCopyWith<$Res>
    implements $ProgressItemCopyWith<$Res> {
  factory _$$ProgressItemImplCopyWith(
          _$ProgressItemImpl value, $Res Function(_$ProgressItemImpl) then) =
      __$$ProgressItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itemId,
      String userId,
      String? sessionId,
      String? episodeId,
      double currentTime,
      double timeListened,
      double durationOfItem,
      double startTime,
      String type,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? success});
}

/// @nodoc
class __$$ProgressItemImplCopyWithImpl<$Res>
    extends _$ProgressItemCopyWithImpl<$Res, _$ProgressItemImpl>
    implements _$$ProgressItemImplCopyWith<$Res> {
  __$$ProgressItemImplCopyWithImpl(
      _$ProgressItemImpl _value, $Res Function(_$ProgressItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
    Object? userId = null,
    Object? sessionId = freezed,
    Object? episodeId = freezed,
    Object? currentTime = null,
    Object? timeListened = null,
    Object? durationOfItem = null,
    Object? startTime = null,
    Object? type = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? success = freezed,
  }) {
    return _then(_$ProgressItemImpl(
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeId: freezed == episodeId
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentTime: null == currentTime
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as double,
      timeListened: null == timeListened
          ? _value.timeListened
          : timeListened // ignore: cast_nullable_to_non_nullable
              as double,
      durationOfItem: null == durationOfItem
          ? _value.durationOfItem
          : durationOfItem // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressItemImpl extends _ProgressItem with DiagnosticableTreeMixin {
  _$ProgressItemImpl(
      {required this.itemId,
      required this.userId,
      this.sessionId,
      this.episodeId,
      required this.currentTime,
      required this.timeListened,
      required this.durationOfItem,
      required this.startTime,
      required this.type,
      required this.createdAt,
      required this.updatedAt,
      this.success})
      : super._();

  factory _$ProgressItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressItemImplFromJson(json);

  @override
  String itemId;
  @override
  String userId;
  @override
  String? sessionId;
  @override
  String? episodeId;
  @override
  double currentTime;
  @override
  double timeListened;
  @override
  double durationOfItem;
  @override
  double startTime;
  @override
  String type;
  @override
  DateTime? createdAt;
  @override
  DateTime? updatedAt;
  @override
  bool? success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressItem(itemId: $itemId, userId: $userId, sessionId: $sessionId, episodeId: $episodeId, currentTime: $currentTime, timeListened: $timeListened, durationOfItem: $durationOfItem, startTime: $startTime, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgressItem'))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('sessionId', sessionId))
      ..add(DiagnosticsProperty('episodeId', episodeId))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('timeListened', timeListened))
      ..add(DiagnosticsProperty('durationOfItem', durationOfItem))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('success', success));
  }

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressItemImplCopyWith<_$ProgressItemImpl> get copyWith =>
      __$$ProgressItemImplCopyWithImpl<_$ProgressItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressItemImplToJson(
      this,
    );
  }
}

abstract class _ProgressItem extends ProgressItem {
  factory _ProgressItem(
      {required String itemId,
      required String userId,
      String? sessionId,
      String? episodeId,
      required double currentTime,
      required double timeListened,
      required double durationOfItem,
      required double startTime,
      required String type,
      required DateTime? createdAt,
      required DateTime? updatedAt,
      bool? success}) = _$ProgressItemImpl;
  _ProgressItem._() : super._();

  factory _ProgressItem.fromJson(Map<String, dynamic> json) =
      _$ProgressItemImpl.fromJson;

  @override
  String get itemId;
  set itemId(String value);
  @override
  String get userId;
  set userId(String value);
  @override
  String? get sessionId;
  set sessionId(String? value);
  @override
  String? get episodeId;
  set episodeId(String? value);
  @override
  double get currentTime;
  set currentTime(double value);
  @override
  double get timeListened;
  set timeListened(double value);
  @override
  double get durationOfItem;
  set durationOfItem(double value);
  @override
  double get startTime;
  set startTime(double value);
  @override
  String get type;
  set type(String value);
  @override
  DateTime? get createdAt;
  set createdAt(DateTime? value);
  @override
  DateTime? get updatedAt;
  set updatedAt(DateTime? value);
  @override
  bool? get success;
  set success(bool? value);

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressItemImplCopyWith<_$ProgressItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
