// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bookmark extends Bookmark {
  @override
  final String? libraryItemId;
  @override
  final String? title;
  @override
  final int? time;
  @override
  final int? createdAt;

  factory _$Bookmark([void Function(BookmarkBuilder)? updates]) =>
      (new BookmarkBuilder()..update(updates))._build();

  _$Bookmark._({this.libraryItemId, this.title, this.time, this.createdAt})
      : super._();

  @override
  Bookmark rebuild(void Function(BookmarkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookmarkBuilder toBuilder() => new BookmarkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bookmark &&
        libraryItemId == other.libraryItemId &&
        title == other.title &&
        time == other.time &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryItemId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Bookmark')
          ..add('libraryItemId', libraryItemId)
          ..add('title', title)
          ..add('time', time)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class BookmarkBuilder implements Builder<Bookmark, BookmarkBuilder> {
  _$Bookmark? _$v;

  String? _libraryItemId;
  String? get libraryItemId => _$this._libraryItemId;
  set libraryItemId(String? libraryItemId) =>
      _$this._libraryItemId = libraryItemId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  BookmarkBuilder() {
    Bookmark._defaults(this);
  }

  BookmarkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryItemId = $v.libraryItemId;
      _title = $v.title;
      _time = $v.time;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bookmark other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Bookmark;
  }

  @override
  void update(void Function(BookmarkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Bookmark build() => _build();

  _$Bookmark _build() {
    final _$result = _$v ??
        new _$Bookmark._(
            libraryItemId: libraryItemId,
            title: title,
            time: time,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
