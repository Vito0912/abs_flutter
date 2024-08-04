// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feeds_from_opml_text_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFeedsFromOPMLTextRequest extends GetFeedsFromOPMLTextRequest {
  @override
  final String? opmlText;

  factory _$GetFeedsFromOPMLTextRequest(
          [void Function(GetFeedsFromOPMLTextRequestBuilder)? updates]) =>
      (new GetFeedsFromOPMLTextRequestBuilder()..update(updates))._build();

  _$GetFeedsFromOPMLTextRequest._({this.opmlText}) : super._();

  @override
  GetFeedsFromOPMLTextRequest rebuild(
          void Function(GetFeedsFromOPMLTextRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFeedsFromOPMLTextRequestBuilder toBuilder() =>
      new GetFeedsFromOPMLTextRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFeedsFromOPMLTextRequest && opmlText == other.opmlText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, opmlText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetFeedsFromOPMLTextRequest')
          ..add('opmlText', opmlText))
        .toString();
  }
}

class GetFeedsFromOPMLTextRequestBuilder
    implements
        Builder<GetFeedsFromOPMLTextRequest,
            GetFeedsFromOPMLTextRequestBuilder> {
  _$GetFeedsFromOPMLTextRequest? _$v;

  String? _opmlText;
  String? get opmlText => _$this._opmlText;
  set opmlText(String? opmlText) => _$this._opmlText = opmlText;

  GetFeedsFromOPMLTextRequestBuilder() {
    GetFeedsFromOPMLTextRequest._defaults(this);
  }

  GetFeedsFromOPMLTextRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _opmlText = $v.opmlText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFeedsFromOPMLTextRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFeedsFromOPMLTextRequest;
  }

  @override
  void update(void Function(GetFeedsFromOPMLTextRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFeedsFromOPMLTextRequest build() => _build();

  _$GetFeedsFromOPMLTextRequest _build() {
    final _$result =
        _$v ?? new _$GetFeedsFromOPMLTextRequest._(opmlText: opmlText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
