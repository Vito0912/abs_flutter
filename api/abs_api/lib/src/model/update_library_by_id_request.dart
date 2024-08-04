//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/library_settings.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/folder.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_library_by_id_request.g.dart';

/// UpdateLibraryByIdRequest
///
/// Properties:
/// * [name] - The name of the library.
/// * [folders] - The folders of the library. Only specify the fullPath.
/// * [displayOrder] - The display order of the library. Must be >= 1.
/// * [icon] - The icon of the library. See Library Icons for a list of possible icons.
/// * [mediaType] - The type of media that the library contains. Must be `book` or `podcast`.
/// * [provider] - Preferred metadata provider for the library. See Metadata Providers for a list of possible providers.
/// * [settings]
@BuiltValue()
abstract class UpdateLibraryByIdRequest
    implements
        Built<UpdateLibraryByIdRequest, UpdateLibraryByIdRequestBuilder> {
  /// The name of the library.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The folders of the library. Only specify the fullPath.
  @BuiltValueField(wireName: r'folders')
  BuiltList<Folder>? get folders;

  /// The display order of the library. Must be >= 1.
  @BuiltValueField(wireName: r'displayOrder')
  int? get displayOrder;

  /// The icon of the library. See Library Icons for a list of possible icons.
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// The type of media that the library contains. Must be `book` or `podcast`.
  @BuiltValueField(wireName: r'mediaType')
  String? get mediaType;

  /// Preferred metadata provider for the library. See Metadata Providers for a list of possible providers.
  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'settings')
  LibrarySettings? get settings;

  UpdateLibraryByIdRequest._();

  factory UpdateLibraryByIdRequest(
          [void updates(UpdateLibraryByIdRequestBuilder b)]) =
      _$UpdateLibraryByIdRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateLibraryByIdRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateLibraryByIdRequest> get serializer =>
      _$UpdateLibraryByIdRequestSerializer();
}

class _$UpdateLibraryByIdRequestSerializer
    implements PrimitiveSerializer<UpdateLibraryByIdRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateLibraryByIdRequest,
    _$UpdateLibraryByIdRequest
  ];

  @override
  final String wireName = r'UpdateLibraryByIdRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateLibraryByIdRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateLibraryByIdRequest object, {
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
    required UpdateLibraryByIdRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateLibraryByIdRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateLibraryByIdRequestBuilder();
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
