// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_author_by_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatchAuthorByIdRequest extends MatchAuthorByIdRequest {
  @override
  final String? q;
  @override
  final String? asin;
  @override
  final String? region;

  factory _$MatchAuthorByIdRequest(
          [void Function(MatchAuthorByIdRequestBuilder)? updates]) =>
      (new MatchAuthorByIdRequestBuilder()..update(updates))._build();

  _$MatchAuthorByIdRequest._({this.q, this.asin, this.region}) : super._();

  @override
  MatchAuthorByIdRequest rebuild(
          void Function(MatchAuthorByIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchAuthorByIdRequestBuilder toBuilder() =>
      new MatchAuthorByIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchAuthorByIdRequest &&
        q == other.q &&
        asin == other.asin &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, q.hashCode);
    _$hash = $jc(_$hash, asin.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchAuthorByIdRequest')
          ..add('q', q)
          ..add('asin', asin)
          ..add('region', region))
        .toString();
  }
}

class MatchAuthorByIdRequestBuilder
    implements Builder<MatchAuthorByIdRequest, MatchAuthorByIdRequestBuilder> {
  _$MatchAuthorByIdRequest? _$v;

  String? _q;
  String? get q => _$this._q;
  set q(String? q) => _$this._q = q;

  String? _asin;
  String? get asin => _$this._asin;
  set asin(String? asin) => _$this._asin = asin;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  MatchAuthorByIdRequestBuilder() {
    MatchAuthorByIdRequest._defaults(this);
  }

  MatchAuthorByIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _q = $v.q;
      _asin = $v.asin;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchAuthorByIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchAuthorByIdRequest;
  }

  @override
  void update(void Function(MatchAuthorByIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchAuthorByIdRequest build() => _build();

  _$MatchAuthorByIdRequest _build() {
    final _$result =
        _$v ?? new _$MatchAuthorByIdRequest._(q: q, asin: asin, region: region);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
