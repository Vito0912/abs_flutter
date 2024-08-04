//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bookmark.g.dart';

/// Bookmark
///
/// Properties:
/// * [libraryItemId] - The ID of library items after 2.3.0.
/// * [title] - The title of the bookmark.
/// * [time] - The time (in ms since POSIX epoch) when the bookmark was created.
/// * [createdAt] - The time (in ms since POSIX epoch) when was created.
@BuiltValue()
abstract class Bookmark implements Built<Bookmark, BookmarkBuilder> {
  /// The ID of library items after 2.3.0.
  @BuiltValueField(wireName: r'libraryItemId')
  String? get libraryItemId;

  /// The title of the bookmark.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The time (in ms since POSIX epoch) when the bookmark was created.
  @BuiltValueField(wireName: r'time')
  int? get time;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'createdAt')
  int? get createdAt;

  Bookmark._();

  factory Bookmark([void updates(BookmarkBuilder b)]) = _$Bookmark;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookmarkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Bookmark> get serializer => _$BookmarkSerializer();
}

class _$BookmarkSerializer implements PrimitiveSerializer<Bookmark> {
  @override
  final Iterable<Type> types = const [Bookmark, _$Bookmark];

  @override
  final String wireName = r'Bookmark';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Bookmark object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.libraryItemId != null) {
      yield r'libraryItemId';
      yield serializers.serialize(
        object.libraryItemId,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Bookmark object, {
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
    required BookmarkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'libraryItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.libraryItemId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.time = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Bookmark deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookmarkBuilder();
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
