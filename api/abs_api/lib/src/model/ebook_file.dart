//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/file_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ebook_file.g.dart';

/// EbookFile
///
/// Properties:
/// * [ino] - The inode of the item in the file system.
/// * [metadata]
/// * [ebookFormat] - The ebook format of the ebook file.
/// * [addedAt] - The time (in ms since POSIX epoch) when added to the server.
/// * [updatedAt] - The time (in ms since POSIX epoch) when last updated.
@BuiltValue()
abstract class EbookFile implements Built<EbookFile, EbookFileBuilder> {
  /// The inode of the item in the file system.
  @BuiltValueField(wireName: r'ino')
  String? get ino;

  @BuiltValueField(wireName: r'metadata')
  FileMetadata? get metadata;

  /// The ebook format of the ebook file.
  @BuiltValueField(wireName: r'ebookFormat')
  String? get ebookFormat;

  /// The time (in ms since POSIX epoch) when added to the server.
  @BuiltValueField(wireName: r'addedAt')
  int? get addedAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'updatedAt')
  int? get updatedAt;

  EbookFile._();

  factory EbookFile([void updates(EbookFileBuilder b)]) = _$EbookFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EbookFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EbookFile> get serializer => _$EbookFileSerializer();
}

class _$EbookFileSerializer implements PrimitiveSerializer<EbookFile> {
  @override
  final Iterable<Type> types = const [EbookFile, _$EbookFile];

  @override
  final String wireName = r'EbookFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EbookFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ino != null) {
      yield r'ino';
      yield serializers.serialize(
        object.ino,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(FileMetadata),
      );
    }
    if (object.ebookFormat != null) {
      yield r'ebookFormat';
      yield serializers.serialize(
        object.ebookFormat,
        specifiedType: const FullType(String),
      );
    }
    if (object.addedAt != null) {
      yield r'addedAt';
      yield serializers.serialize(
        object.addedAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EbookFile object, {
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
    required EbookFileBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ino':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ino = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FileMetadata),
          ) as FileMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'ebookFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ebookFormat = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.addedAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EbookFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EbookFileBuilder();
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
