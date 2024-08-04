// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_author_by_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAuthorByIdRequest extends UpdateAuthorByIdRequest {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imagePath;
  @override
  final String? asin;

  factory _$UpdateAuthorByIdRequest(
          [void Function(UpdateAuthorByIdRequestBuilder)? updates]) =>
      (new UpdateAuthorByIdRequestBuilder()..update(updates))._build();

  _$UpdateAuthorByIdRequest._(
      {this.name, this.description, this.imagePath, this.asin})
      : super._();

  @override
  UpdateAuthorByIdRequest rebuild(
          void Function(UpdateAuthorByIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorByIdRequestBuilder toBuilder() =>
      new UpdateAuthorByIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorByIdRequest &&
        name == other.name &&
        description == other.description &&
        imagePath == other.imagePath &&
        asin == other.asin;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, asin.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAuthorByIdRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('imagePath', imagePath)
          ..add('asin', asin))
        .toString();
  }
}

class UpdateAuthorByIdRequestBuilder
    implements
        Builder<UpdateAuthorByIdRequest, UpdateAuthorByIdRequestBuilder> {
  _$UpdateAuthorByIdRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _asin;
  String? get asin => _$this._asin;
  set asin(String? asin) => _$this._asin = asin;

  UpdateAuthorByIdRequestBuilder() {
    UpdateAuthorByIdRequest._defaults(this);
  }

  UpdateAuthorByIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _imagePath = $v.imagePath;
      _asin = $v.asin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorByIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorByIdRequest;
  }

  @override
  void update(void Function(UpdateAuthorByIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorByIdRequest build() => _build();

  _$UpdateAuthorByIdRequest _build() {
    final _$result = _$v ??
        new _$UpdateAuthorByIdRequest._(
            name: name,
            description: description,
            imagePath: imagePath,
            asin: asin);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
