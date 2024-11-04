// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerSettingsImpl _$$ServerSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ServerSettingsImpl(
      id: json['id'] as String,
      scannerFindCovers: json['scannerFindCovers'] as bool?,
      scannerCoverProvider: json['scannerCoverProvider'] as String?,
      scannerParseSubtitle: json['scannerParseSubtitle'] as bool?,
      scannerPreferMatchedMetadata:
          json['scannerPreferMatchedMetadata'] as bool?,
      scannerDisableWatcher: json['scannerDisableWatcher'] as bool?,
      storeCoverWithItem: json['storeCoverWithItem'] as bool?,
      storeMetadataWithItem: json['storeMetadataWithItem'] as bool?,
      metadataFileFormat: json['metadataFileFormat'] as String?,
      rateLimitLoginRequests: (json['rateLimitLoginRequests'] as num?)?.toInt(),
      rateLimitLoginWindow: (json['rateLimitLoginWindow'] as num?)?.toInt(),
      backupSchedule: json['backupSchedule'],
      backupsToKeep: (json['backupsToKeep'] as num?)?.toInt(),
      maxBackupSize: (json['maxBackupSize'] as num?)?.toInt(),
      loggerDailyLogsToKeep: (json['loggerDailyLogsToKeep'] as num?)?.toInt(),
      loggerScannerLogsToKeep:
          (json['loggerScannerLogsToKeep'] as num?)?.toInt(),
      homeBookshelfView: (json['homeBookshelfView'] as num?)?.toInt(),
      bookshelfView: (json['bookshelfView'] as num?)?.toInt(),
      sortingIgnorePrefix: json['sortingIgnorePrefix'] as bool?,
      sortingPrefixes: (json['sortingPrefixes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      chromecastEnabled: json['chromecastEnabled'] as bool?,
      dateFormat: json['dateFormat'] as String?,
      language: json['language'] as String?,
      logLevel: (json['logLevel'] as num?)?.toInt(),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$ServerSettingsImplToJson(
        _$ServerSettingsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scannerFindCovers': instance.scannerFindCovers,
      'scannerCoverProvider': instance.scannerCoverProvider,
      'scannerParseSubtitle': instance.scannerParseSubtitle,
      'scannerPreferMatchedMetadata': instance.scannerPreferMatchedMetadata,
      'scannerDisableWatcher': instance.scannerDisableWatcher,
      'storeCoverWithItem': instance.storeCoverWithItem,
      'storeMetadataWithItem': instance.storeMetadataWithItem,
      'metadataFileFormat': instance.metadataFileFormat,
      'rateLimitLoginRequests': instance.rateLimitLoginRequests,
      'rateLimitLoginWindow': instance.rateLimitLoginWindow,
      'backupSchedule': instance.backupSchedule,
      'backupsToKeep': instance.backupsToKeep,
      'maxBackupSize': instance.maxBackupSize,
      'loggerDailyLogsToKeep': instance.loggerDailyLogsToKeep,
      'loggerScannerLogsToKeep': instance.loggerScannerLogsToKeep,
      'homeBookshelfView': instance.homeBookshelfView,
      'bookshelfView': instance.bookshelfView,
      'sortingIgnorePrefix': instance.sortingIgnorePrefix,
      'sortingPrefixes': instance.sortingPrefixes,
      'chromecastEnabled': instance.chromecastEnabled,
      'dateFormat': instance.dateFormat,
      'language': instance.language,
      'logLevel': instance.logLevel,
      'version': instance.version,
    };
