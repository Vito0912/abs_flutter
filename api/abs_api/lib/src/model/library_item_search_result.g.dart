// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_item_search_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibraryItemSearchResult extends LibraryItemSearchResult {
  @override
  final LibraryItemExpanded? libraryItem;
  @override
  final String? matchKey;
  @override
  final String? matchText;

  factory _$LibraryItemSearchResult(
          [void Function(LibraryItemSearchResultBuilder)? updates]) =>
      (new LibraryItemSearchResultBuilder()..update(updates))._build();

  _$LibraryItemSearchResult._({this.libraryItem, this.matchKey, this.matchText})
      : super._();

  @override
  LibraryItemSearchResult rebuild(
          void Function(LibraryItemSearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibraryItemSearchResultBuilder toBuilder() =>
      new LibraryItemSearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibraryItemSearchResult &&
        libraryItem == other.libraryItem &&
        matchKey == other.matchKey &&
        matchText == other.matchText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryItem.hashCode);
    _$hash = $jc(_$hash, matchKey.hashCode);
    _$hash = $jc(_$hash, matchText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibraryItemSearchResult')
          ..add('libraryItem', libraryItem)
          ..add('matchKey', matchKey)
          ..add('matchText', matchText))
        .toString();
  }
}

class LibraryItemSearchResultBuilder
    implements
        Builder<LibraryItemSearchResult, LibraryItemSearchResultBuilder> {
  _$LibraryItemSearchResult? _$v;

  LibraryItemExpandedBuilder? _libraryItem;
  LibraryItemExpandedBuilder get libraryItem =>
      _$this._libraryItem ??= new LibraryItemExpandedBuilder();
  set libraryItem(LibraryItemExpandedBuilder? libraryItem) =>
      _$this._libraryItem = libraryItem;

  String? _matchKey;
  String? get matchKey => _$this._matchKey;
  set matchKey(String? matchKey) => _$this._matchKey = matchKey;

  String? _matchText;
  String? get matchText => _$this._matchText;
  set matchText(String? matchText) => _$this._matchText = matchText;

  LibraryItemSearchResultBuilder() {
    LibraryItemSearchResult._defaults(this);
  }

  LibraryItemSearchResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryItem = $v.libraryItem?.toBuilder();
      _matchKey = $v.matchKey;
      _matchText = $v.matchText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibraryItemSearchResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibraryItemSearchResult;
  }

  @override
  void update(void Function(LibraryItemSearchResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibraryItemSearchResult build() => _build();

  _$LibraryItemSearchResult _build() {
    _$LibraryItemSearchResult _$result;
    try {
      _$result = _$v ??
          new _$LibraryItemSearchResult._(
              libraryItem: _libraryItem?.build(),
              matchKey: matchKey,
              matchText: matchText);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'libraryItem';
        _libraryItem?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibraryItemSearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
