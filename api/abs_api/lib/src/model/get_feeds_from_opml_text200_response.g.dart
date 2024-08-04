// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feeds_from_opml_text200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFeedsFromOPMLText200Response
    extends GetFeedsFromOPMLText200Response {
  @override
  final BuiltList<GetFeedsFromOPMLText200ResponseFeedsInner>? feeds;

  factory _$GetFeedsFromOPMLText200Response(
          [void Function(GetFeedsFromOPMLText200ResponseBuilder)? updates]) =>
      (new GetFeedsFromOPMLText200ResponseBuilder()..update(updates))._build();

  _$GetFeedsFromOPMLText200Response._({this.feeds}) : super._();

  @override
  GetFeedsFromOPMLText200Response rebuild(
          void Function(GetFeedsFromOPMLText200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFeedsFromOPMLText200ResponseBuilder toBuilder() =>
      new GetFeedsFromOPMLText200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFeedsFromOPMLText200Response && feeds == other.feeds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, feeds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFeedsFromOPMLText200Response')
          ..add('feeds', feeds))
        .toString();
  }
}

class GetFeedsFromOPMLText200ResponseBuilder
    implements
        Builder<GetFeedsFromOPMLText200Response,
            GetFeedsFromOPMLText200ResponseBuilder> {
  _$GetFeedsFromOPMLText200Response? _$v;

  ListBuilder<GetFeedsFromOPMLText200ResponseFeedsInner>? _feeds;
  ListBuilder<GetFeedsFromOPMLText200ResponseFeedsInner> get feeds =>
      _$this._feeds ??=
          new ListBuilder<GetFeedsFromOPMLText200ResponseFeedsInner>();
  set feeds(ListBuilder<GetFeedsFromOPMLText200ResponseFeedsInner>? feeds) =>
      _$this._feeds = feeds;

  GetFeedsFromOPMLText200ResponseBuilder() {
    GetFeedsFromOPMLText200Response._defaults(this);
  }

  GetFeedsFromOPMLText200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feeds = $v.feeds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFeedsFromOPMLText200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFeedsFromOPMLText200Response;
  }

  @override
  void update(void Function(GetFeedsFromOPMLText200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFeedsFromOPMLText200Response build() => _build();

  _$GetFeedsFromOPMLText200Response _build() {
    _$GetFeedsFromOPMLText200Response _$result;
    try {
      _$result = _$v ??
          new _$GetFeedsFromOPMLText200Response._(feeds: _feeds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feeds';
        _feeds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFeedsFromOPMLText200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
