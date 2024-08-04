//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_metadata.g.dart';

/// The metadata for a file, including the path, size, and unix timestamps of the file.
///
/// Properties:
/// * [filename] - The filename of the file.
/// * [ext] - The file extension of the file.
/// * [path] - The absolute path on the server of the file.
/// * [relPath] - The path of the file, relative to the book's or podcast's folder.
/// * [size] - The total size (in bytes) of the item or file.
/// * [mtimeMs] - The time (in ms since POSIX epoch) when the file was last modified on disk.
/// * [ctimeMs] - The time (in ms since POSIX epoch) when the file status was changed on disk.
/// * [birthtimeMs] - The time (in ms since POSIX epoch) when the file was created on disk. Will be 0 if unknown.
@BuiltValue()
abstract class FileMetadata
    implements Built<FileMetadata, FileMetadataBuilder> {
  /// The filename of the file.
  @BuiltValueField(wireName: r'filename')
  String? get filename;

  /// The file extension of the file.
  @BuiltValueField(wireName: r'ext')
  String? get ext;

  /// The absolute path on the server of the file.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// The path of the file, relative to the book's or podcast's folder.
  @BuiltValueField(wireName: r'relPath')
  String? get relPath;

  /// The total size (in bytes) of the item or file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// The time (in ms since POSIX epoch) when the file was last modified on disk.
  @BuiltValueField(wireName: r'mtimeMs')
  int? get mtimeMs;

  /// The time (in ms since POSIX epoch) when the file status was changed on disk.
  @BuiltValueField(wireName: r'ctimeMs')
  int? get ctimeMs;

  /// The time (in ms since POSIX epoch) when the file was created on disk. Will be 0 if unknown.
  @BuiltValueField(wireName: r'birthtimeMs')
  int? get birthtimeMs;

  FileMetadata._();

  factory FileMetadata([void updates(FileMetadataBuilder b)]) = _$FileMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileMetadata> get serializer => _$FileMetadataSerializer();
}

class _$FileMetadataSerializer implements PrimitiveSerializer<FileMetadata> {
  @override
  final Iterable<Type> types = const [FileMetadata, _$FileMetadata];

  @override
  final String wireName = r'FileMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.filename != null) {
      yield r'filename';
      yield serializers.serialize(
        object.filename,
        specifiedType: const FullType(String),
      );
    }
    if (object.ext != null) {
      yield r'ext';
      yield serializers.serialize(
        object.ext,
        specifiedType: const FullType(String),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.relPath != null) {
      yield r'relPath';
      yield serializers.serialize(
        object.relPath,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.mtimeMs != null) {
      yield r'mtimeMs';
      yield serializers.serialize(
        object.mtimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.ctimeMs != null) {
      yield r'ctimeMs';
      yield serializers.serialize(
        object.ctimeMs,
        specifiedType: const FullType(int),
      );
    }
    if (object.birthtimeMs != null) {
      yield r'birthtimeMs';
      yield serializers.serialize(
        object.birthtimeMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileMetadata object, {
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
    required FileMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'ext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ext = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'relPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.relPath = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'mtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.mtimeMs = valueDes;
          break;
        case r'ctimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.ctimeMs = valueDes;
          break;
        case r'birthtimeMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.birthtimeMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileMetadataBuilder();
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
