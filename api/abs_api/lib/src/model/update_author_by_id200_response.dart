//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/author_series.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/author.dart';
import 'package:abs_api/src/model/library_item_minified.dart';
import 'dart:core';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'update_author_by_id200_response.g.dart';

/// UpdateAuthorById200Response
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
abstract class UpdateAuthorById200Response
    implements
        Built<UpdateAuthorById200Response, UpdateAuthorById200ResponseBuilder> {
  /// One Of [Author], [bool]
  OneOf get oneOf;

  UpdateAuthorById200Response._();

  factory UpdateAuthorById200Response(
          [void updates(UpdateAuthorById200ResponseBuilder b)]) =
      _$UpdateAuthorById200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAuthorById200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAuthorById200Response> get serializer =>
      _$UpdateAuthorById200ResponseSerializer();
}

class _$UpdateAuthorById200ResponseSerializer
    implements PrimitiveSerializer<UpdateAuthorById200Response> {
  @override
  final Iterable<Type> types = const [
    UpdateAuthorById200Response,
    _$UpdateAuthorById200Response
  ];

  @override
  final String wireName = r'UpdateAuthorById200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAuthorById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    UpdateAuthorById200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  UpdateAuthorById200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAuthorById200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Author),
      FullType.nullable(bool),
      FullType.nullable(bool),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
