//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quick_match_episodes200_response.g.dart';

/// QuickMatchEpisodes200Response
///
/// Properties:
/// * [numEpisodesUpdated]
@BuiltValue()
abstract class QuickMatchEpisodes200Response
    implements
        Built<QuickMatchEpisodes200Response,
            QuickMatchEpisodes200ResponseBuilder> {
  @BuiltValueField(wireName: r'numEpisodesUpdated')
  int? get numEpisodesUpdated;

  QuickMatchEpisodes200Response._();

  factory QuickMatchEpisodes200Response(
          [void updates(QuickMatchEpisodes200ResponseBuilder b)]) =
      _$QuickMatchEpisodes200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QuickMatchEpisodes200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QuickMatchEpisodes200Response> get serializer =>
      _$QuickMatchEpisodes200ResponseSerializer();
}

class _$QuickMatchEpisodes200ResponseSerializer
    implements PrimitiveSerializer<QuickMatchEpisodes200Response> {
  @override
  final Iterable<Type> types = const [
    QuickMatchEpisodes200Response,
    _$QuickMatchEpisodes200Response
  ];

  @override
  final String wireName = r'QuickMatchEpisodes200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QuickMatchEpisodes200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.numEpisodesUpdated != null) {
      yield r'numEpisodesUpdated';
      yield serializers.serialize(
        object.numEpisodesUpdated,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QuickMatchEpisodes200Response object, {
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
    required QuickMatchEpisodes200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'numEpisodesUpdated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numEpisodesUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QuickMatchEpisodes200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QuickMatchEpisodes200ResponseBuilder();
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
