import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_settings.freezed.dart';
part 'server_settings.g.dart';

@freezed
class ServerSettings with _$ServerSettings {
  const factory ServerSettings({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "scannerFindCovers") bool? scannerFindCovers,
    @JsonKey(name: "scannerCoverProvider") String? scannerCoverProvider,
    @JsonKey(name: "scannerParseSubtitle") bool? scannerParseSubtitle,
    @JsonKey(name: "scannerPreferMatchedMetadata")
    bool? scannerPreferMatchedMetadata,
    @JsonKey(name: "scannerDisableWatcher") bool? scannerDisableWatcher,
    @JsonKey(name: "storeCoverWithItem")  bool? storeCoverWithItem,
    @JsonKey(name: "storeMetadataWithItem") bool? storeMetadataWithItem,
    @JsonKey(name: "metadataFileFormat") String? metadataFileFormat,
    @JsonKey(name: "rateLimitLoginRequests")
    int? rateLimitLoginRequests,
    @JsonKey(name: "rateLimitLoginWindow") int? rateLimitLoginWindow,
    @JsonKey(name: "backupSchedule") String? backupSchedule,
    @JsonKey(name: "backupsToKeep") int? backupsToKeep,
    @JsonKey(name: "maxBackupSize") int? maxBackupSize,
    @JsonKey(name: "loggerDailyLogsToKeep") int? loggerDailyLogsToKeep,
    @JsonKey(name: "loggerScannerLogsToKeep")
    int? loggerScannerLogsToKeep,
    @JsonKey(name: "homeBookshelfView") int? homeBookshelfView,
    @JsonKey(name: "bookshelfView") int? bookshelfView,
    @JsonKey(name: "sortingIgnorePrefix") bool? sortingIgnorePrefix,
    @JsonKey(name: "sortingPrefixes") List<String>? sortingPrefixes,
    @JsonKey(name: "chromecastEnabled") bool? chromecastEnabled,
    @JsonKey(name: "dateFormat") String? dateFormat,
    @JsonKey(name: "language") String? language,
    @JsonKey(name: "logLevel") int? logLevel,
    @JsonKey(name: "version") String? version,
  }) = _ServerSettings;

  factory ServerSettings.fromJson(Map<String, dynamic> json) =>
      _$ServerSettingsFromJson(json);
}
