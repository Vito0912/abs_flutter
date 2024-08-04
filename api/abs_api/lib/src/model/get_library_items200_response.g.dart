// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_library_items200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLibraryItems200Response extends GetLibraryItems200Response {
  @override
  final BuiltList<LibraryItemBase>? results;
  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final String? sortBy;
  @override
  final bool? sortDesc;
  @override
  final String? filterBy;
  @override
  final MediaType? mediaType;
  @override
  final bool? minified;
  @override
  final bool? collapseSeries;
  @override
  final String? include;

  factory _$GetLibraryItems200Response(
          [void Function(GetLibraryItems200ResponseBuilder)? updates]) =>
      (new GetLibraryItems200ResponseBuilder()..update(updates))._build();

  _$GetLibraryItems200Response._(
      {this.results,
      this.total,
      this.limit,
      this.page,
      this.sortBy,
      this.sortDesc,
      this.filterBy,
      this.mediaType,
      this.minified,
      this.collapseSeries,
      this.include})
      : super._();

  @override
  GetLibraryItems200Response rebuild(
          void Function(GetLibraryItems200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLibraryItems200ResponseBuilder toBuilder() =>
      new GetLibraryItems200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLibraryItems200Response &&
        results == other.results &&
        total == other.total &&
        limit == other.limit &&
        page == other.page &&
        sortBy == other.sortBy &&
        sortDesc == other.sortDesc &&
        filterBy == other.filterBy &&
        mediaType == other.mediaType &&
        minified == other.minified &&
        collapseSeries == other.collapseSeries &&
        include == other.include;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, sortDesc.hashCode);
    _$hash = $jc(_$hash, filterBy.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, minified.hashCode);
    _$hash = $jc(_$hash, collapseSeries.hashCode);
    _$hash = $jc(_$hash, include.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLibraryItems200Response')
          ..add('results', results)
          ..add('total', total)
          ..add('limit', limit)
          ..add('page', page)
          ..add('sortBy', sortBy)
          ..add('sortDesc', sortDesc)
          ..add('filterBy', filterBy)
          ..add('mediaType', mediaType)
          ..add('minified', minified)
          ..add('collapseSeries', collapseSeries)
          ..add('include', include))
        .toString();
  }
}

class GetLibraryItems200ResponseBuilder
    implements
        Builder<GetLibraryItems200Response, GetLibraryItems200ResponseBuilder> {
  _$GetLibraryItems200Response? _$v;

  ListBuilder<LibraryItemBase>? _results;
  ListBuilder<LibraryItemBase> get results =>
      _$this._results ??= new ListBuilder<LibraryItemBase>();
  set results(ListBuilder<LibraryItemBase>? results) =>
      _$this._results = results;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _sortBy;
  String? get sortBy => _$this._sortBy;
  set sortBy(String? sortBy) => _$this._sortBy = sortBy;

  bool? _sortDesc;
  bool? get sortDesc => _$this._sortDesc;
  set sortDesc(bool? sortDesc) => _$this._sortDesc = sortDesc;

  String? _filterBy;
  String? get filterBy => _$this._filterBy;
  set filterBy(String? filterBy) => _$this._filterBy = filterBy;

  MediaType? _mediaType;
  MediaType? get mediaType => _$this._mediaType;
  set mediaType(MediaType? mediaType) => _$this._mediaType = mediaType;

  bool? _minified;
  bool? get minified => _$this._minified;
  set minified(bool? minified) => _$this._minified = minified;

  bool? _collapseSeries;
  bool? get collapseSeries => _$this._collapseSeries;
  set collapseSeries(bool? collapseSeries) =>
      _$this._collapseSeries = collapseSeries;

  String? _include;
  String? get include => _$this._include;
  set include(String? include) => _$this._include = include;

  GetLibraryItems200ResponseBuilder() {
    GetLibraryItems200Response._defaults(this);
  }

  GetLibraryItems200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _total = $v.total;
      _limit = $v.limit;
      _page = $v.page;
      _sortBy = $v.sortBy;
      _sortDesc = $v.sortDesc;
      _filterBy = $v.filterBy;
      _mediaType = $v.mediaType;
      _minified = $v.minified;
      _collapseSeries = $v.collapseSeries;
      _include = $v.include;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLibraryItems200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLibraryItems200Response;
  }

  @override
  void update(void Function(GetLibraryItems200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLibraryItems200Response build() => _build();

  _$GetLibraryItems200Response _build() {
    _$GetLibraryItems200Response _$result;
    try {
      _$result = _$v ??
          new _$GetLibraryItems200Response._(
              results: _results?.build(),
              total: total,
              limit: limit,
              page: page,
              sortBy: sortBy,
              sortDesc: sortDesc,
              filterBy: filterBy,
              mediaType: mediaType,
              minified: minified,
              collapseSeries: collapseSeries,
              include: include);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLibraryItems200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
