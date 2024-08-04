// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_author_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAuthorById200Response extends UpdateAuthorById200Response {
  @override
  final OneOf oneOf;

  factory _$UpdateAuthorById200Response(
          [void Function(UpdateAuthorById200ResponseBuilder)? updates]) =>
      (new UpdateAuthorById200ResponseBuilder()..update(updates))._build();

  _$UpdateAuthorById200Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'UpdateAuthorById200Response', 'oneOf');
  }

  @override
  UpdateAuthorById200Response rebuild(
          void Function(UpdateAuthorById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAuthorById200ResponseBuilder toBuilder() =>
      new UpdateAuthorById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAuthorById200Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'UpdateAuthorById200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class UpdateAuthorById200ResponseBuilder
    implements
        Builder<UpdateAuthorById200Response,
            UpdateAuthorById200ResponseBuilder> {
  _$UpdateAuthorById200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  UpdateAuthorById200ResponseBuilder() {
    UpdateAuthorById200Response._defaults(this);
  }

  UpdateAuthorById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAuthorById200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAuthorById200Response;
  }

  @override
  void update(void Function(UpdateAuthorById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAuthorById200Response build() => _build();

  _$UpdateAuthorById200Response _build() {
    final _$result = _$v ??
        new _$UpdateAuthorById200Response._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'UpdateAuthorById200Response', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
