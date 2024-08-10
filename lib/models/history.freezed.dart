// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

History _$HistoryFromJson(Map<String, dynamic> json) {
  return _History.fromJson(json);
}

/// @nodoc
mixin _$History {
  DateTime get date => throw _privateConstructorUsedError;
  HistoryType get type => throw _privateConstructorUsedError;
  double get position => throw _privateConstructorUsedError;

  /// Serializes this History to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryCopyWith<History> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCopyWith<$Res> {
  factory $HistoryCopyWith(History value, $Res Function(History) then) =
      _$HistoryCopyWithImpl<$Res, History>;
  @useResult
  $Res call({DateTime date, HistoryType type, double position});
}

/// @nodoc
class _$HistoryCopyWithImpl<$Res, $Val extends History>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HistoryType,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryImplCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$$HistoryImplCopyWith(
          _$HistoryImpl value, $Res Function(_$HistoryImpl) then) =
      __$$HistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, HistoryType type, double position});
}

/// @nodoc
class __$$HistoryImplCopyWithImpl<$Res>
    extends _$HistoryCopyWithImpl<$Res, _$HistoryImpl>
    implements _$$HistoryImplCopyWith<$Res> {
  __$$HistoryImplCopyWithImpl(
      _$HistoryImpl _value, $Res Function(_$HistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? position = null,
  }) {
    return _then(_$HistoryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HistoryType,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryImpl extends _History with DiagnosticableTreeMixin {
  const _$HistoryImpl(
      {required this.date, required this.type, required this.position})
      : super._();

  factory _$HistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryImplFromJson(json);

  @override
  final DateTime date;
  @override
  final HistoryType type;
  @override
  final double position;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'History(date: $date, type: $type, position: $position)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'History'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('position', position));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, type, position);

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      __$$HistoryImplCopyWithImpl<_$HistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryImplToJson(
      this,
    );
  }
}

abstract class _History extends History {
  const factory _History(
      {required final DateTime date,
      required final HistoryType type,
      required final double position}) = _$HistoryImpl;
  const _History._() : super._();

  factory _History.fromJson(Map<String, dynamic> json) = _$HistoryImpl.fromJson;

  @override
  DateTime get date;
  @override
  HistoryType get type;
  @override
  double get position;

  /// Create a copy of History
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryImplCopyWith<_$HistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryView _$HistoryViewFromJson(Map<String, dynamic> json) {
  return _HistoryView.fromJson(json);
}

/// @nodoc
mixin _$HistoryView {
  HistoryType get type => throw _privateConstructorUsedError;
  List<History> get histories => throw _privateConstructorUsedError;

  /// Serializes this HistoryView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryViewCopyWith<HistoryView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryViewCopyWith<$Res> {
  factory $HistoryViewCopyWith(
          HistoryView value, $Res Function(HistoryView) then) =
      _$HistoryViewCopyWithImpl<$Res, HistoryView>;
  @useResult
  $Res call({HistoryType type, List<History> histories});
}

/// @nodoc
class _$HistoryViewCopyWithImpl<$Res, $Val extends HistoryView>
    implements $HistoryViewCopyWith<$Res> {
  _$HistoryViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? histories = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HistoryType,
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryViewImplCopyWith<$Res>
    implements $HistoryViewCopyWith<$Res> {
  factory _$$HistoryViewImplCopyWith(
          _$HistoryViewImpl value, $Res Function(_$HistoryViewImpl) then) =
      __$$HistoryViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HistoryType type, List<History> histories});
}

/// @nodoc
class __$$HistoryViewImplCopyWithImpl<$Res>
    extends _$HistoryViewCopyWithImpl<$Res, _$HistoryViewImpl>
    implements _$$HistoryViewImplCopyWith<$Res> {
  __$$HistoryViewImplCopyWithImpl(
      _$HistoryViewImpl _value, $Res Function(_$HistoryViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? histories = null,
  }) {
    return _then(_$HistoryViewImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as HistoryType,
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<History>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryViewImpl extends _HistoryView with DiagnosticableTreeMixin {
  const _$HistoryViewImpl(
      {required this.type, required final List<History> histories})
      : _histories = histories,
        super._();

  factory _$HistoryViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryViewImplFromJson(json);

  @override
  final HistoryType type;
  final List<History> _histories;
  @override
  List<History> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HistoryView(type: $type, histories: $histories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HistoryView'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('histories', histories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryViewImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_histories));

  /// Create a copy of HistoryView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryViewImplCopyWith<_$HistoryViewImpl> get copyWith =>
      __$$HistoryViewImplCopyWithImpl<_$HistoryViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryViewImplToJson(
      this,
    );
  }
}

abstract class _HistoryView extends HistoryView {
  const factory _HistoryView(
      {required final HistoryType type,
      required final List<History> histories}) = _$HistoryViewImpl;
  const _HistoryView._() : super._();

  factory _HistoryView.fromJson(Map<String, dynamic> json) =
      _$HistoryViewImpl.fromJson;

  @override
  HistoryType get type;
  @override
  List<History> get histories;

  /// Create a copy of HistoryView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryViewImplCopyWith<_$HistoryViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
