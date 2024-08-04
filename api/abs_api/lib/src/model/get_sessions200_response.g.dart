// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_sessions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSessions200Response extends GetSessions200Response {
  @override
  final BuiltList<LibraryItemBase>? results;
  @override
  final int? total;
  @override
  final int? itemsPerPage;
  @override
  final int? numPages;
  @override
  final JsonObject? userFilter;
  @override
  final BuiltList<PlaybackSession>? sessions;

  factory _$GetSessions200Response(
          [void Function(GetSessions200ResponseBuilder)? updates]) =>
      (new GetSessions200ResponseBuilder()..update(updates))._build();

  _$GetSessions200Response._(
      {this.results,
      this.total,
      this.itemsPerPage,
      this.numPages,
      this.userFilter,
      this.sessions})
      : super._();

  @override
  GetSessions200Response rebuild(
          void Function(GetSessions200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSessions200ResponseBuilder toBuilder() =>
      new GetSessions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSessions200Response &&
        results == other.results &&
        total == other.total &&
        itemsPerPage == other.itemsPerPage &&
        numPages == other.numPages &&
        userFilter == other.userFilter &&
        sessions == other.sessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, numPages.hashCode);
    _$hash = $jc(_$hash, userFilter.hashCode);
    _$hash = $jc(_$hash, sessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSessions200Response')
          ..add('results', results)
          ..add('total', total)
          ..add('itemsPerPage', itemsPerPage)
          ..add('numPages', numPages)
          ..add('userFilter', userFilter)
          ..add('sessions', sessions))
        .toString();
  }
}

class GetSessions200ResponseBuilder
    implements Builder<GetSessions200Response, GetSessions200ResponseBuilder> {
  _$GetSessions200Response? _$v;

  ListBuilder<LibraryItemBase>? _results;
  ListBuilder<LibraryItemBase> get results =>
      _$this._results ??= new ListBuilder<LibraryItemBase>();
  set results(ListBuilder<LibraryItemBase>? results) =>
      _$this._results = results;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _numPages;
  int? get numPages => _$this._numPages;
  set numPages(int? numPages) => _$this._numPages = numPages;

  JsonObject? _userFilter;
  JsonObject? get userFilter => _$this._userFilter;
  set userFilter(JsonObject? userFilter) => _$this._userFilter = userFilter;

  ListBuilder<PlaybackSession>? _sessions;
  ListBuilder<PlaybackSession> get sessions =>
      _$this._sessions ??= new ListBuilder<PlaybackSession>();
  set sessions(ListBuilder<PlaybackSession>? sessions) =>
      _$this._sessions = sessions;

  GetSessions200ResponseBuilder() {
    GetSessions200Response._defaults(this);
  }

  GetSessions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _total = $v.total;
      _itemsPerPage = $v.itemsPerPage;
      _numPages = $v.numPages;
      _userFilter = $v.userFilter;
      _sessions = $v.sessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSessions200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSessions200Response;
  }

  @override
  void update(void Function(GetSessions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSessions200Response build() => _build();

  _$GetSessions200Response _build() {
    _$GetSessions200Response _$result;
    try {
      _$result = _$v ??
          new _$GetSessions200Response._(
              results: _results?.build(),
              total: total,
              itemsPerPage: itemsPerPage,
              numPages: numPages,
              userFilter: userFilter,
              sessions: _sessions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();

        _$failedField = 'sessions';
        _sessions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSessions200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
