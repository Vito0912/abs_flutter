// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSettings extends ServerSettings {
  @override
  final String? id;
  @override
  final bool? scannerFindCovers;
  @override
  final String? scannerCoverProvider;
  @override
  final bool? scannerParseSubtitle;
  @override
  final bool? scannerPreferMatchedMetadata;
  @override
  final bool? scannerDisableWatcher;
  @override
  final bool? storeCoverWithItem;
  @override
  final bool? storeMetadataWithItem;
  @override
  final String? metadataFileFormat;
  @override
  final int? rateLimitLoginRequests;
  @override
  final int? rateLimitLoginWindow;
  @override
  final String? backupSchedule;
  @override
  final int? backupsToKeep;
  @override
  final int? maxBackupSize;
  @override
  final int? loggerDailyLogsToKeep;
  @override
  final int? loggerScannerLogsToKeep;
  @override
  final int? homeBookshelfView;
  @override
  final int? bookshelfView;
  @override
  final bool? sortingIgnorePrefix;
  @override
  final BuiltList<String>? sortingPrefixes;
  @override
  final bool? chromecastEnabled;
  @override
  final String? dateFormat;
  @override
  final String? language;
  @override
  final int? logLevel;
  @override
  final String? version;

  factory _$ServerSettings([void Function(ServerSettingsBuilder)? updates]) =>
      (new ServerSettingsBuilder()..update(updates))._build();

  _$ServerSettings._(
      {this.id,
      this.scannerFindCovers,
      this.scannerCoverProvider,
      this.scannerParseSubtitle,
      this.scannerPreferMatchedMetadata,
      this.scannerDisableWatcher,
      this.storeCoverWithItem,
      this.storeMetadataWithItem,
      this.metadataFileFormat,
      this.rateLimitLoginRequests,
      this.rateLimitLoginWindow,
      this.backupSchedule,
      this.backupsToKeep,
      this.maxBackupSize,
      this.loggerDailyLogsToKeep,
      this.loggerScannerLogsToKeep,
      this.homeBookshelfView,
      this.bookshelfView,
      this.sortingIgnorePrefix,
      this.sortingPrefixes,
      this.chromecastEnabled,
      this.dateFormat,
      this.language,
      this.logLevel,
      this.version})
      : super._();

  @override
  ServerSettings rebuild(void Function(ServerSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSettingsBuilder toBuilder() =>
      new ServerSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSettings &&
        id == other.id &&
        scannerFindCovers == other.scannerFindCovers &&
        scannerCoverProvider == other.scannerCoverProvider &&
        scannerParseSubtitle == other.scannerParseSubtitle &&
        scannerPreferMatchedMetadata == other.scannerPreferMatchedMetadata &&
        scannerDisableWatcher == other.scannerDisableWatcher &&
        storeCoverWithItem == other.storeCoverWithItem &&
        storeMetadataWithItem == other.storeMetadataWithItem &&
        metadataFileFormat == other.metadataFileFormat &&
        rateLimitLoginRequests == other.rateLimitLoginRequests &&
        rateLimitLoginWindow == other.rateLimitLoginWindow &&
        backupSchedule == other.backupSchedule &&
        backupsToKeep == other.backupsToKeep &&
        maxBackupSize == other.maxBackupSize &&
        loggerDailyLogsToKeep == other.loggerDailyLogsToKeep &&
        loggerScannerLogsToKeep == other.loggerScannerLogsToKeep &&
        homeBookshelfView == other.homeBookshelfView &&
        bookshelfView == other.bookshelfView &&
        sortingIgnorePrefix == other.sortingIgnorePrefix &&
        sortingPrefixes == other.sortingPrefixes &&
        chromecastEnabled == other.chromecastEnabled &&
        dateFormat == other.dateFormat &&
        language == other.language &&
        logLevel == other.logLevel &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, scannerFindCovers.hashCode);
    _$hash = $jc(_$hash, scannerCoverProvider.hashCode);
    _$hash = $jc(_$hash, scannerParseSubtitle.hashCode);
    _$hash = $jc(_$hash, scannerPreferMatchedMetadata.hashCode);
    _$hash = $jc(_$hash, scannerDisableWatcher.hashCode);
    _$hash = $jc(_$hash, storeCoverWithItem.hashCode);
    _$hash = $jc(_$hash, storeMetadataWithItem.hashCode);
    _$hash = $jc(_$hash, metadataFileFormat.hashCode);
    _$hash = $jc(_$hash, rateLimitLoginRequests.hashCode);
    _$hash = $jc(_$hash, rateLimitLoginWindow.hashCode);
    _$hash = $jc(_$hash, backupSchedule.hashCode);
    _$hash = $jc(_$hash, backupsToKeep.hashCode);
    _$hash = $jc(_$hash, maxBackupSize.hashCode);
    _$hash = $jc(_$hash, loggerDailyLogsToKeep.hashCode);
    _$hash = $jc(_$hash, loggerScannerLogsToKeep.hashCode);
    _$hash = $jc(_$hash, homeBookshelfView.hashCode);
    _$hash = $jc(_$hash, bookshelfView.hashCode);
    _$hash = $jc(_$hash, sortingIgnorePrefix.hashCode);
    _$hash = $jc(_$hash, sortingPrefixes.hashCode);
    _$hash = $jc(_$hash, chromecastEnabled.hashCode);
    _$hash = $jc(_$hash, dateFormat.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, logLevel.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServerSettings')
          ..add('id', id)
          ..add('scannerFindCovers', scannerFindCovers)
          ..add('scannerCoverProvider', scannerCoverProvider)
          ..add('scannerParseSubtitle', scannerParseSubtitle)
          ..add('scannerPreferMatchedMetadata', scannerPreferMatchedMetadata)
          ..add('scannerDisableWatcher', scannerDisableWatcher)
          ..add('storeCoverWithItem', storeCoverWithItem)
          ..add('storeMetadataWithItem', storeMetadataWithItem)
          ..add('metadataFileFormat', metadataFileFormat)
          ..add('rateLimitLoginRequests', rateLimitLoginRequests)
          ..add('rateLimitLoginWindow', rateLimitLoginWindow)
          ..add('backupSchedule', backupSchedule)
          ..add('backupsToKeep', backupsToKeep)
          ..add('maxBackupSize', maxBackupSize)
          ..add('loggerDailyLogsToKeep', loggerDailyLogsToKeep)
          ..add('loggerScannerLogsToKeep', loggerScannerLogsToKeep)
          ..add('homeBookshelfView', homeBookshelfView)
          ..add('bookshelfView', bookshelfView)
          ..add('sortingIgnorePrefix', sortingIgnorePrefix)
          ..add('sortingPrefixes', sortingPrefixes)
          ..add('chromecastEnabled', chromecastEnabled)
          ..add('dateFormat', dateFormat)
          ..add('language', language)
          ..add('logLevel', logLevel)
          ..add('version', version))
        .toString();
  }
}

class ServerSettingsBuilder
    implements Builder<ServerSettings, ServerSettingsBuilder> {
  _$ServerSettings? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _scannerFindCovers;
  bool? get scannerFindCovers => _$this._scannerFindCovers;
  set scannerFindCovers(bool? scannerFindCovers) =>
      _$this._scannerFindCovers = scannerFindCovers;

  String? _scannerCoverProvider;
  String? get scannerCoverProvider => _$this._scannerCoverProvider;
  set scannerCoverProvider(String? scannerCoverProvider) =>
      _$this._scannerCoverProvider = scannerCoverProvider;

  bool? _scannerParseSubtitle;
  bool? get scannerParseSubtitle => _$this._scannerParseSubtitle;
  set scannerParseSubtitle(bool? scannerParseSubtitle) =>
      _$this._scannerParseSubtitle = scannerParseSubtitle;

  bool? _scannerPreferMatchedMetadata;
  bool? get scannerPreferMatchedMetadata =>
      _$this._scannerPreferMatchedMetadata;
  set scannerPreferMatchedMetadata(bool? scannerPreferMatchedMetadata) =>
      _$this._scannerPreferMatchedMetadata = scannerPreferMatchedMetadata;

  bool? _scannerDisableWatcher;
  bool? get scannerDisableWatcher => _$this._scannerDisableWatcher;
  set scannerDisableWatcher(bool? scannerDisableWatcher) =>
      _$this._scannerDisableWatcher = scannerDisableWatcher;

  bool? _storeCoverWithItem;
  bool? get storeCoverWithItem => _$this._storeCoverWithItem;
  set storeCoverWithItem(bool? storeCoverWithItem) =>
      _$this._storeCoverWithItem = storeCoverWithItem;

  bool? _storeMetadataWithItem;
  bool? get storeMetadataWithItem => _$this._storeMetadataWithItem;
  set storeMetadataWithItem(bool? storeMetadataWithItem) =>
      _$this._storeMetadataWithItem = storeMetadataWithItem;

  String? _metadataFileFormat;
  String? get metadataFileFormat => _$this._metadataFileFormat;
  set metadataFileFormat(String? metadataFileFormat) =>
      _$this._metadataFileFormat = metadataFileFormat;

  int? _rateLimitLoginRequests;
  int? get rateLimitLoginRequests => _$this._rateLimitLoginRequests;
  set rateLimitLoginRequests(int? rateLimitLoginRequests) =>
      _$this._rateLimitLoginRequests = rateLimitLoginRequests;

  int? _rateLimitLoginWindow;
  int? get rateLimitLoginWindow => _$this._rateLimitLoginWindow;
  set rateLimitLoginWindow(int? rateLimitLoginWindow) =>
      _$this._rateLimitLoginWindow = rateLimitLoginWindow;

  String? _backupSchedule;
  String? get backupSchedule => _$this._backupSchedule;
  set backupSchedule(String? backupSchedule) =>
      _$this._backupSchedule = backupSchedule;

  int? _backupsToKeep;
  int? get backupsToKeep => _$this._backupsToKeep;
  set backupsToKeep(int? backupsToKeep) =>
      _$this._backupsToKeep = backupsToKeep;

  int? _maxBackupSize;
  int? get maxBackupSize => _$this._maxBackupSize;
  set maxBackupSize(int? maxBackupSize) =>
      _$this._maxBackupSize = maxBackupSize;

  int? _loggerDailyLogsToKeep;
  int? get loggerDailyLogsToKeep => _$this._loggerDailyLogsToKeep;
  set loggerDailyLogsToKeep(int? loggerDailyLogsToKeep) =>
      _$this._loggerDailyLogsToKeep = loggerDailyLogsToKeep;

  int? _loggerScannerLogsToKeep;
  int? get loggerScannerLogsToKeep => _$this._loggerScannerLogsToKeep;
  set loggerScannerLogsToKeep(int? loggerScannerLogsToKeep) =>
      _$this._loggerScannerLogsToKeep = loggerScannerLogsToKeep;

  int? _homeBookshelfView;
  int? get homeBookshelfView => _$this._homeBookshelfView;
  set homeBookshelfView(int? homeBookshelfView) =>
      _$this._homeBookshelfView = homeBookshelfView;

  int? _bookshelfView;
  int? get bookshelfView => _$this._bookshelfView;
  set bookshelfView(int? bookshelfView) =>
      _$this._bookshelfView = bookshelfView;

  bool? _sortingIgnorePrefix;
  bool? get sortingIgnorePrefix => _$this._sortingIgnorePrefix;
  set sortingIgnorePrefix(bool? sortingIgnorePrefix) =>
      _$this._sortingIgnorePrefix = sortingIgnorePrefix;

  ListBuilder<String>? _sortingPrefixes;
  ListBuilder<String> get sortingPrefixes =>
      _$this._sortingPrefixes ??= new ListBuilder<String>();
  set sortingPrefixes(ListBuilder<String>? sortingPrefixes) =>
      _$this._sortingPrefixes = sortingPrefixes;

  bool? _chromecastEnabled;
  bool? get chromecastEnabled => _$this._chromecastEnabled;
  set chromecastEnabled(bool? chromecastEnabled) =>
      _$this._chromecastEnabled = chromecastEnabled;

  String? _dateFormat;
  String? get dateFormat => _$this._dateFormat;
  set dateFormat(String? dateFormat) => _$this._dateFormat = dateFormat;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  int? _logLevel;
  int? get logLevel => _$this._logLevel;
  set logLevel(int? logLevel) => _$this._logLevel = logLevel;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  ServerSettingsBuilder() {
    ServerSettings._defaults(this);
  }

  ServerSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _scannerFindCovers = $v.scannerFindCovers;
      _scannerCoverProvider = $v.scannerCoverProvider;
      _scannerParseSubtitle = $v.scannerParseSubtitle;
      _scannerPreferMatchedMetadata = $v.scannerPreferMatchedMetadata;
      _scannerDisableWatcher = $v.scannerDisableWatcher;
      _storeCoverWithItem = $v.storeCoverWithItem;
      _storeMetadataWithItem = $v.storeMetadataWithItem;
      _metadataFileFormat = $v.metadataFileFormat;
      _rateLimitLoginRequests = $v.rateLimitLoginRequests;
      _rateLimitLoginWindow = $v.rateLimitLoginWindow;
      _backupSchedule = $v.backupSchedule;
      _backupsToKeep = $v.backupsToKeep;
      _maxBackupSize = $v.maxBackupSize;
      _loggerDailyLogsToKeep = $v.loggerDailyLogsToKeep;
      _loggerScannerLogsToKeep = $v.loggerScannerLogsToKeep;
      _homeBookshelfView = $v.homeBookshelfView;
      _bookshelfView = $v.bookshelfView;
      _sortingIgnorePrefix = $v.sortingIgnorePrefix;
      _sortingPrefixes = $v.sortingPrefixes?.toBuilder();
      _chromecastEnabled = $v.chromecastEnabled;
      _dateFormat = $v.dateFormat;
      _language = $v.language;
      _logLevel = $v.logLevel;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSettings;
  }

  @override
  void update(void Function(ServerSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSettings build() => _build();

  _$ServerSettings _build() {
    _$ServerSettings _$result;
    try {
      _$result = _$v ??
          new _$ServerSettings._(
              id: id,
              scannerFindCovers: scannerFindCovers,
              scannerCoverProvider: scannerCoverProvider,
              scannerParseSubtitle: scannerParseSubtitle,
              scannerPreferMatchedMetadata: scannerPreferMatchedMetadata,
              scannerDisableWatcher: scannerDisableWatcher,
              storeCoverWithItem: storeCoverWithItem,
              storeMetadataWithItem: storeMetadataWithItem,
              metadataFileFormat: metadataFileFormat,
              rateLimitLoginRequests: rateLimitLoginRequests,
              rateLimitLoginWindow: rateLimitLoginWindow,
              backupSchedule: backupSchedule,
              backupsToKeep: backupsToKeep,
              maxBackupSize: maxBackupSize,
              loggerDailyLogsToKeep: loggerDailyLogsToKeep,
              loggerScannerLogsToKeep: loggerScannerLogsToKeep,
              homeBookshelfView: homeBookshelfView,
              bookshelfView: bookshelfView,
              sortingIgnorePrefix: sortingIgnorePrefix,
              sortingPrefixes: _sortingPrefixes?.build(),
              chromecastEnabled: chromecastEnabled,
              dateFormat: dateFormat,
              language: language,
              logLevel: logLevel,
              version: version);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sortingPrefixes';
        _sortingPrefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
