//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_item_expanded.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'library_item_search_result.g.dart';

/// LibraryItemSearchResult
///
/// Properties:
/// * [libraryItem]
/// * [matchKey]
/// * [matchText]
@BuiltValue()
abstract class LibraryItemSearchResult
    implements Built<LibraryItemSearchResult, LibraryItemSearchResultBuilder> {
  @BuiltValueField(wireName: r'libraryItem')
  LibraryItemExpanded? get libraryItem;

  @BuiltValueField(wireName: r'matchKey')
  String? get matchKey;

  @BuiltValueField(wireName: r'matchText')
  String? get matchText;

  LibraryItemSearchResult._();

  factory LibraryItemSearchResult(
          [void updates(LibraryItemSearchResultBuilder b)]) =
      _$LibraryItemSearchResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LibraryItemSearchResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LibraryItemSearchResult> get serializer =>
      _$LibraryItemSearchResultSerializer();
}

class _$LibraryItemSearchResultSerializer
    implements PrimitiveSerializer<LibraryItemSearchResult> {
  @override
  final Iterable<Type> types = const [
    LibraryItemSearchResult,
    _$LibraryItemSearchResult
  ];

  @override
  final String wireName = r'LibraryItemSearchResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LibraryItemSearchResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryItem != null) {
      yield r'libraryItem';
      yield serializers.serialize(
        object.libraryItem,
        specifiedType: const FullType(LibraryItemExpanded),
      );
    }
    if (object.matchKey != null) {
      yield r'matchKey';
      yield serializers.serialize(
        object.matchKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.matchText != null) {
      yield r'matchText';
      yield serializers.serialize(
        object.matchText,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LibraryItemSearchResult object, {
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
    required LibraryItemSearchResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibraryItemExpanded),
          ) as LibraryItemExpanded;
          result.libraryItem.replace(valueDes);
          break;
        case r'matchKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.matchKey = valueDes;
          break;
        case r'matchText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.matchText = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LibraryItemSearchResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LibraryItemSearchResultBuilder();
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
