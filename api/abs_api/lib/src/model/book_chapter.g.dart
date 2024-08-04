// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_chapter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BookChapter extends BookChapter {
  @override
  final int? id;
  @override
  final num? start;
  @override
  final num? end;
  @override
  final String? title;

  factory _$BookChapter([void Function(BookChapterBuilder)? updates]) =>
      (new BookChapterBuilder()..update(updates))._build();

  _$BookChapter._({this.id, this.start, this.end, this.title}) : super._();

  @override
  BookChapter rebuild(void Function(BookChapterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookChapterBuilder toBuilder() => new BookChapterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookChapter &&
        id == other.id &&
        start == other.start &&
        end == other.end &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BookChapter')
          ..add('id', id)
          ..add('start', start)
          ..add('end', end)
          ..add('title', title))
        .toString();
  }
}

class BookChapterBuilder implements Builder<BookChapter, BookChapterBuilder> {
  _$BookChapter? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  num? _start;
  num? get start => _$this._start;
  set start(num? start) => _$this._start = start;

  num? _end;
  num? get end => _$this._end;
  set end(num? end) => _$this._end = end;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  BookChapterBuilder() {
    BookChapter._defaults(this);
  }

  BookChapterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _start = $v.start;
      _end = $v.end;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookChapter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookChapter;
  }

  @override
  void update(void Function(BookChapterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BookChapter build() => _build();

  _$BookChapter _build() {
    final _$result = _$v ??
        new _$BookChapter._(id: id, start: start, end: end, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
