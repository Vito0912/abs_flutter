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
  double get currentTime => throw _privateConstructorUsedError;
  set currentTime(double value) => throw _privateConstructorUsedError;
  double get timeListened => throw _privateConstructorUsedError;
  set timeListened(double value) => throw _privateConstructorUsedError;
  double get durationOfItem => throw _privateConstructorUsedError;
  set durationOfItem(double value) => throw _privateConstructorUsedError;

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
      double currentTime,
      double timeListened,
      double durationOfItem});
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
    Object? currentTime = null,
    Object? timeListened = null,
    Object? durationOfItem = null,
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
      double currentTime,
      double timeListened,
      double durationOfItem});
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
    Object? currentTime = null,
    Object? timeListened = null,
    Object? durationOfItem = null,
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
      required this.currentTime,
      required this.timeListened,
      required this.durationOfItem})
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
  double currentTime;
  @override
  double timeListened;
  @override
  double durationOfItem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProgressItem(itemId: $itemId, userId: $userId, sessionId: $sessionId, currentTime: $currentTime, timeListened: $timeListened, durationOfItem: $durationOfItem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProgressItem'))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('sessionId', sessionId))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('timeListened', timeListened))
      ..add(DiagnosticsProperty('durationOfItem', durationOfItem));
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
      required double currentTime,
      required double timeListened,
      required double durationOfItem}) = _$ProgressItemImpl;
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
  double get currentTime;
  set currentTime(double value);
  @override
  double get timeListened;
  set timeListened(double value);
  @override
  double get durationOfItem;
  set durationOfItem(double value);

  /// Create a copy of ProgressItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressItemImplCopyWith<_$ProgressItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
