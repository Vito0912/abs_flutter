// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LibrarySettings extends LibrarySettings {
  @override
  final int? coverAspectRatio;
  @override
  final bool? disableWatcher;
  @override
  final bool? skipMatchingMediaWithAsin;
  @override
  final bool? skipMatchingMediaWithIsbn;
  @override
  final String? autoScanCronExpression;
  @override
  final bool? audiobooksOnly;
  @override
  final bool? hideSingleBookSeries;
  @override
  final bool? onlyShowLaterBooksInContinueSeries;
  @override
  final BuiltList<String>? metadataPrecedence;
  @override
  final String? podcastSearchRegion;

  factory _$LibrarySettings([void Function(LibrarySettingsBuilder)? updates]) =>
      (new LibrarySettingsBuilder()..update(updates))._build();

  _$LibrarySettings._(
      {this.coverAspectRatio,
      this.disableWatcher,
      this.skipMatchingMediaWithAsin,
      this.skipMatchingMediaWithIsbn,
      this.autoScanCronExpression,
      this.audiobooksOnly,
      this.hideSingleBookSeries,
      this.onlyShowLaterBooksInContinueSeries,
      this.metadataPrecedence,
      this.podcastSearchRegion})
      : super._();

  @override
  LibrarySettings rebuild(void Function(LibrarySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LibrarySettingsBuilder toBuilder() =>
      new LibrarySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LibrarySettings &&
        coverAspectRatio == other.coverAspectRatio &&
        disableWatcher == other.disableWatcher &&
        skipMatchingMediaWithAsin == other.skipMatchingMediaWithAsin &&
        skipMatchingMediaWithIsbn == other.skipMatchingMediaWithIsbn &&
        autoScanCronExpression == other.autoScanCronExpression &&
        audiobooksOnly == other.audiobooksOnly &&
        hideSingleBookSeries == other.hideSingleBookSeries &&
        onlyShowLaterBooksInContinueSeries ==
            other.onlyShowLaterBooksInContinueSeries &&
        metadataPrecedence == other.metadataPrecedence &&
        podcastSearchRegion == other.podcastSearchRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coverAspectRatio.hashCode);
    _$hash = $jc(_$hash, disableWatcher.hashCode);
    _$hash = $jc(_$hash, skipMatchingMediaWithAsin.hashCode);
    _$hash = $jc(_$hash, skipMatchingMediaWithIsbn.hashCode);
    _$hash = $jc(_$hash, autoScanCronExpression.hashCode);
    _$hash = $jc(_$hash, audiobooksOnly.hashCode);
    _$hash = $jc(_$hash, hideSingleBookSeries.hashCode);
    _$hash = $jc(_$hash, onlyShowLaterBooksInContinueSeries.hashCode);
    _$hash = $jc(_$hash, metadataPrecedence.hashCode);
    _$hash = $jc(_$hash, podcastSearchRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LibrarySettings')
          ..add('coverAspectRatio', coverAspectRatio)
          ..add('disableWatcher', disableWatcher)
          ..add('skipMatchingMediaWithAsin', skipMatchingMediaWithAsin)
          ..add('skipMatchingMediaWithIsbn', skipMatchingMediaWithIsbn)
          ..add('autoScanCronExpression', autoScanCronExpression)
          ..add('audiobooksOnly', audiobooksOnly)
          ..add('hideSingleBookSeries', hideSingleBookSeries)
          ..add('onlyShowLaterBooksInContinueSeries',
              onlyShowLaterBooksInContinueSeries)
          ..add('metadataPrecedence', metadataPrecedence)
          ..add('podcastSearchRegion', podcastSearchRegion))
        .toString();
  }
}

class LibrarySettingsBuilder
    implements Builder<LibrarySettings, LibrarySettingsBuilder> {
  _$LibrarySettings? _$v;

  int? _coverAspectRatio;
  int? get coverAspectRatio => _$this._coverAspectRatio;
  set coverAspectRatio(int? coverAspectRatio) =>
      _$this._coverAspectRatio = coverAspectRatio;

  bool? _disableWatcher;
  bool? get disableWatcher => _$this._disableWatcher;
  set disableWatcher(bool? disableWatcher) =>
      _$this._disableWatcher = disableWatcher;

  bool? _skipMatchingMediaWithAsin;
  bool? get skipMatchingMediaWithAsin => _$this._skipMatchingMediaWithAsin;
  set skipMatchingMediaWithAsin(bool? skipMatchingMediaWithAsin) =>
      _$this._skipMatchingMediaWithAsin = skipMatchingMediaWithAsin;

  bool? _skipMatchingMediaWithIsbn;
  bool? get skipMatchingMediaWithIsbn => _$this._skipMatchingMediaWithIsbn;
  set skipMatchingMediaWithIsbn(bool? skipMatchingMediaWithIsbn) =>
      _$this._skipMatchingMediaWithIsbn = skipMatchingMediaWithIsbn;

  String? _autoScanCronExpression;
  String? get autoScanCronExpression => _$this._autoScanCronExpression;
  set autoScanCronExpression(String? autoScanCronExpression) =>
      _$this._autoScanCronExpression = autoScanCronExpression;

  bool? _audiobooksOnly;
  bool? get audiobooksOnly => _$this._audiobooksOnly;
  set audiobooksOnly(bool? audiobooksOnly) =>
      _$this._audiobooksOnly = audiobooksOnly;

  bool? _hideSingleBookSeries;
  bool? get hideSingleBookSeries => _$this._hideSingleBookSeries;
  set hideSingleBookSeries(bool? hideSingleBookSeries) =>
      _$this._hideSingleBookSeries = hideSingleBookSeries;

  bool? _onlyShowLaterBooksInContinueSeries;
  bool? get onlyShowLaterBooksInContinueSeries =>
      _$this._onlyShowLaterBooksInContinueSeries;
  set onlyShowLaterBooksInContinueSeries(
          bool? onlyShowLaterBooksInContinueSeries) =>
      _$this._onlyShowLaterBooksInContinueSeries =
          onlyShowLaterBooksInContinueSeries;

  ListBuilder<String>? _metadataPrecedence;
  ListBuilder<String> get metadataPrecedence =>
      _$this._metadataPrecedence ??= new ListBuilder<String>();
  set metadataPrecedence(ListBuilder<String>? metadataPrecedence) =>
      _$this._metadataPrecedence = metadataPrecedence;

  String? _podcastSearchRegion;
  String? get podcastSearchRegion => _$this._podcastSearchRegion;
  set podcastSearchRegion(String? podcastSearchRegion) =>
      _$this._podcastSearchRegion = podcastSearchRegion;

  LibrarySettingsBuilder() {
    LibrarySettings._defaults(this);
  }

  LibrarySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coverAspectRatio = $v.coverAspectRatio;
      _disableWatcher = $v.disableWatcher;
      _skipMatchingMediaWithAsin = $v.skipMatchingMediaWithAsin;
      _skipMatchingMediaWithIsbn = $v.skipMatchingMediaWithIsbn;
      _autoScanCronExpression = $v.autoScanCronExpression;
      _audiobooksOnly = $v.audiobooksOnly;
      _hideSingleBookSeries = $v.hideSingleBookSeries;
      _onlyShowLaterBooksInContinueSeries =
          $v.onlyShowLaterBooksInContinueSeries;
      _metadataPrecedence = $v.metadataPrecedence?.toBuilder();
      _podcastSearchRegion = $v.podcastSearchRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LibrarySettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LibrarySettings;
  }

  @override
  void update(void Function(LibrarySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LibrarySettings build() => _build();

  _$LibrarySettings _build() {
    _$LibrarySettings _$result;
    try {
      _$result = _$v ??
          new _$LibrarySettings._(
              coverAspectRatio: coverAspectRatio,
              disableWatcher: disableWatcher,
              skipMatchingMediaWithAsin: skipMatchingMediaWithAsin,
              skipMatchingMediaWithIsbn: skipMatchingMediaWithIsbn,
              autoScanCronExpression: autoScanCronExpression,
              audiobooksOnly: audiobooksOnly,
              hideSingleBookSeries: hideSingleBookSeries,
              onlyShowLaterBooksInContinueSeries:
                  onlyShowLaterBooksInContinueSeries,
              metadataPrecedence: _metadataPrecedence?.build(),
              podcastSearchRegion: podcastSearchRegion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadataPrecedence';
        _metadataPrecedence?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LibrarySettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
