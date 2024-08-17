//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/author.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'match_author_by_id200_response.g.dart';

/// MatchAuthorById200Response
///
/// Properties:
/// * [id] - The ID of the author.
/// * [asin] - The Audible identifier (ASIN) of the author. Will be null if unknown. Not the Amazon identifier.
/// * [name] - The name of the author.
/// * [description] - The new description of the author.
/// * [imagePath] - The absolute path for the author image. This will be in the `metadata/` directory. Will be null if there is no image.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [libraryItems] - The items associated with the author
/// * [series] - The series associated with the author
@BuiltValue()
abstract class MatchAuthorById200Response
    implements
        Built<MatchAuthorById200Response, MatchAuthorById200ResponseBuilder> {
  /// One Of [Author], [bool]
  OneOf get oneOf;

  MatchAuthorById200Response._();

  factory MatchAuthorById200Response(
          [void updates(MatchAuthorById200ResponseBuilder b)]) =
      _$MatchAuthorById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MatchAuthorById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MatchAuthorById200Response> get serializer =>
      _$MatchAuthorById200ResponseSerializer();
}

class _$MatchAuthorById200ResponseSerializer
    implements PrimitiveSerializer<MatchAuthorById200Response> {
  @override
  final Iterable<Type> types = const [
    MatchAuthorById200Response,
    _$MatchAuthorById200Response
  ];

  @override
  final String wireName = r'MatchAuthorById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MatchAuthorById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    MatchAuthorById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  MatchAuthorById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MatchAuthorById200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Author),
      FullType.nullable(bool),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
