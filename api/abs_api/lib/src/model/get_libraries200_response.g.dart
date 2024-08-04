// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_libraries200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLibraries200Response extends GetLibraries200Response {
  @override
  final BuiltList<ModelLibrary>? libraries;

  factory _$GetLibraries200Response(
          [void Function(GetLibraries200ResponseBuilder)? updates]) =>
      (new GetLibraries200ResponseBuilder()..update(updates))._build();

  _$GetLibraries200Response._({this.libraries}) : super._();

  @override
  GetLibraries200Response rebuild(
          void Function(GetLibraries200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLibraries200ResponseBuilder toBuilder() =>
      new GetLibraries200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLibraries200Response && libraries == other.libraries;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraries.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLibraries200Response')
          ..add('libraries', libraries))
        .toString();
  }
}

class GetLibraries200ResponseBuilder
    implements
        Builder<GetLibraries200Response, GetLibraries200ResponseBuilder> {
  _$GetLibraries200Response? _$v;

  ListBuilder<ModelLibrary>? _libraries;
  ListBuilder<ModelLibrary> get libraries =>
      _$this._libraries ??= new ListBuilder<ModelLibrary>();
  set libraries(ListBuilder<ModelLibrary>? libraries) =>
      _$this._libraries = libraries;

  GetLibraries200ResponseBuilder() {
    GetLibraries200Response._defaults(this);
  }

  GetLibraries200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraries = $v.libraries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLibraries200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLibraries200Response;
  }

  @override
  void update(void Function(GetLibraries200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLibraries200Response build() => _build();

  _$GetLibraries200Response _build() {
    _$GetLibraries200Response _$result;
    try {
      _$result = _$v ??
          new _$GetLibraries200Response._(libraries: _libraries?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'libraries';
        _libraries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLibraries200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
