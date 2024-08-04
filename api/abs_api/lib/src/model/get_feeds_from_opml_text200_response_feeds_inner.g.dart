// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feeds_from_opml_text200_response_feeds_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFeedsFromOPMLText200ResponseFeedsInner
    extends GetFeedsFromOPMLText200ResponseFeedsInner {
  @override
  final String? title;
  @override
  final String? feedUrl;

  factory _$GetFeedsFromOPMLText200ResponseFeedsInner(
          [void Function(GetFeedsFromOPMLText200ResponseFeedsInnerBuilder)?
              updates]) =>
      (new GetFeedsFromOPMLText200ResponseFeedsInnerBuilder()..update(updates))
          ._build();

  _$GetFeedsFromOPMLText200ResponseFeedsInner._({this.title, this.feedUrl})
      : super._();

  @override
  GetFeedsFromOPMLText200ResponseFeedsInner rebuild(
          void Function(GetFeedsFromOPMLText200ResponseFeedsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFeedsFromOPMLText200ResponseFeedsInnerBuilder toBuilder() =>
      new GetFeedsFromOPMLText200ResponseFeedsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFeedsFromOPMLText200ResponseFeedsInner &&
        title == other.title &&
        feedUrl == other.feedUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, feedUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetFeedsFromOPMLText200ResponseFeedsInner')
          ..add('title', title)
          ..add('feedUrl', feedUrl))
        .toString();
  }
}

class GetFeedsFromOPMLText200ResponseFeedsInnerBuilder
    implements
        Builder<GetFeedsFromOPMLText200ResponseFeedsInner,
            GetFeedsFromOPMLText200ResponseFeedsInnerBuilder> {
  _$GetFeedsFromOPMLText200ResponseFeedsInner? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _feedUrl;
  String? get feedUrl => _$this._feedUrl;
  set feedUrl(String? feedUrl) => _$this._feedUrl = feedUrl;

  GetFeedsFromOPMLText200ResponseFeedsInnerBuilder() {
    GetFeedsFromOPMLText200ResponseFeedsInner._defaults(this);
  }

  GetFeedsFromOPMLText200ResponseFeedsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _feedUrl = $v.feedUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFeedsFromOPMLText200ResponseFeedsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFeedsFromOPMLText200ResponseFeedsInner;
  }

  @override
  void update(
      void Function(GetFeedsFromOPMLText200ResponseFeedsInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFeedsFromOPMLText200ResponseFeedsInner build() => _build();

  _$GetFeedsFromOPMLText200ResponseFeedsInner _build() {
    final _$result = _$v ??
        new _$GetFeedsFromOPMLText200ResponseFeedsInner._(
            title: title, feedUrl: feedUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
