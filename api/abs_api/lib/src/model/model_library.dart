//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_library.g.dart';

/// A library object which includes either books or podcasts.
///
/// Properties:
/// * [id] - The ID of the library.
/// * [name] - The name of the library.
/// * [folders] - The folders that belong to the library.
/// * [displayOrder] - Display position of the library in the list of libraries. Must be >= 1.
/// * [icon] - The selected icon for the library. See Library Icons for a list of possible icons.
/// * [mediaType] - The type of media that the library contains. Will be `book` or `podcast`. (Read Only)
/// * [provider] - Preferred metadata provider for the library. See Metadata Providers for a list of possible providers.
/// * [settings]
/// * [createdAt] - The time (in ms since POSIX epoch) when was created.
/// * [lastUpdate] - The time (in ms since POSIX epoch) when last updated.
@BuiltValue()
abstract class ModelLibrary
    implements Built<ModelLibrary, ModelLibraryBuilder> {
  /// The ID of the library.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The name of the library.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The folders that belong to the library.
  @BuiltValueField(wireName: r'folders')
  BuiltList<Folder>? get folders;

  /// Display position of the library in the list of libraries. Must be >= 1.
  @BuiltValueField(wireName: r'displayOrder')
  int? get displayOrder;

  /// The selected icon for the library. See Library Icons for a list of possible icons.
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// The type of media that the library contains. Will be `book` or `podcast`. (Read Only)
  @BuiltValueField(wireName: r'mediaType')
  String? get mediaType;

  /// Preferred metadata provider for the library. See Metadata Providers for a list of possible providers.
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'settings')
  LibrarySettings? get settings;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'createdAt')
  int? get createdAt;

  /// The time (in ms since POSIX epoch) when last updated.
  @BuiltValueField(wireName: r'lastUpdate')
  int? get lastUpdate;

  ModelLibrary._();

  factory ModelLibrary([void updates(ModelLibraryBuilder b)]) = _$ModelLibrary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelLibraryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelLibrary> get serializer => _$ModelLibrarySerializer();
}

class _$ModelLibrarySerializer implements PrimitiveSerializer<ModelLibrary> {
  @override
  final Iterable<Type> types = const [ModelLibrary, _$ModelLibrary];

  @override
  final String wireName = r'ModelLibrary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelLibrary object, {
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
    if (object.folders != null) {
      yield r'folders';
      yield serializers.serialize(
        object.folders,
        specifiedType: const FullType(BuiltList, [FullType(Folder)]),
      );
    }
    if (object.displayOrder != null) {
      yield r'displayOrder';
      yield serializers.serialize(
        object.displayOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaType != null) {
      yield r'mediaType';
      yield serializers.serialize(
        object.mediaType,
        specifiedType: const FullType(String),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType(LibrarySettings),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastUpdate != null) {
      yield r'lastUpdate';
      yield serializers.serialize(
        object.lastUpdate,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelLibrary object, {
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
    required ModelLibraryBuilder result,
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
        case r'folders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Folder)]),
          ) as BuiltList<Folder>;
          result.folders.replace(valueDes);
          break;
        case r'displayOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.displayOrder = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'mediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mediaType = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LibrarySettings),
          ) as LibrarySettings;
          result.settings.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        case r'lastUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastUpdate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelLibrary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelLibraryBuilder();
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
