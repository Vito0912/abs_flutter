// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_progress.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeriesProgress extends SeriesProgress {
  @override
  final BuiltList<String>? libraryItemIds;
  @override
  final BuiltList<String>? libraryItemIdsFinished;
  @override
  final bool? isFinished;

  factory _$SeriesProgress([void Function(SeriesProgressBuilder)? updates]) =>
      (new SeriesProgressBuilder()..update(updates))._build();

  _$SeriesProgress._(
      {this.libraryItemIds, this.libraryItemIdsFinished, this.isFinished})
      : super._();

  @override
  SeriesProgress rebuild(void Function(SeriesProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesProgressBuilder toBuilder() =>
      new SeriesProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesProgress &&
        libraryItemIds == other.libraryItemIds &&
        libraryItemIdsFinished == other.libraryItemIdsFinished &&
        isFinished == other.isFinished;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, libraryItemIds.hashCode);
    _$hash = $jc(_$hash, libraryItemIdsFinished.hashCode);
    _$hash = $jc(_$hash, isFinished.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeriesProgress')
          ..add('libraryItemIds', libraryItemIds)
          ..add('libraryItemIdsFinished', libraryItemIdsFinished)
          ..add('isFinished', isFinished))
        .toString();
  }
}

class SeriesProgressBuilder
    implements Builder<SeriesProgress, SeriesProgressBuilder> {
  _$SeriesProgress? _$v;

  ListBuilder<String>? _libraryItemIds;
  ListBuilder<String> get libraryItemIds =>
      _$this._libraryItemIds ??= new ListBuilder<String>();
  set libraryItemIds(ListBuilder<String>? libraryItemIds) =>
      _$this._libraryItemIds = libraryItemIds;

  ListBuilder<String>? _libraryItemIdsFinished;
  ListBuilder<String> get libraryItemIdsFinished =>
      _$this._libraryItemIdsFinished ??= new ListBuilder<String>();
  set libraryItemIdsFinished(ListBuilder<String>? libraryItemIdsFinished) =>
      _$this._libraryItemIdsFinished = libraryItemIdsFinished;

  bool? _isFinished;
  bool? get isFinished => _$this._isFinished;
  set isFinished(bool? isFinished) => _$this._isFinished = isFinished;

  SeriesProgressBuilder() {
    SeriesProgress._defaults(this);
  }

  SeriesProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _libraryItemIds = $v.libraryItemIds?.toBuilder();
      _libraryItemIdsFinished = $v.libraryItemIdsFinished?.toBuilder();
      _isFinished = $v.isFinished;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesProgress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeriesProgress;
  }

  @override
  void update(void Function(SeriesProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeriesProgress build() => _build();

  _$SeriesProgress _build() {
    _$SeriesProgress _$result;
    try {
      _$result = _$v ??
          new _$SeriesProgress._(
              libraryItemIds: _libraryItemIds?.build(),
              libraryItemIdsFinished: _libraryItemIdsFinished?.build(),
              isFinished: isFinished);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'libraryItemIds';
        _libraryItemIds?.build();
        _$failedField = 'libraryItemIdsFinished';
        _libraryItemIdsFinished?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SeriesProgress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
