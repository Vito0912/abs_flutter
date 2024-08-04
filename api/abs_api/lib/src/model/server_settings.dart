//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'server_settings.g.dart';

/// ServerSettings
///
/// Properties:
/// * [id]
/// * [scannerFindCovers]
/// * [scannerCoverProvider]
/// * [scannerParseSubtitle]
/// * [scannerPreferMatchedMetadata]
/// * [scannerDisableWatcher]
/// * [storeCoverWithItem]
/// * [storeMetadataWithItem]
/// * [metadataFileFormat]
/// * [rateLimitLoginRequests]
/// * [rateLimitLoginWindow]
/// * [backupSchedule]
/// * [backupsToKeep]
/// * [maxBackupSize]
/// * [loggerDailyLogsToKeep]
/// * [loggerScannerLogsToKeep]
/// * [homeBookshelfView]
/// * [bookshelfView]
/// * [sortingIgnorePrefix]
/// * [sortingPrefixes]
/// * [chromecastEnabled]
/// * [dateFormat]
/// * [language]
/// * [logLevel]
/// * [version]
@BuiltValue()
abstract class ServerSettings
    implements Built<ServerSettings, ServerSettingsBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'scannerFindCovers')
  bool? get scannerFindCovers;

  @BuiltValueField(wireName: r'scannerCoverProvider')
  String? get scannerCoverProvider;

  @BuiltValueField(wireName: r'scannerParseSubtitle')
  bool? get scannerParseSubtitle;

  @BuiltValueField(wireName: r'scannerPreferMatchedMetadata')
  bool? get scannerPreferMatchedMetadata;

  @BuiltValueField(wireName: r'scannerDisableWatcher')
  bool? get scannerDisableWatcher;

  @BuiltValueField(wireName: r'storeCoverWithItem')
  bool? get storeCoverWithItem;

  @BuiltValueField(wireName: r'storeMetadataWithItem')
  bool? get storeMetadataWithItem;

  @BuiltValueField(wireName: r'metadataFileFormat')
  String? get metadataFileFormat;

  @BuiltValueField(wireName: r'rateLimitLoginRequests')
  int? get rateLimitLoginRequests;

  @BuiltValueField(wireName: r'rateLimitLoginWindow')
  int? get rateLimitLoginWindow;

  @BuiltValueField(wireName: r'backupSchedule')
  String? get backupSchedule;

  @BuiltValueField(wireName: r'backupsToKeep')
  int? get backupsToKeep;

  @BuiltValueField(wireName: r'maxBackupSize')
  int? get maxBackupSize;

  @BuiltValueField(wireName: r'loggerDailyLogsToKeep')
  int? get loggerDailyLogsToKeep;

  @BuiltValueField(wireName: r'loggerScannerLogsToKeep')
  int? get loggerScannerLogsToKeep;

  @BuiltValueField(wireName: r'homeBookshelfView')
  int? get homeBookshelfView;

  @BuiltValueField(wireName: r'bookshelfView')
  int? get bookshelfView;

  @BuiltValueField(wireName: r'sortingIgnorePrefix')
  bool? get sortingIgnorePrefix;

  @BuiltValueField(wireName: r'sortingPrefixes')
  BuiltList<String>? get sortingPrefixes;

  @BuiltValueField(wireName: r'chromecastEnabled')
  bool? get chromecastEnabled;

  @BuiltValueField(wireName: r'dateFormat')
  String? get dateFormat;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'logLevel')
  int? get logLevel;

  @BuiltValueField(wireName: r'version')
  String? get version;

  ServerSettings._();

  factory ServerSettings([void updates(ServerSettingsBuilder b)]) =
      _$ServerSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServerSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServerSettings> get serializer =>
      _$ServerSettingsSerializer();
}

class _$ServerSettingsSerializer
    implements PrimitiveSerializer<ServerSettings> {
  @override
  final Iterable<Type> types = const [ServerSettings, _$ServerSettings];

  @override
  final String wireName = r'ServerSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServerSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.scannerFindCovers != null) {
      yield r'scannerFindCovers';
      yield serializers.serialize(
        object.scannerFindCovers,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scannerCoverProvider != null) {
      yield r'scannerCoverProvider';
      yield serializers.serialize(
        object.scannerCoverProvider,
        specifiedType: const FullType(String),
      );
    }
    if (object.scannerParseSubtitle != null) {
      yield r'scannerParseSubtitle';
      yield serializers.serialize(
        object.scannerParseSubtitle,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scannerPreferMatchedMetadata != null) {
      yield r'scannerPreferMatchedMetadata';
      yield serializers.serialize(
        object.scannerPreferMatchedMetadata,
        specifiedType: const FullType(bool),
      );
    }
    if (object.scannerDisableWatcher != null) {
      yield r'scannerDisableWatcher';
      yield serializers.serialize(
        object.scannerDisableWatcher,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storeCoverWithItem != null) {
      yield r'storeCoverWithItem';
      yield serializers.serialize(
        object.storeCoverWithItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storeMetadataWithItem != null) {
      yield r'storeMetadataWithItem';
      yield serializers.serialize(
        object.storeMetadataWithItem,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadataFileFormat != null) {
      yield r'metadataFileFormat';
      yield serializers.serialize(
        object.metadataFileFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.rateLimitLoginRequests != null) {
      yield r'rateLimitLoginRequests';
      yield serializers.serialize(
        object.rateLimitLoginRequests,
        specifiedType: const FullType(int),
      );
    }
    if (object.rateLimitLoginWindow != null) {
      yield r'rateLimitLoginWindow';
      yield serializers.serialize(
        object.rateLimitLoginWindow,
        specifiedType: const FullType(int),
      );
    }
    if (object.backupSchedule != null) {
      yield r'backupSchedule';
      yield serializers.serialize(
        object.backupSchedule,
        specifiedType: const FullType(String),
      );
    }
    if (object.backupsToKeep != null) {
      yield r'backupsToKeep';
      yield serializers.serialize(
        object.backupsToKeep,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxBackupSize != null) {
      yield r'maxBackupSize';
      yield serializers.serialize(
        object.maxBackupSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.loggerDailyLogsToKeep != null) {
      yield r'loggerDailyLogsToKeep';
      yield serializers.serialize(
        object.loggerDailyLogsToKeep,
        specifiedType: const FullType(int),
      );
    }
    if (object.loggerScannerLogsToKeep != null) {
      yield r'loggerScannerLogsToKeep';
      yield serializers.serialize(
        object.loggerScannerLogsToKeep,
        specifiedType: const FullType(int),
      );
    }
    if (object.homeBookshelfView != null) {
      yield r'homeBookshelfView';
      yield serializers.serialize(
        object.homeBookshelfView,
        specifiedType: const FullType(int),
      );
    }
    if (object.bookshelfView != null) {
      yield r'bookshelfView';
      yield serializers.serialize(
        object.bookshelfView,
        specifiedType: const FullType(int),
      );
    }
    if (object.sortingIgnorePrefix != null) {
      yield r'sortingIgnorePrefix';
      yield serializers.serialize(
        object.sortingIgnorePrefix,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sortingPrefixes != null) {
      yield r'sortingPrefixes';
      yield serializers.serialize(
        object.sortingPrefixes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.chromecastEnabled != null) {
      yield r'chromecastEnabled';
      yield serializers.serialize(
        object.chromecastEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dateFormat != null) {
      yield r'dateFormat';
      yield serializers.serialize(
        object.dateFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.logLevel != null) {
      yield r'logLevel';
      yield serializers.serialize(
        object.logLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServerSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ServerSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'scannerFindCovers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.scannerFindCovers = valueDes;
          break;
        case r'scannerCoverProvider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scannerCoverProvider = valueDes;
          break;
        case r'scannerParseSubtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.scannerParseSubtitle = valueDes;
          break;
        case r'scannerPreferMatchedMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.scannerPreferMatchedMetadata = valueDes;
          break;
        case r'scannerDisableWatcher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.scannerDisableWatcher = valueDes;
          break;
        case r'storeCoverWithItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeCoverWithItem = valueDes;
          break;
        case r'storeMetadataWithItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storeMetadataWithItem = valueDes;
          break;
        case r'metadataFileFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.metadataFileFormat = valueDes;
          break;
        case r'rateLimitLoginRequests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rateLimitLoginRequests = valueDes;
          break;
        case r'rateLimitLoginWindow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rateLimitLoginWindow = valueDes;
          break;
        case r'backupSchedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.backupSchedule = valueDes;
          break;
        case r'backupsToKeep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.backupsToKeep = valueDes;
          break;
        case r'maxBackupSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxBackupSize = valueDes;
          break;
        case r'loggerDailyLogsToKeep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loggerDailyLogsToKeep = valueDes;
          break;
        case r'loggerScannerLogsToKeep':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loggerScannerLogsToKeep = valueDes;
          break;
        case r'homeBookshelfView':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.homeBookshelfView = valueDes;
          break;
        case r'bookshelfView':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.bookshelfView = valueDes;
          break;
        case r'sortingIgnorePrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sortingIgnorePrefix = valueDes;
          break;
        case r'sortingPrefixes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.sortingPrefixes.replace(valueDes);
          break;
        case r'chromecastEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.chromecastEnabled = valueDes;
          break;
        case r'dateFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateFormat = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'logLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logLevel = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServerSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerSettingsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
