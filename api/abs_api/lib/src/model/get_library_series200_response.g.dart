// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_library_series200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLibrarySeries200Response extends GetLibrarySeries200Response {
  @override
  final BuiltList<SeriesBooks>? results;
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
  final bool? minified;
  @override
  final String? include;

  factory _$GetLibrarySeries200Response(
          [void Function(GetLibrarySeries200ResponseBuilder)? updates]) =>
      (new GetLibrarySeries200ResponseBuilder()..update(updates))._build();

  _$GetLibrarySeries200Response._(
      {this.results,
      this.total,
      this.limit,
      this.page,
      this.sortBy,
      this.sortDesc,
      this.filterBy,
      this.minified,
      this.include})
      : super._();

  @override
  GetLibrarySeries200Response rebuild(
          void Function(GetLibrarySeries200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLibrarySeries200ResponseBuilder toBuilder() =>
      new GetLibrarySeries200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLibrarySeries200Response &&
        results == other.results &&
        total == other.total &&
        limit == other.limit &&
        page == other.page &&
        sortBy == other.sortBy &&
        sortDesc == other.sortDesc &&
        filterBy == other.filterBy &&
        minified == other.minified &&
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
    _$hash = $jc(_$hash, minified.hashCode);
    _$hash = $jc(_$hash, include.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLibrarySeries200Response')
          ..add('results', results)
          ..add('total', total)
          ..add('limit', limit)
          ..add('page', page)
          ..add('sortBy', sortBy)
          ..add('sortDesc', sortDesc)
          ..add('filterBy', filterBy)
          ..add('minified', minified)
          ..add('include', include))
        .toString();
  }
}

class GetLibrarySeries200ResponseBuilder
    implements
        Builder<GetLibrarySeries200Response,
            GetLibrarySeries200ResponseBuilder> {
  _$GetLibrarySeries200Response? _$v;

  ListBuilder<SeriesBooks>? _results;
  ListBuilder<SeriesBooks> get results =>
      _$this._results ??= new ListBuilder<SeriesBooks>();
  set results(ListBuilder<SeriesBooks>? results) => _$this._results = results;

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

  bool? _minified;
  bool? get minified => _$this._minified;
  set minified(bool? minified) => _$this._minified = minified;

  String? _include;
  String? get include => _$this._include;
  set include(String? include) => _$this._include = include;

  GetLibrarySeries200ResponseBuilder() {
    GetLibrarySeries200Response._defaults(this);
  }

  GetLibrarySeries200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _total = $v.total;
      _limit = $v.limit;
      _page = $v.page;
      _sortBy = $v.sortBy;
      _sortDesc = $v.sortDesc;
      _filterBy = $v.filterBy;
      _minified = $v.minified;
      _include = $v.include;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLibrarySeries200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLibrarySeries200Response;
  }

  @override
  void update(void Function(GetLibrarySeries200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLibrarySeries200Response build() => _build();

  _$GetLibrarySeries200Response _build() {
    _$GetLibrarySeries200Response _$result;
    try {
      _$result = _$v ??
          new _$GetLibrarySeries200Response._(
              results: _results?.build(),
              total: total,
              limit: limit,
              page: page,
              sortBy: sortBy,
              sortDesc: sortDesc,
              filterBy: filterBy,
              minified: minified,
              include: include);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLibrarySeries200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
