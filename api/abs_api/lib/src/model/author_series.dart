//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'author_series.g.dart';

/// Series and the included library items that an author has written.
///
/// Properties:
/// * [id] - The ID of the series.
/// * [name] - The name of the series.
/// * [items] - The items in the series. Each library item's media's metadata will have a `series` attribute, a `Series Sequence`, which is the matching series.
@BuiltValue()
abstract class AuthorSeries
    implements Built<AuthorSeries, AuthorSeriesBuilder> {
  /// The ID of the series.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the series.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The items in the series. Each library item's media's metadata will have a `series` attribute, a `Series Sequence`, which is the matching series.
  @BuiltValueField(wireName: r'items')
  BuiltList<LibraryItemMinified>? get items;

  AuthorSeries._();

  factory AuthorSeries([void updates(AuthorSeriesBuilder b)]) = _$AuthorSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorSeries> get serializer => _$AuthorSeriesSerializer();
}

class _$AuthorSeriesSerializer implements PrimitiveSerializer<AuthorSeries> {
  @override
  final Iterable<Type> types = const [AuthorSeries, _$AuthorSeries];

  @override
  final String wireName = r'AuthorSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType:
            const FullType(BuiltList, [FullType(LibraryItemMinified)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthorSeries object, {
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
    required AuthorSeriesBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(LibraryItemMinified)]),
          ) as BuiltList<LibraryItemMinified>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthorSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorSeriesBuilder();
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
