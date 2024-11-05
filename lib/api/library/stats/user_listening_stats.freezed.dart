// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_listening_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserListeningStats _$UserListeningStatsFromJson(Map<String, dynamic> json) {
  return _UserListeningStats.fromJson(json);
}

/// @nodoc
mixin _$UserListeningStats {
  @JsonKey(name: "totalTime")
  double? get totalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  Map<String, ItemsListenedTo>? get items => throw _privateConstructorUsedError;
  @JsonKey(name: "days")
  Map<String, double>? get days => throw _privateConstructorUsedError;
  @JsonKey(name: "dayOfWeek")
  DaysOfWeek? get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(name: "today")
  double? get today => throw _privateConstructorUsedError;
  @JsonKey(name: "recentSessions")
  List<PlaybackSession>? get recentSessions =>
      throw _privateConstructorUsedError;

  /// Serializes this UserListeningStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListeningStatsCopyWith<UserListeningStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListeningStatsCopyWith<$Res> {
  factory $UserListeningStatsCopyWith(
          UserListeningStats value, $Res Function(UserListeningStats) then) =
      _$UserListeningStatsCopyWithImpl<$Res, UserListeningStats>;
  @useResult
  $Res call(
      {@JsonKey(name: "totalTime") double? totalTime,
      @JsonKey(name: "items") Map<String, ItemsListenedTo>? items,
      @JsonKey(name: "days") Map<String, double>? days,
      @JsonKey(name: "dayOfWeek") DaysOfWeek? dayOfWeek,
      @JsonKey(name: "today") double? today,
      @JsonKey(name: "recentSessions") List<PlaybackSession>? recentSessions});

  $DaysOfWeekCopyWith<$Res>? get dayOfWeek;
}

/// @nodoc
class _$UserListeningStatsCopyWithImpl<$Res, $Val extends UserListeningStats>
    implements $UserListeningStatsCopyWith<$Res> {
  _$UserListeningStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTime = freezed,
    Object? items = freezed,
    Object? days = freezed,
    Object? dayOfWeek = freezed,
    Object? today = freezed,
    Object? recentSessions = freezed,
  }) {
    return _then(_value.copyWith(
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, ItemsListenedTo>?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DaysOfWeek?,
      today: freezed == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as double?,
      recentSessions: freezed == recentSessions
          ? _value.recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<PlaybackSession>?,
    ) as $Val);
  }

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DaysOfWeekCopyWith<$Res>? get dayOfWeek {
    if (_value.dayOfWeek == null) {
      return null;
    }

    return $DaysOfWeekCopyWith<$Res>(_value.dayOfWeek!, (value) {
      return _then(_value.copyWith(dayOfWeek: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListeningStatsImplCopyWith<$Res>
    implements $UserListeningStatsCopyWith<$Res> {
  factory _$$UserListeningStatsImplCopyWith(_$UserListeningStatsImpl value,
          $Res Function(_$UserListeningStatsImpl) then) =
      __$$UserListeningStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "totalTime") double? totalTime,
      @JsonKey(name: "items") Map<String, ItemsListenedTo>? items,
      @JsonKey(name: "days") Map<String, double>? days,
      @JsonKey(name: "dayOfWeek") DaysOfWeek? dayOfWeek,
      @JsonKey(name: "today") double? today,
      @JsonKey(name: "recentSessions") List<PlaybackSession>? recentSessions});

  @override
  $DaysOfWeekCopyWith<$Res>? get dayOfWeek;
}

/// @nodoc
class __$$UserListeningStatsImplCopyWithImpl<$Res>
    extends _$UserListeningStatsCopyWithImpl<$Res, _$UserListeningStatsImpl>
    implements _$$UserListeningStatsImplCopyWith<$Res> {
  __$$UserListeningStatsImplCopyWithImpl(_$UserListeningStatsImpl _value,
      $Res Function(_$UserListeningStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTime = freezed,
    Object? items = freezed,
    Object? days = freezed,
    Object? dayOfWeek = freezed,
    Object? today = freezed,
    Object? recentSessions = freezed,
  }) {
    return _then(_$UserListeningStatsImpl(
      totalTime: freezed == totalTime
          ? _value.totalTime
          : totalTime // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, ItemsListenedTo>?,
      days: freezed == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DaysOfWeek?,
      today: freezed == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as double?,
      recentSessions: freezed == recentSessions
          ? _value._recentSessions
          : recentSessions // ignore: cast_nullable_to_non_nullable
              as List<PlaybackSession>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListeningStatsImpl implements _UserListeningStats {
  const _$UserListeningStatsImpl(
      {@JsonKey(name: "totalTime") this.totalTime,
      @JsonKey(name: "items") final Map<String, ItemsListenedTo>? items,
      @JsonKey(name: "days") final Map<String, double>? days,
      @JsonKey(name: "dayOfWeek") this.dayOfWeek,
      @JsonKey(name: "today") this.today,
      @JsonKey(name: "recentSessions")
      final List<PlaybackSession>? recentSessions})
      : _items = items,
        _days = days,
        _recentSessions = recentSessions;

  factory _$UserListeningStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListeningStatsImplFromJson(json);

  @override
  @JsonKey(name: "totalTime")
  final double? totalTime;
  final Map<String, ItemsListenedTo>? _items;
  @override
  @JsonKey(name: "items")
  Map<String, ItemsListenedTo>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, double>? _days;
  @override
  @JsonKey(name: "days")
  Map<String, double>? get days {
    final value = _days;
    if (value == null) return null;
    if (_days is EqualUnmodifiableMapView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: "dayOfWeek")
  final DaysOfWeek? dayOfWeek;
  @override
  @JsonKey(name: "today")
  final double? today;
  final List<PlaybackSession>? _recentSessions;
  @override
  @JsonKey(name: "recentSessions")
  List<PlaybackSession>? get recentSessions {
    final value = _recentSessions;
    if (value == null) return null;
    if (_recentSessions is EqualUnmodifiableListView) return _recentSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserListeningStats(totalTime: $totalTime, items: $items, days: $days, dayOfWeek: $dayOfWeek, today: $today, recentSessions: $recentSessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListeningStatsImpl &&
            (identical(other.totalTime, totalTime) ||
                other.totalTime == totalTime) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.today, today) || other.today == today) &&
            const DeepCollectionEquality()
                .equals(other._recentSessions, _recentSessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalTime,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_days),
      dayOfWeek,
      today,
      const DeepCollectionEquality().hash(_recentSessions));

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListeningStatsImplCopyWith<_$UserListeningStatsImpl> get copyWith =>
      __$$UserListeningStatsImplCopyWithImpl<_$UserListeningStatsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListeningStatsImplToJson(
      this,
    );
  }
}

abstract class _UserListeningStats implements UserListeningStats {
  const factory _UserListeningStats(
      {@JsonKey(name: "totalTime") final double? totalTime,
      @JsonKey(name: "items") final Map<String, ItemsListenedTo>? items,
      @JsonKey(name: "days") final Map<String, double>? days,
      @JsonKey(name: "dayOfWeek") final DaysOfWeek? dayOfWeek,
      @JsonKey(name: "today") final double? today,
      @JsonKey(name: "recentSessions")
      final List<PlaybackSession>? recentSessions}) = _$UserListeningStatsImpl;

  factory _UserListeningStats.fromJson(Map<String, dynamic> json) =
      _$UserListeningStatsImpl.fromJson;

  @override
  @JsonKey(name: "totalTime")
  double? get totalTime;
  @override
  @JsonKey(name: "items")
  Map<String, ItemsListenedTo>? get items;
  @override
  @JsonKey(name: "days")
  Map<String, double>? get days;
  @override
  @JsonKey(name: "dayOfWeek")
  DaysOfWeek? get dayOfWeek;
  @override
  @JsonKey(name: "today")
  double? get today;
  @override
  @JsonKey(name: "recentSessions")
  List<PlaybackSession>? get recentSessions;

  /// Create a copy of UserListeningStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListeningStatsImplCopyWith<_$UserListeningStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
