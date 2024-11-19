// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collapsed_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CollapsedSeries _$CollapsedSeriesFromJson(Map<String, dynamic> json) {
  return _CollapsedSeries.fromJson(json);
}

/// @nodoc
mixin _$CollapsedSeries {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "nameIgnorePrefix")
  String? get nameIgnorePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "sequence")
  String? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "numBooks")
  int? get numBooks => throw _privateConstructorUsedError;
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds => throw _privateConstructorUsedError;

  /// Serializes this CollapsedSeries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CollapsedSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollapsedSeriesCopyWith<CollapsedSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollapsedSeriesCopyWith<$Res> {
  factory $CollapsedSeriesCopyWith(
          CollapsedSeries value, $Res Function(CollapsedSeries) then) =
      _$CollapsedSeriesCopyWithImpl<$Res, CollapsedSeries>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
      @JsonKey(name: "sequence") String? sequence,
      @JsonKey(name: "numBooks") int? numBooks,
      @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds});
}

/// @nodoc
class _$CollapsedSeriesCopyWithImpl<$Res, $Val extends CollapsedSeries>
    implements $CollapsedSeriesCopyWith<$Res> {
  _$CollapsedSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollapsedSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameIgnorePrefix = freezed,
    Object? sequence = freezed,
    Object? numBooks = freezed,
    Object? libraryItemIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIgnorePrefix: freezed == nameIgnorePrefix
          ? _value.nameIgnorePrefix
          : nameIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      numBooks: freezed == numBooks
          ? _value.numBooks
          : numBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      libraryItemIds: freezed == libraryItemIds
          ? _value.libraryItemIds
          : libraryItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollapsedSeriesImplCopyWith<$Res>
    implements $CollapsedSeriesCopyWith<$Res> {
  factory _$$CollapsedSeriesImplCopyWith(_$CollapsedSeriesImpl value,
          $Res Function(_$CollapsedSeriesImpl) then) =
      __$$CollapsedSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "nameIgnorePrefix") String? nameIgnorePrefix,
      @JsonKey(name: "sequence") String? sequence,
      @JsonKey(name: "numBooks") int? numBooks,
      @JsonKey(name: "libraryItemIds") List<String>? libraryItemIds});
}

/// @nodoc
class __$$CollapsedSeriesImplCopyWithImpl<$Res>
    extends _$CollapsedSeriesCopyWithImpl<$Res, _$CollapsedSeriesImpl>
    implements _$$CollapsedSeriesImplCopyWith<$Res> {
  __$$CollapsedSeriesImplCopyWithImpl(
      _$CollapsedSeriesImpl _value, $Res Function(_$CollapsedSeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollapsedSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? nameIgnorePrefix = freezed,
    Object? sequence = freezed,
    Object? numBooks = freezed,
    Object? libraryItemIds = freezed,
  }) {
    return _then(_$CollapsedSeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameIgnorePrefix: freezed == nameIgnorePrefix
          ? _value.nameIgnorePrefix
          : nameIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as String?,
      numBooks: freezed == numBooks
          ? _value.numBooks
          : numBooks // ignore: cast_nullable_to_non_nullable
              as int?,
      libraryItemIds: freezed == libraryItemIds
          ? _value._libraryItemIds
          : libraryItemIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollapsedSeriesImpl implements _CollapsedSeries {
  const _$CollapsedSeriesImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "nameIgnorePrefix") this.nameIgnorePrefix,
      @JsonKey(name: "sequence") this.sequence,
      @JsonKey(name: "numBooks") this.numBooks,
      @JsonKey(name: "libraryItemIds") final List<String>? libraryItemIds})
      : _libraryItemIds = libraryItemIds;

  factory _$CollapsedSeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollapsedSeriesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "nameIgnorePrefix")
  final String? nameIgnorePrefix;
  @override
  @JsonKey(name: "sequence")
  final String? sequence;
  @override
  @JsonKey(name: "numBooks")
  final int? numBooks;
  final List<String>? _libraryItemIds;
  @override
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds {
    final value = _libraryItemIds;
    if (value == null) return null;
    if (_libraryItemIds is EqualUnmodifiableListView) return _libraryItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CollapsedSeries(id: $id, name: $name, nameIgnorePrefix: $nameIgnorePrefix, sequence: $sequence, numBooks: $numBooks, libraryItemIds: $libraryItemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollapsedSeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameIgnorePrefix, nameIgnorePrefix) ||
                other.nameIgnorePrefix == nameIgnorePrefix) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.numBooks, numBooks) ||
                other.numBooks == numBooks) &&
            const DeepCollectionEquality()
                .equals(other._libraryItemIds, _libraryItemIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nameIgnorePrefix,
      sequence, numBooks, const DeepCollectionEquality().hash(_libraryItemIds));

  /// Create a copy of CollapsedSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollapsedSeriesImplCopyWith<_$CollapsedSeriesImpl> get copyWith =>
      __$$CollapsedSeriesImplCopyWithImpl<_$CollapsedSeriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollapsedSeriesImplToJson(
      this,
    );
  }
}

abstract class _CollapsedSeries implements CollapsedSeries {
  const factory _CollapsedSeries(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "nameIgnorePrefix") final String? nameIgnorePrefix,
      @JsonKey(name: "sequence") final String? sequence,
      @JsonKey(name: "numBooks") final int? numBooks,
      @JsonKey(name: "libraryItemIds")
      final List<String>? libraryItemIds}) = _$CollapsedSeriesImpl;

  factory _CollapsedSeries.fromJson(Map<String, dynamic> json) =
      _$CollapsedSeriesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "nameIgnorePrefix")
  String? get nameIgnorePrefix;
  @override
  @JsonKey(name: "sequence")
  String? get sequence;
  @override
  @JsonKey(name: "numBooks")
  int? get numBooks;
  @override
  @JsonKey(name: "libraryItemIds")
  List<String>? get libraryItemIds;

  /// Create a copy of CollapsedSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollapsedSeriesImplCopyWith<_$CollapsedSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
