// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listening_sessions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetListeningSessions200Response
    extends GetListeningSessions200Response {
  @override
  final int? total;
  @override
  final int? numPages;
  @override
  final int? itemsPerPage;
  @override
  final BuiltList<PlaybackSession>? sessions;

  factory _$GetListeningSessions200Response(
          [void Function(GetListeningSessions200ResponseBuilder)? updates]) =>
      (new GetListeningSessions200ResponseBuilder()..update(updates))._build();

  _$GetListeningSessions200Response._(
      {this.total, this.numPages, this.itemsPerPage, this.sessions})
      : super._();

  @override
  GetListeningSessions200Response rebuild(
          void Function(GetListeningSessions200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetListeningSessions200ResponseBuilder toBuilder() =>
      new GetListeningSessions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetListeningSessions200Response &&
        total == other.total &&
        numPages == other.numPages &&
        itemsPerPage == other.itemsPerPage &&
        sessions == other.sessions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, numPages.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, sessions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetListeningSessions200Response')
          ..add('total', total)
          ..add('numPages', numPages)
          ..add('itemsPerPage', itemsPerPage)
          ..add('sessions', sessions))
        .toString();
  }
}

class GetListeningSessions200ResponseBuilder
    implements
        Builder<GetListeningSessions200Response,
            GetListeningSessions200ResponseBuilder> {
  _$GetListeningSessions200Response? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _numPages;
  int? get numPages => _$this._numPages;
  set numPages(int? numPages) => _$this._numPages = numPages;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  ListBuilder<PlaybackSession>? _sessions;
  ListBuilder<PlaybackSession> get sessions =>
      _$this._sessions ??= new ListBuilder<PlaybackSession>();
  set sessions(ListBuilder<PlaybackSession>? sessions) =>
      _$this._sessions = sessions;

  GetListeningSessions200ResponseBuilder() {
    GetListeningSessions200Response._defaults(this);
  }

  GetListeningSessions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _numPages = $v.numPages;
      _itemsPerPage = $v.itemsPerPage;
      _sessions = $v.sessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetListeningSessions200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetListeningSessions200Response;
  }

  @override
  void update(void Function(GetListeningSessions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetListeningSessions200Response build() => _build();

  _$GetListeningSessions200Response _build() {
    _$GetListeningSessions200Response _$result;
    try {
      _$result = _$v ??
          new _$GetListeningSessions200Response._(
              total: total,
              numPages: numPages,
              itemsPerPage: itemsPerPage,
              sessions: _sessions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sessions';
        _sessions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetListeningSessions200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
