import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_settings.freezed.dart';
part 'server_settings.g.dart';

@freezed
class ServerSettings with _$ServerSettings {
  const factory ServerSettings({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "scannerFindCovers") required bool scannerFindCovers,
    @JsonKey(name: "scannerCoverProvider") required String scannerCoverProvider,
    @JsonKey(name: "scannerParseSubtitle") required bool scannerParseSubtitle,
    @JsonKey(name: "scannerPreferMatchedMetadata")
    required bool scannerPreferMatchedMetadata,
    @JsonKey(name: "scannerDisableWatcher") required bool scannerDisableWatcher,
    @JsonKey(name: "storeCoverWithItem") required bool storeCoverWithItem,
    @JsonKey(name: "storeMetadataWithItem") required bool storeMetadataWithItem,
    @JsonKey(name: "metadataFileFormat") required String metadataFileFormat,
    @JsonKey(name: "rateLimitLoginRequests")
    required int rateLimitLoginRequests,
    @JsonKey(name: "rateLimitLoginWindow") required int rateLimitLoginWindow,
    @JsonKey(name: "backupSchedule") required String backupSchedule,
    @JsonKey(name: "backupsToKeep") required int backupsToKeep,
    @JsonKey(name: "maxBackupSize") required int maxBackupSize,
    @JsonKey(name: "loggerDailyLogsToKeep") required int loggerDailyLogsToKeep,
    @JsonKey(name: "loggerScannerLogsToKeep")
    required int loggerScannerLogsToKeep,
    @JsonKey(name: "homeBookshelfView") required int homeBookshelfView,
    @JsonKey(name: "bookshelfView") required int bookshelfView,
    @JsonKey(name: "sortingIgnorePrefix") required bool sortingIgnorePrefix,
    @JsonKey(name: "sortingPrefixes") required List<String> sortingPrefixes,
    @JsonKey(name: "chromecastEnabled") required bool chromecastEnabled,
    @JsonKey(name: "dateFormat") required String dateFormat,
    @JsonKey(name: "language") required String language,
    @JsonKey(name: "logLevel") required int logLevel,
    @JsonKey(name: "version") required String version,
  }) = _ServerSettings;

  factory ServerSettings.fromJson(Map<String, dynamic> json) =>
      _$ServerSettingsFromJson(json);
}
