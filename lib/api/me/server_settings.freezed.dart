// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServerSettings _$ServerSettingsFromJson(Map<String, dynamic> json) {
  return _ServerSettings.fromJson(json);
}

/// @nodoc
mixin _$ServerSettings {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "scannerFindCovers")
  bool get scannerFindCovers => throw _privateConstructorUsedError;
  @JsonKey(name: "scannerCoverProvider")
  String get scannerCoverProvider => throw _privateConstructorUsedError;
  @JsonKey(name: "scannerParseSubtitle")
  bool get scannerParseSubtitle => throw _privateConstructorUsedError;
  @JsonKey(name: "scannerPreferMatchedMetadata")
  bool get scannerPreferMatchedMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "scannerDisableWatcher")
  bool get scannerDisableWatcher => throw _privateConstructorUsedError;
  @JsonKey(name: "storeCoverWithItem")
  bool get storeCoverWithItem => throw _privateConstructorUsedError;
  @JsonKey(name: "storeMetadataWithItem")
  bool get storeMetadataWithItem => throw _privateConstructorUsedError;
  @JsonKey(name: "metadataFileFormat")
  String get metadataFileFormat => throw _privateConstructorUsedError;
  @JsonKey(name: "rateLimitLoginRequests")
  int get rateLimitLoginRequests => throw _privateConstructorUsedError;
  @JsonKey(name: "rateLimitLoginWindow")
  int get rateLimitLoginWindow => throw _privateConstructorUsedError;
  @JsonKey(name: "backupSchedule")
  String get backupSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: "backupsToKeep")
  int get backupsToKeep => throw _privateConstructorUsedError;
  @JsonKey(name: "maxBackupSize")
  int get maxBackupSize => throw _privateConstructorUsedError;
  @JsonKey(name: "loggerDailyLogsToKeep")
  int get loggerDailyLogsToKeep => throw _privateConstructorUsedError;
  @JsonKey(name: "loggerScannerLogsToKeep")
  int get loggerScannerLogsToKeep => throw _privateConstructorUsedError;
  @JsonKey(name: "homeBookshelfView")
  int get homeBookshelfView => throw _privateConstructorUsedError;
  @JsonKey(name: "bookshelfView")
  int get bookshelfView => throw _privateConstructorUsedError;
  @JsonKey(name: "sortingIgnorePrefix")
  bool get sortingIgnorePrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "sortingPrefixes")
  List<String> get sortingPrefixes => throw _privateConstructorUsedError;
  @JsonKey(name: "chromecastEnabled")
  bool get chromecastEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "dateFormat")
  String get dateFormat => throw _privateConstructorUsedError;
  @JsonKey(name: "language")
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: "logLevel")
  int get logLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String get version => throw _privateConstructorUsedError;

  /// Serializes this ServerSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServerSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerSettingsCopyWith<ServerSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSettingsCopyWith<$Res> {
  factory $ServerSettingsCopyWith(
          ServerSettings value, $Res Function(ServerSettings) then) =
      _$ServerSettingsCopyWithImpl<$Res, ServerSettings>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "scannerFindCovers") bool scannerFindCovers,
      @JsonKey(name: "scannerCoverProvider") String scannerCoverProvider,
      @JsonKey(name: "scannerParseSubtitle") bool scannerParseSubtitle,
      @JsonKey(name: "scannerPreferMatchedMetadata")
      bool scannerPreferMatchedMetadata,
      @JsonKey(name: "scannerDisableWatcher") bool scannerDisableWatcher,
      @JsonKey(name: "storeCoverWithItem") bool storeCoverWithItem,
      @JsonKey(name: "storeMetadataWithItem") bool storeMetadataWithItem,
      @JsonKey(name: "metadataFileFormat") String metadataFileFormat,
      @JsonKey(name: "rateLimitLoginRequests") int rateLimitLoginRequests,
      @JsonKey(name: "rateLimitLoginWindow") int rateLimitLoginWindow,
      @JsonKey(name: "backupSchedule") String backupSchedule,
      @JsonKey(name: "backupsToKeep") int backupsToKeep,
      @JsonKey(name: "maxBackupSize") int maxBackupSize,
      @JsonKey(name: "loggerDailyLogsToKeep") int loggerDailyLogsToKeep,
      @JsonKey(name: "loggerScannerLogsToKeep") int loggerScannerLogsToKeep,
      @JsonKey(name: "homeBookshelfView") int homeBookshelfView,
      @JsonKey(name: "bookshelfView") int bookshelfView,
      @JsonKey(name: "sortingIgnorePrefix") bool sortingIgnorePrefix,
      @JsonKey(name: "sortingPrefixes") List<String> sortingPrefixes,
      @JsonKey(name: "chromecastEnabled") bool chromecastEnabled,
      @JsonKey(name: "dateFormat") String dateFormat,
      @JsonKey(name: "language") String language,
      @JsonKey(name: "logLevel") int logLevel,
      @JsonKey(name: "version") String version});
}

/// @nodoc
class _$ServerSettingsCopyWithImpl<$Res, $Val extends ServerSettings>
    implements $ServerSettingsCopyWith<$Res> {
  _$ServerSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scannerFindCovers = null,
    Object? scannerCoverProvider = null,
    Object? scannerParseSubtitle = null,
    Object? scannerPreferMatchedMetadata = null,
    Object? scannerDisableWatcher = null,
    Object? storeCoverWithItem = null,
    Object? storeMetadataWithItem = null,
    Object? metadataFileFormat = null,
    Object? rateLimitLoginRequests = null,
    Object? rateLimitLoginWindow = null,
    Object? backupSchedule = null,
    Object? backupsToKeep = null,
    Object? maxBackupSize = null,
    Object? loggerDailyLogsToKeep = null,
    Object? loggerScannerLogsToKeep = null,
    Object? homeBookshelfView = null,
    Object? bookshelfView = null,
    Object? sortingIgnorePrefix = null,
    Object? sortingPrefixes = null,
    Object? chromecastEnabled = null,
    Object? dateFormat = null,
    Object? language = null,
    Object? logLevel = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scannerFindCovers: null == scannerFindCovers
          ? _value.scannerFindCovers
          : scannerFindCovers // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerCoverProvider: null == scannerCoverProvider
          ? _value.scannerCoverProvider
          : scannerCoverProvider // ignore: cast_nullable_to_non_nullable
              as String,
      scannerParseSubtitle: null == scannerParseSubtitle
          ? _value.scannerParseSubtitle
          : scannerParseSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerPreferMatchedMetadata: null == scannerPreferMatchedMetadata
          ? _value.scannerPreferMatchedMetadata
          : scannerPreferMatchedMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerDisableWatcher: null == scannerDisableWatcher
          ? _value.scannerDisableWatcher
          : scannerDisableWatcher // ignore: cast_nullable_to_non_nullable
              as bool,
      storeCoverWithItem: null == storeCoverWithItem
          ? _value.storeCoverWithItem
          : storeCoverWithItem // ignore: cast_nullable_to_non_nullable
              as bool,
      storeMetadataWithItem: null == storeMetadataWithItem
          ? _value.storeMetadataWithItem
          : storeMetadataWithItem // ignore: cast_nullable_to_non_nullable
              as bool,
      metadataFileFormat: null == metadataFileFormat
          ? _value.metadataFileFormat
          : metadataFileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      rateLimitLoginRequests: null == rateLimitLoginRequests
          ? _value.rateLimitLoginRequests
          : rateLimitLoginRequests // ignore: cast_nullable_to_non_nullable
              as int,
      rateLimitLoginWindow: null == rateLimitLoginWindow
          ? _value.rateLimitLoginWindow
          : rateLimitLoginWindow // ignore: cast_nullable_to_non_nullable
              as int,
      backupSchedule: null == backupSchedule
          ? _value.backupSchedule
          : backupSchedule // ignore: cast_nullable_to_non_nullable
              as String,
      backupsToKeep: null == backupsToKeep
          ? _value.backupsToKeep
          : backupsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      maxBackupSize: null == maxBackupSize
          ? _value.maxBackupSize
          : maxBackupSize // ignore: cast_nullable_to_non_nullable
              as int,
      loggerDailyLogsToKeep: null == loggerDailyLogsToKeep
          ? _value.loggerDailyLogsToKeep
          : loggerDailyLogsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      loggerScannerLogsToKeep: null == loggerScannerLogsToKeep
          ? _value.loggerScannerLogsToKeep
          : loggerScannerLogsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      homeBookshelfView: null == homeBookshelfView
          ? _value.homeBookshelfView
          : homeBookshelfView // ignore: cast_nullable_to_non_nullable
              as int,
      bookshelfView: null == bookshelfView
          ? _value.bookshelfView
          : bookshelfView // ignore: cast_nullable_to_non_nullable
              as int,
      sortingIgnorePrefix: null == sortingIgnorePrefix
          ? _value.sortingIgnorePrefix
          : sortingIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as bool,
      sortingPrefixes: null == sortingPrefixes
          ? _value.sortingPrefixes
          : sortingPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chromecastEnabled: null == chromecastEnabled
          ? _value.chromecastEnabled
          : chromecastEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFormat: null == dateFormat
          ? _value.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSettingsImplCopyWith<$Res>
    implements $ServerSettingsCopyWith<$Res> {
  factory _$$ServerSettingsImplCopyWith(_$ServerSettingsImpl value,
          $Res Function(_$ServerSettingsImpl) then) =
      __$$ServerSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "scannerFindCovers") bool scannerFindCovers,
      @JsonKey(name: "scannerCoverProvider") String scannerCoverProvider,
      @JsonKey(name: "scannerParseSubtitle") bool scannerParseSubtitle,
      @JsonKey(name: "scannerPreferMatchedMetadata")
      bool scannerPreferMatchedMetadata,
      @JsonKey(name: "scannerDisableWatcher") bool scannerDisableWatcher,
      @JsonKey(name: "storeCoverWithItem") bool storeCoverWithItem,
      @JsonKey(name: "storeMetadataWithItem") bool storeMetadataWithItem,
      @JsonKey(name: "metadataFileFormat") String metadataFileFormat,
      @JsonKey(name: "rateLimitLoginRequests") int rateLimitLoginRequests,
      @JsonKey(name: "rateLimitLoginWindow") int rateLimitLoginWindow,
      @JsonKey(name: "backupSchedule") String backupSchedule,
      @JsonKey(name: "backupsToKeep") int backupsToKeep,
      @JsonKey(name: "maxBackupSize") int maxBackupSize,
      @JsonKey(name: "loggerDailyLogsToKeep") int loggerDailyLogsToKeep,
      @JsonKey(name: "loggerScannerLogsToKeep") int loggerScannerLogsToKeep,
      @JsonKey(name: "homeBookshelfView") int homeBookshelfView,
      @JsonKey(name: "bookshelfView") int bookshelfView,
      @JsonKey(name: "sortingIgnorePrefix") bool sortingIgnorePrefix,
      @JsonKey(name: "sortingPrefixes") List<String> sortingPrefixes,
      @JsonKey(name: "chromecastEnabled") bool chromecastEnabled,
      @JsonKey(name: "dateFormat") String dateFormat,
      @JsonKey(name: "language") String language,
      @JsonKey(name: "logLevel") int logLevel,
      @JsonKey(name: "version") String version});
}

/// @nodoc
class __$$ServerSettingsImplCopyWithImpl<$Res>
    extends _$ServerSettingsCopyWithImpl<$Res, _$ServerSettingsImpl>
    implements _$$ServerSettingsImplCopyWith<$Res> {
  __$$ServerSettingsImplCopyWithImpl(
      _$ServerSettingsImpl _value, $Res Function(_$ServerSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scannerFindCovers = null,
    Object? scannerCoverProvider = null,
    Object? scannerParseSubtitle = null,
    Object? scannerPreferMatchedMetadata = null,
    Object? scannerDisableWatcher = null,
    Object? storeCoverWithItem = null,
    Object? storeMetadataWithItem = null,
    Object? metadataFileFormat = null,
    Object? rateLimitLoginRequests = null,
    Object? rateLimitLoginWindow = null,
    Object? backupSchedule = null,
    Object? backupsToKeep = null,
    Object? maxBackupSize = null,
    Object? loggerDailyLogsToKeep = null,
    Object? loggerScannerLogsToKeep = null,
    Object? homeBookshelfView = null,
    Object? bookshelfView = null,
    Object? sortingIgnorePrefix = null,
    Object? sortingPrefixes = null,
    Object? chromecastEnabled = null,
    Object? dateFormat = null,
    Object? language = null,
    Object? logLevel = null,
    Object? version = null,
  }) {
    return _then(_$ServerSettingsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scannerFindCovers: null == scannerFindCovers
          ? _value.scannerFindCovers
          : scannerFindCovers // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerCoverProvider: null == scannerCoverProvider
          ? _value.scannerCoverProvider
          : scannerCoverProvider // ignore: cast_nullable_to_non_nullable
              as String,
      scannerParseSubtitle: null == scannerParseSubtitle
          ? _value.scannerParseSubtitle
          : scannerParseSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerPreferMatchedMetadata: null == scannerPreferMatchedMetadata
          ? _value.scannerPreferMatchedMetadata
          : scannerPreferMatchedMetadata // ignore: cast_nullable_to_non_nullable
              as bool,
      scannerDisableWatcher: null == scannerDisableWatcher
          ? _value.scannerDisableWatcher
          : scannerDisableWatcher // ignore: cast_nullable_to_non_nullable
              as bool,
      storeCoverWithItem: null == storeCoverWithItem
          ? _value.storeCoverWithItem
          : storeCoverWithItem // ignore: cast_nullable_to_non_nullable
              as bool,
      storeMetadataWithItem: null == storeMetadataWithItem
          ? _value.storeMetadataWithItem
          : storeMetadataWithItem // ignore: cast_nullable_to_non_nullable
              as bool,
      metadataFileFormat: null == metadataFileFormat
          ? _value.metadataFileFormat
          : metadataFileFormat // ignore: cast_nullable_to_non_nullable
              as String,
      rateLimitLoginRequests: null == rateLimitLoginRequests
          ? _value.rateLimitLoginRequests
          : rateLimitLoginRequests // ignore: cast_nullable_to_non_nullable
              as int,
      rateLimitLoginWindow: null == rateLimitLoginWindow
          ? _value.rateLimitLoginWindow
          : rateLimitLoginWindow // ignore: cast_nullable_to_non_nullable
              as int,
      backupSchedule: null == backupSchedule
          ? _value.backupSchedule
          : backupSchedule // ignore: cast_nullable_to_non_nullable
              as String,
      backupsToKeep: null == backupsToKeep
          ? _value.backupsToKeep
          : backupsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      maxBackupSize: null == maxBackupSize
          ? _value.maxBackupSize
          : maxBackupSize // ignore: cast_nullable_to_non_nullable
              as int,
      loggerDailyLogsToKeep: null == loggerDailyLogsToKeep
          ? _value.loggerDailyLogsToKeep
          : loggerDailyLogsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      loggerScannerLogsToKeep: null == loggerScannerLogsToKeep
          ? _value.loggerScannerLogsToKeep
          : loggerScannerLogsToKeep // ignore: cast_nullable_to_non_nullable
              as int,
      homeBookshelfView: null == homeBookshelfView
          ? _value.homeBookshelfView
          : homeBookshelfView // ignore: cast_nullable_to_non_nullable
              as int,
      bookshelfView: null == bookshelfView
          ? _value.bookshelfView
          : bookshelfView // ignore: cast_nullable_to_non_nullable
              as int,
      sortingIgnorePrefix: null == sortingIgnorePrefix
          ? _value.sortingIgnorePrefix
          : sortingIgnorePrefix // ignore: cast_nullable_to_non_nullable
              as bool,
      sortingPrefixes: null == sortingPrefixes
          ? _value._sortingPrefixes
          : sortingPrefixes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chromecastEnabled: null == chromecastEnabled
          ? _value.chromecastEnabled
          : chromecastEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      dateFormat: null == dateFormat
          ? _value.dateFormat
          : dateFormat // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as int,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSettingsImpl implements _ServerSettings {
  const _$ServerSettingsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "scannerFindCovers") required this.scannerFindCovers,
      @JsonKey(name: "scannerCoverProvider") required this.scannerCoverProvider,
      @JsonKey(name: "scannerParseSubtitle") required this.scannerParseSubtitle,
      @JsonKey(name: "scannerPreferMatchedMetadata")
      required this.scannerPreferMatchedMetadata,
      @JsonKey(name: "scannerDisableWatcher")
      required this.scannerDisableWatcher,
      @JsonKey(name: "storeCoverWithItem") required this.storeCoverWithItem,
      @JsonKey(name: "storeMetadataWithItem")
      required this.storeMetadataWithItem,
      @JsonKey(name: "metadataFileFormat") required this.metadataFileFormat,
      @JsonKey(name: "rateLimitLoginRequests")
      required this.rateLimitLoginRequests,
      @JsonKey(name: "rateLimitLoginWindow") required this.rateLimitLoginWindow,
      @JsonKey(name: "backupSchedule") required this.backupSchedule,
      @JsonKey(name: "backupsToKeep") required this.backupsToKeep,
      @JsonKey(name: "maxBackupSize") required this.maxBackupSize,
      @JsonKey(name: "loggerDailyLogsToKeep")
      required this.loggerDailyLogsToKeep,
      @JsonKey(name: "loggerScannerLogsToKeep")
      required this.loggerScannerLogsToKeep,
      @JsonKey(name: "homeBookshelfView") required this.homeBookshelfView,
      @JsonKey(name: "bookshelfView") required this.bookshelfView,
      @JsonKey(name: "sortingIgnorePrefix") required this.sortingIgnorePrefix,
      @JsonKey(name: "sortingPrefixes")
      required final List<String> sortingPrefixes,
      @JsonKey(name: "chromecastEnabled") required this.chromecastEnabled,
      @JsonKey(name: "dateFormat") required this.dateFormat,
      @JsonKey(name: "language") required this.language,
      @JsonKey(name: "logLevel") required this.logLevel,
      @JsonKey(name: "version") required this.version})
      : _sortingPrefixes = sortingPrefixes;

  factory _$ServerSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerSettingsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "scannerFindCovers")
  final bool scannerFindCovers;
  @override
  @JsonKey(name: "scannerCoverProvider")
  final String scannerCoverProvider;
  @override
  @JsonKey(name: "scannerParseSubtitle")
  final bool scannerParseSubtitle;
  @override
  @JsonKey(name: "scannerPreferMatchedMetadata")
  final bool scannerPreferMatchedMetadata;
  @override
  @JsonKey(name: "scannerDisableWatcher")
  final bool scannerDisableWatcher;
  @override
  @JsonKey(name: "storeCoverWithItem")
  final bool storeCoverWithItem;
  @override
  @JsonKey(name: "storeMetadataWithItem")
  final bool storeMetadataWithItem;
  @override
  @JsonKey(name: "metadataFileFormat")
  final String metadataFileFormat;
  @override
  @JsonKey(name: "rateLimitLoginRequests")
  final int rateLimitLoginRequests;
  @override
  @JsonKey(name: "rateLimitLoginWindow")
  final int rateLimitLoginWindow;
  @override
  @JsonKey(name: "backupSchedule")
  final String backupSchedule;
  @override
  @JsonKey(name: "backupsToKeep")
  final int backupsToKeep;
  @override
  @JsonKey(name: "maxBackupSize")
  final int maxBackupSize;
  @override
  @JsonKey(name: "loggerDailyLogsToKeep")
  final int loggerDailyLogsToKeep;
  @override
  @JsonKey(name: "loggerScannerLogsToKeep")
  final int loggerScannerLogsToKeep;
  @override
  @JsonKey(name: "homeBookshelfView")
  final int homeBookshelfView;
  @override
  @JsonKey(name: "bookshelfView")
  final int bookshelfView;
  @override
  @JsonKey(name: "sortingIgnorePrefix")
  final bool sortingIgnorePrefix;
  final List<String> _sortingPrefixes;
  @override
  @JsonKey(name: "sortingPrefixes")
  List<String> get sortingPrefixes {
    if (_sortingPrefixes is EqualUnmodifiableListView) return _sortingPrefixes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortingPrefixes);
  }

  @override
  @JsonKey(name: "chromecastEnabled")
  final bool chromecastEnabled;
  @override
  @JsonKey(name: "dateFormat")
  final String dateFormat;
  @override
  @JsonKey(name: "language")
  final String language;
  @override
  @JsonKey(name: "logLevel")
  final int logLevel;
  @override
  @JsonKey(name: "version")
  final String version;

  @override
  String toString() {
    return 'ServerSettings(id: $id, scannerFindCovers: $scannerFindCovers, scannerCoverProvider: $scannerCoverProvider, scannerParseSubtitle: $scannerParseSubtitle, scannerPreferMatchedMetadata: $scannerPreferMatchedMetadata, scannerDisableWatcher: $scannerDisableWatcher, storeCoverWithItem: $storeCoverWithItem, storeMetadataWithItem: $storeMetadataWithItem, metadataFileFormat: $metadataFileFormat, rateLimitLoginRequests: $rateLimitLoginRequests, rateLimitLoginWindow: $rateLimitLoginWindow, backupSchedule: $backupSchedule, backupsToKeep: $backupsToKeep, maxBackupSize: $maxBackupSize, loggerDailyLogsToKeep: $loggerDailyLogsToKeep, loggerScannerLogsToKeep: $loggerScannerLogsToKeep, homeBookshelfView: $homeBookshelfView, bookshelfView: $bookshelfView, sortingIgnorePrefix: $sortingIgnorePrefix, sortingPrefixes: $sortingPrefixes, chromecastEnabled: $chromecastEnabled, dateFormat: $dateFormat, language: $language, logLevel: $logLevel, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSettingsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scannerFindCovers, scannerFindCovers) ||
                other.scannerFindCovers == scannerFindCovers) &&
            (identical(other.scannerCoverProvider, scannerCoverProvider) ||
                other.scannerCoverProvider == scannerCoverProvider) &&
            (identical(other.scannerParseSubtitle, scannerParseSubtitle) ||
                other.scannerParseSubtitle == scannerParseSubtitle) &&
            (identical(other.scannerPreferMatchedMetadata,
                    scannerPreferMatchedMetadata) ||
                other.scannerPreferMatchedMetadata ==
                    scannerPreferMatchedMetadata) &&
            (identical(other.scannerDisableWatcher, scannerDisableWatcher) ||
                other.scannerDisableWatcher == scannerDisableWatcher) &&
            (identical(other.storeCoverWithItem, storeCoverWithItem) ||
                other.storeCoverWithItem == storeCoverWithItem) &&
            (identical(other.storeMetadataWithItem, storeMetadataWithItem) ||
                other.storeMetadataWithItem == storeMetadataWithItem) &&
            (identical(other.metadataFileFormat, metadataFileFormat) ||
                other.metadataFileFormat == metadataFileFormat) &&
            (identical(other.rateLimitLoginRequests, rateLimitLoginRequests) ||
                other.rateLimitLoginRequests == rateLimitLoginRequests) &&
            (identical(other.rateLimitLoginWindow, rateLimitLoginWindow) ||
                other.rateLimitLoginWindow == rateLimitLoginWindow) &&
            (identical(other.backupSchedule, backupSchedule) ||
                other.backupSchedule == backupSchedule) &&
            (identical(other.backupsToKeep, backupsToKeep) ||
                other.backupsToKeep == backupsToKeep) &&
            (identical(other.maxBackupSize, maxBackupSize) ||
                other.maxBackupSize == maxBackupSize) &&
            (identical(other.loggerDailyLogsToKeep, loggerDailyLogsToKeep) ||
                other.loggerDailyLogsToKeep == loggerDailyLogsToKeep) &&
            (identical(
                    other.loggerScannerLogsToKeep, loggerScannerLogsToKeep) ||
                other.loggerScannerLogsToKeep == loggerScannerLogsToKeep) &&
            (identical(other.homeBookshelfView, homeBookshelfView) ||
                other.homeBookshelfView == homeBookshelfView) &&
            (identical(other.bookshelfView, bookshelfView) ||
                other.bookshelfView == bookshelfView) &&
            (identical(other.sortingIgnorePrefix, sortingIgnorePrefix) ||
                other.sortingIgnorePrefix == sortingIgnorePrefix) &&
            const DeepCollectionEquality()
                .equals(other._sortingPrefixes, _sortingPrefixes) &&
            (identical(other.chromecastEnabled, chromecastEnabled) ||
                other.chromecastEnabled == chromecastEnabled) &&
            (identical(other.dateFormat, dateFormat) ||
                other.dateFormat == dateFormat) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.logLevel, logLevel) ||
                other.logLevel == logLevel) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        scannerFindCovers,
        scannerCoverProvider,
        scannerParseSubtitle,
        scannerPreferMatchedMetadata,
        scannerDisableWatcher,
        storeCoverWithItem,
        storeMetadataWithItem,
        metadataFileFormat,
        rateLimitLoginRequests,
        rateLimitLoginWindow,
        backupSchedule,
        backupsToKeep,
        maxBackupSize,
        loggerDailyLogsToKeep,
        loggerScannerLogsToKeep,
        homeBookshelfView,
        bookshelfView,
        sortingIgnorePrefix,
        const DeepCollectionEquality().hash(_sortingPrefixes),
        chromecastEnabled,
        dateFormat,
        language,
        logLevel,
        version
      ]);

  /// Create a copy of ServerSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSettingsImplCopyWith<_$ServerSettingsImpl> get copyWith =>
      __$$ServerSettingsImplCopyWithImpl<_$ServerSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSettingsImplToJson(
      this,
    );
  }
}

abstract class _ServerSettings implements ServerSettings {
  const factory _ServerSettings(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "scannerFindCovers") required final bool scannerFindCovers,
      @JsonKey(name: "scannerCoverProvider")
      required final String scannerCoverProvider,
      @JsonKey(name: "scannerParseSubtitle")
      required final bool scannerParseSubtitle,
      @JsonKey(name: "scannerPreferMatchedMetadata")
      required final bool scannerPreferMatchedMetadata,
      @JsonKey(name: "scannerDisableWatcher")
      required final bool scannerDisableWatcher,
      @JsonKey(name: "storeCoverWithItem")
      required final bool storeCoverWithItem,
      @JsonKey(name: "storeMetadataWithItem")
      required final bool storeMetadataWithItem,
      @JsonKey(name: "metadataFileFormat")
      required final String metadataFileFormat,
      @JsonKey(name: "rateLimitLoginRequests")
      required final int rateLimitLoginRequests,
      @JsonKey(name: "rateLimitLoginWindow")
      required final int rateLimitLoginWindow,
      @JsonKey(name: "backupSchedule") required final String backupSchedule,
      @JsonKey(name: "backupsToKeep") required final int backupsToKeep,
      @JsonKey(name: "maxBackupSize") required final int maxBackupSize,
      @JsonKey(name: "loggerDailyLogsToKeep")
      required final int loggerDailyLogsToKeep,
      @JsonKey(name: "loggerScannerLogsToKeep")
      required final int loggerScannerLogsToKeep,
      @JsonKey(name: "homeBookshelfView") required final int homeBookshelfView,
      @JsonKey(name: "bookshelfView") required final int bookshelfView,
      @JsonKey(name: "sortingIgnorePrefix")
      required final bool sortingIgnorePrefix,
      @JsonKey(name: "sortingPrefixes")
      required final List<String> sortingPrefixes,
      @JsonKey(name: "chromecastEnabled") required final bool chromecastEnabled,
      @JsonKey(name: "dateFormat") required final String dateFormat,
      @JsonKey(name: "language") required final String language,
      @JsonKey(name: "logLevel") required final int logLevel,
      @JsonKey(name: "version")
      required final String version}) = _$ServerSettingsImpl;

  factory _ServerSettings.fromJson(Map<String, dynamic> json) =
      _$ServerSettingsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "scannerFindCovers")
  bool get scannerFindCovers;
  @override
  @JsonKey(name: "scannerCoverProvider")
  String get scannerCoverProvider;
  @override
  @JsonKey(name: "scannerParseSubtitle")
  bool get scannerParseSubtitle;
  @override
  @JsonKey(name: "scannerPreferMatchedMetadata")
  bool get scannerPreferMatchedMetadata;
  @override
  @JsonKey(name: "scannerDisableWatcher")
  bool get scannerDisableWatcher;
  @override
  @JsonKey(name: "storeCoverWithItem")
  bool get storeCoverWithItem;
  @override
  @JsonKey(name: "storeMetadataWithItem")
  bool get storeMetadataWithItem;
  @override
  @JsonKey(name: "metadataFileFormat")
  String get metadataFileFormat;
  @override
  @JsonKey(name: "rateLimitLoginRequests")
  int get rateLimitLoginRequests;
  @override
  @JsonKey(name: "rateLimitLoginWindow")
  int get rateLimitLoginWindow;
  @override
  @JsonKey(name: "backupSchedule")
  String get backupSchedule;
  @override
  @JsonKey(name: "backupsToKeep")
  int get backupsToKeep;
  @override
  @JsonKey(name: "maxBackupSize")
  int get maxBackupSize;
  @override
  @JsonKey(name: "loggerDailyLogsToKeep")
  int get loggerDailyLogsToKeep;
  @override
  @JsonKey(name: "loggerScannerLogsToKeep")
  int get loggerScannerLogsToKeep;
  @override
  @JsonKey(name: "homeBookshelfView")
  int get homeBookshelfView;
  @override
  @JsonKey(name: "bookshelfView")
  int get bookshelfView;
  @override
  @JsonKey(name: "sortingIgnorePrefix")
  bool get sortingIgnorePrefix;
  @override
  @JsonKey(name: "sortingPrefixes")
  List<String> get sortingPrefixes;
  @override
  @JsonKey(name: "chromecastEnabled")
  bool get chromecastEnabled;
  @override
  @JsonKey(name: "dateFormat")
  String get dateFormat;
  @override
  @JsonKey(name: "language")
  String get language;
  @override
  @JsonKey(name: "logLevel")
  int get logLevel;
  @override
  @JsonKey(name: "version")
  String get version;

  /// Create a copy of ServerSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerSettingsImplCopyWith<_$ServerSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}