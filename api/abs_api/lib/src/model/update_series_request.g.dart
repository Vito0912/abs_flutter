// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_series_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSeriesRequest extends UpdateSeriesRequest {
  @override
  final String? name;
  @override
  final String? description;

  factory _$UpdateSeriesRequest(
          [void Function(UpdateSeriesRequestBuilder)? updates]) =>
      (new UpdateSeriesRequestBuilder()..update(updates))._build();

  _$UpdateSeriesRequest._({this.name, this.description}) : super._();

  @override
  UpdateSeriesRequest rebuild(
          void Function(UpdateSeriesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSeriesRequestBuilder toBuilder() =>
      new UpdateSeriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSeriesRequest &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSeriesRequest')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class UpdateSeriesRequestBuilder
    implements Builder<UpdateSeriesRequest, UpdateSeriesRequestBuilder> {
  _$UpdateSeriesRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateSeriesRequestBuilder() {
    UpdateSeriesRequest._defaults(this);
  }

  UpdateSeriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSeriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSeriesRequest;
  }

  @override
  void update(void Function(UpdateSeriesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSeriesRequest build() => _build();

  _$UpdateSeriesRequest _build() {
    final _$result = _$v ??
        new _$UpdateSeriesRequest._(name: name, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
