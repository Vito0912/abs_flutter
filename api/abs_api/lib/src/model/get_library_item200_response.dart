//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'get_library_item200_response.g.dart';

/// TODO
///
/// Properties:
/// * [id] - The ID of library items after 2.3.0.
/// * [oldLibraryItemId] - The ID of library items on server version 2.2.23 and before.
/// * [ino] - The inode of the item in the file system.
/// * [libraryId] - The ID of the library.
/// * [folderId] - The ID of the folder.
/// * [path] - The path of the library item on the server.
/// * [relPath] - The path, relative to the library folder, of the library item.
/// * [isFile] - Whether the library item is a single file in the root of the library folder.
/// * [mtimeMs] - The time (in ms since POSIX epoch) when the library item was last modified on disk.
/// * [ctimeMs] - The time (in ms since POSIX epoch) when the library item status was changed on disk.
/// * [birthtimeMs] - The time (in ms since POSIX epoch) when the library item was created on disk. Will be 0 if unknown.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
/// * [isMissing] - Whether the library item was scanned and no longer exists.
/// * [isInvalid] - Whether the library item was scanned and no longer has media files.
/// * [mediaType]
/// * [media]
/// * [libraryFiles]
@BuiltValue()
abstract class GetLibraryItem200Response
    implements
        Built<GetLibraryItem200Response, GetLibraryItem200ResponseBuilder> {
  /// One Of [LibraryItem]
  OneOf get oneOf;

  GetLibraryItem200Response._();

  factory GetLibraryItem200Response(
          [void updates(GetLibraryItem200ResponseBuilder b)]) =
      _$GetLibraryItem200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLibraryItem200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLibraryItem200Response> get serializer =>
      _$GetLibraryItem200ResponseSerializer();
}

class _$GetLibraryItem200ResponseSerializer
    implements PrimitiveSerializer<GetLibraryItem200Response> {
  @override
  final Iterable<Type> types = const [
    GetLibraryItem200Response,
    _$GetLibraryItem200Response
  ];

  @override
  final String wireName = r'GetLibraryItem200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLibraryItem200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetLibraryItem200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  GetLibraryItem200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLibraryItem200ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(LibraryItem),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
