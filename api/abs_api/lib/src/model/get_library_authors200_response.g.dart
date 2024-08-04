// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_library_authors200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLibraryAuthors200Response extends GetLibraryAuthors200Response {
  @override
  final BuiltList<AuthorExpanded>? authors;

  factory _$GetLibraryAuthors200Response(
          [void Function(GetLibraryAuthors200ResponseBuilder)? updates]) =>
      (new GetLibraryAuthors200ResponseBuilder()..update(updates))._build();

  _$GetLibraryAuthors200Response._({this.authors}) : super._();

  @override
  GetLibraryAuthors200Response rebuild(
          void Function(GetLibraryAuthors200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLibraryAuthors200ResponseBuilder toBuilder() =>
      new GetLibraryAuthors200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLibraryAuthors200Response && authors == other.authors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLibraryAuthors200Response')
          ..add('authors', authors))
        .toString();
  }
}

class GetLibraryAuthors200ResponseBuilder
    implements
        Builder<GetLibraryAuthors200Response,
            GetLibraryAuthors200ResponseBuilder> {
  _$GetLibraryAuthors200Response? _$v;

  ListBuilder<AuthorExpanded>? _authors;
  ListBuilder<AuthorExpanded> get authors =>
      _$this._authors ??= new ListBuilder<AuthorExpanded>();
  set authors(ListBuilder<AuthorExpanded>? authors) =>
      _$this._authors = authors;

  GetLibraryAuthors200ResponseBuilder() {
    GetLibraryAuthors200Response._defaults(this);
  }

  GetLibraryAuthors200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authors = $v.authors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLibraryAuthors200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLibraryAuthors200Response;
  }

  @override
  void update(void Function(GetLibraryAuthors200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLibraryAuthors200Response build() => _build();

  _$GetLibraryAuthors200Response _build() {
    _$GetLibraryAuthors200Response _$result;
    try {
      _$result = _$v ??
          new _$GetLibraryAuthors200Response._(authors: _authors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authors';
        _authors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLibraryAuthors200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
