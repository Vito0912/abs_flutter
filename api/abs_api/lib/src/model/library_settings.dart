//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_settings.g.dart';

/// The settings for the library.
///
/// Properties:
/// * [coverAspectRatio] - Whether the library should use square book covers. Must be 0 (for false) or 1 (for true).
/// * [disableWatcher] - Whether to disable the folder watcher for the library.
/// * [skipMatchingMediaWithAsin] - Whether to skip matching books that already have an ASIN.
/// * [skipMatchingMediaWithIsbn] - Whether to skip matching books that already have an ISBN.
/// * [autoScanCronExpression] - The cron expression for when to automatically scan the library folders. If null, automatic scanning will be disabled.
/// * [audiobooksOnly] - Whether the library should ignore ebook files and only allow ebook files to be supplementary.
/// * [hideSingleBookSeries] - Whether to hide series with only one book.
/// * [onlyShowLaterBooksInContinueSeries] - Whether to only show books in a series after the highest series sequence.
/// * [metadataPrecedence] - The precedence of metadata sources. See Metadata Providers for a list of possible providers.
/// * [podcastSearchRegion] - The region to use when searching for podcasts.
@BuiltValue()
abstract class LibrarySettings
    implements Built<LibrarySettings, LibrarySettingsBuilder> {
  /// Whether the library should use square book covers. Must be 0 (for false) or 1 (for true).
  @BuiltValueField(wireName: r'coverAspectRatio')
  int? get coverAspectRatio;

  /// Whether to disable the folder watcher for the library.
  @BuiltValueField(wireName: r'disableWatcher')
  bool? get disableWatcher;

  /// Whether to skip matching books that already have an ASIN.
  @BuiltValueField(wireName: r'skipMatchingMediaWithAsin')
  bool? get skipMatchingMediaWithAsin;

  /// Whether to skip matching books that already have an ISBN.
  @BuiltValueField(wireName: r'skipMatchingMediaWithIsbn')
  bool? get skipMatchingMediaWithIsbn;

  /// The cron expression for when to automatically scan the library folders. If null, automatic scanning will be disabled.
  @BuiltValueField(wireName: r'autoScanCronExpression')
  String? get autoScanCronExpression;

  /// Whether the library should ignore ebook files and only allow ebook files to be supplementary.
  @BuiltValueField(wireName: r'audiobooksOnly')
  bool? get audiobooksOnly;

  /// Whether to hide series with only one book.
  @BuiltValueField(wireName: r'hideSingleBookSeries')
  bool? get hideSingleBookSeries;

  /// Whether to only show books in a series after the highest series sequence.
  @BuiltValueField(wireName: r'onlyShowLaterBooksInContinueSeries')
  bool? get onlyShowLaterBooksInContinueSeries;

  /// The precedence of metadata sources. See Metadata Providers for a list of possible providers.
  @BuiltValueField(wireName: r'metadataPrecedence')
  BuiltList<String>? get metadataPrecedence;

  /// The region to use when searching for podcasts.
  @BuiltValueField(wireName: r'podcastSearchRegion')
  String? get podcastSearchRegion;

  LibrarySettings._();

  factory LibrarySettings([void updates(LibrarySettingsBuilder b)]) =
      _$LibrarySettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibrarySettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibrarySettings> get serializer =>
      _$LibrarySettingsSerializer();
}

class _$LibrarySettingsSerializer
    implements PrimitiveSerializer<LibrarySettings> {
  @override
  final Iterable<Type> types = const [LibrarySettings, _$LibrarySettings];

  @override
  final String wireName = r'LibrarySettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibrarySettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.coverAspectRatio != null) {
      yield r'coverAspectRatio';
      yield serializers.serialize(
        object.coverAspectRatio,
        specifiedType: const FullType(int),
      );
    }
    if (object.disableWatcher != null) {
      yield r'disableWatcher';
      yield serializers.serialize(
        object.disableWatcher,
        specifiedType: const FullType(bool),
      );
    }
    if (object.skipMatchingMediaWithAsin != null) {
      yield r'skipMatchingMediaWithAsin';
      yield serializers.serialize(
        object.skipMatchingMediaWithAsin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.skipMatchingMediaWithIsbn != null) {
      yield r'skipMatchingMediaWithIsbn';
      yield serializers.serialize(
        object.skipMatchingMediaWithIsbn,
        specifiedType: const FullType(bool),
      );
    }
    if (object.autoScanCronExpression != null) {
      yield r'autoScanCronExpression';
      yield serializers.serialize(
        object.autoScanCronExpression,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.audiobooksOnly != null) {
      yield r'audiobooksOnly';
      yield serializers.serialize(
        object.audiobooksOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hideSingleBookSeries != null) {
      yield r'hideSingleBookSeries';
      yield serializers.serialize(
        object.hideSingleBookSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.onlyShowLaterBooksInContinueSeries != null) {
      yield r'onlyShowLaterBooksInContinueSeries';
      yield serializers.serialize(
        object.onlyShowLaterBooksInContinueSeries,
        specifiedType: const FullType(bool),
      );
    }
    if (object.metadataPrecedence != null) {
      yield r'metadataPrecedence';
      yield serializers.serialize(
        object.metadataPrecedence,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.podcastSearchRegion != null) {
      yield r'podcastSearchRegion';
      yield serializers.serialize(
        object.podcastSearchRegion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibrarySettings object, {
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
    required LibrarySettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'coverAspectRatio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.coverAspectRatio = valueDes;
          break;
        case r'disableWatcher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disableWatcher = valueDes;
          break;
        case r'skipMatchingMediaWithAsin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.skipMatchingMediaWithAsin = valueDes;
          break;
        case r'skipMatchingMediaWithIsbn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.skipMatchingMediaWithIsbn = valueDes;
          break;
        case r'autoScanCronExpression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.autoScanCronExpression = valueDes;
          break;
        case r'audiobooksOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.audiobooksOnly = valueDes;
          break;
        case r'hideSingleBookSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hideSingleBookSeries = valueDes;
          break;
        case r'onlyShowLaterBooksInContinueSeries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onlyShowLaterBooksInContinueSeries = valueDes;
          break;
        case r'metadataPrecedence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.metadataPrecedence.replace(valueDes);
          break;
        case r'podcastSearchRegion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.podcastSearchRegion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibrarySettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibrarySettingsBuilder();
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
