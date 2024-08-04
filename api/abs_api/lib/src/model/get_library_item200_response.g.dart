// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_library_item200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLibraryItem200Response extends GetLibraryItem200Response {
  @override
  final OneOf oneOf;

  factory _$GetLibraryItem200Response(
          [void Function(GetLibraryItem200ResponseBuilder)? updates]) =>
      (new GetLibraryItem200ResponseBuilder()..update(updates))._build();

  _$GetLibraryItem200Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'GetLibraryItem200Response', 'oneOf');
  }

  @override
  GetLibraryItem200Response rebuild(
          void Function(GetLibraryItem200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLibraryItem200ResponseBuilder toBuilder() =>
      new GetLibraryItem200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLibraryItem200Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'GetLibraryItem200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GetLibraryItem200ResponseBuilder
    implements
        Builder<GetLibraryItem200Response, GetLibraryItem200ResponseBuilder> {
  _$GetLibraryItem200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GetLibraryItem200ResponseBuilder() {
    GetLibraryItem200Response._defaults(this);
  }

  GetLibraryItem200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLibraryItem200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLibraryItem200Response;
  }

  @override
  void update(void Function(GetLibraryItem200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLibraryItem200Response build() => _build();

  _$GetLibraryItem200Response _build() {
    final _$result = _$v ??
        new _$GetLibraryItem200Response._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'GetLibraryItem200Response', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
