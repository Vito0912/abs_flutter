// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_author_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MatchAuthorById200Response extends MatchAuthorById200Response {
  @override
  final OneOf oneOf;

  factory _$MatchAuthorById200Response(
          [void Function(MatchAuthorById200ResponseBuilder)? updates]) =>
      (new MatchAuthorById200ResponseBuilder()..update(updates))._build();

  _$MatchAuthorById200Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'MatchAuthorById200Response', 'oneOf');
  }

  @override
  MatchAuthorById200Response rebuild(
          void Function(MatchAuthorById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchAuthorById200ResponseBuilder toBuilder() =>
      new MatchAuthorById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchAuthorById200Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchAuthorById200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class MatchAuthorById200ResponseBuilder
    implements
        Builder<MatchAuthorById200Response, MatchAuthorById200ResponseBuilder> {
  _$MatchAuthorById200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  MatchAuthorById200ResponseBuilder() {
    MatchAuthorById200Response._defaults(this);
  }

  MatchAuthorById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchAuthorById200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchAuthorById200Response;
  }

  @override
  void update(void Function(MatchAuthorById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchAuthorById200Response build() => _build();

  _$MatchAuthorById200Response _build() {
    final _$result = _$v ??
        new _$MatchAuthorById200Response._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'MatchAuthorById200Response', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
