// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_author_image_by_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAuthorImageByIdRequest extends GetAuthorImageByIdRequest {
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? format;
  @override
  final bool? raw;

  factory _$GetAuthorImageByIdRequest(
          [void Function(GetAuthorImageByIdRequestBuilder)? updates]) =>
      (new GetAuthorImageByIdRequestBuilder()..update(updates))._build();

  _$GetAuthorImageByIdRequest._(
      {this.width, this.height, this.format, this.raw})
      : super._();

  @override
  GetAuthorImageByIdRequest rebuild(
          void Function(GetAuthorImageByIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAuthorImageByIdRequestBuilder toBuilder() =>
      new GetAuthorImageByIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAuthorImageByIdRequest &&
        width == other.width &&
        height == other.height &&
        format == other.format &&
        raw == other.raw;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, height.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, raw.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAuthorImageByIdRequest')
          ..add('width', width)
          ..add('height', height)
          ..add('format', format)
          ..add('raw', raw))
        .toString();
  }
}

class GetAuthorImageByIdRequestBuilder
    implements
        Builder<GetAuthorImageByIdRequest, GetAuthorImageByIdRequestBuilder> {
  _$GetAuthorImageByIdRequest? _$v;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  bool? _raw;
  bool? get raw => _$this._raw;
  set raw(bool? raw) => _$this._raw = raw;

  GetAuthorImageByIdRequestBuilder() {
    GetAuthorImageByIdRequest._defaults(this);
  }

  GetAuthorImageByIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _width = $v.width;
      _height = $v.height;
      _format = $v.format;
      _raw = $v.raw;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAuthorImageByIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAuthorImageByIdRequest;
  }

  @override
  void update(void Function(GetAuthorImageByIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAuthorImageByIdRequest build() => _build();

  _$GetAuthorImageByIdRequest _build() {
    final _$result = _$v ??
        new _$GetAuthorImageByIdRequest._(
            width: width, height: height, format: format, raw: raw);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
