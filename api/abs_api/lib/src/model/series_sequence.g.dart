// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_sequence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesSequence extends SeriesSequence {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? sequence;

  factory _$SeriesSequence([void Function(SeriesSequenceBuilder)? updates]) =>
      (new SeriesSequenceBuilder()..update(updates))._build();

  _$SeriesSequence._({this.id, this.name, this.sequence}) : super._();

  @override
  SeriesSequence rebuild(void Function(SeriesSequenceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesSequenceBuilder toBuilder() =>
      new SeriesSequenceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesSequence &&
        id == other.id &&
        name == other.name &&
        sequence == other.sequence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, sequence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesSequence')
          ..add('id', id)
          ..add('name', name)
          ..add('sequence', sequence))
        .toString();
  }
}

class SeriesSequenceBuilder
    implements Builder<SeriesSequence, SeriesSequenceBuilder> {
  _$SeriesSequence? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _sequence;
  String? get sequence => _$this._sequence;
  set sequence(String? sequence) => _$this._sequence = sequence;

  SeriesSequenceBuilder() {
    SeriesSequence._defaults(this);
  }

  SeriesSequenceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _sequence = $v.sequence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesSequence other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesSequence;
  }

  @override
  void update(void Function(SeriesSequenceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesSequence build() => _build();

  _$SeriesSequence _build() {
    final _$result =
        _$v ?? new _$SeriesSequence._(id: id, name: name, sequence: sequence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
