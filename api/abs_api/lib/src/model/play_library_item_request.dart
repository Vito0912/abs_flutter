//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/device_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'play_library_item_request.g.dart';

/// PlayLibraryItemRequest
///
/// Properties:
/// * [deviceInfo]
/// * [forceDirectPlay] - Whether to force direct play of the library item.
/// * [forceTranscode] - Whether to force transcoding of the library item.
/// * [supportedMimeTypes] - The supported mime types for the device.
/// * [mediaPlayer] - The media player to use.
@BuiltValue()
abstract class PlayLibraryItemRequest
    implements Built<PlayLibraryItemRequest, PlayLibraryItemRequestBuilder> {
  @BuiltValueField(wireName: r'deviceInfo')
  DeviceInfo? get deviceInfo;

  /// Whether to force direct play of the library item.
  @BuiltValueField(wireName: r'forceDirectPlay')
  bool? get forceDirectPlay;

  /// Whether to force transcoding of the library item.
  @BuiltValueField(wireName: r'forceTranscode')
  bool? get forceTranscode;

  /// The supported mime types for the device.
  @BuiltValueField(wireName: r'supportedMimeTypes')
  BuiltList<String>? get supportedMimeTypes;

  /// The media player to use.
  @BuiltValueField(wireName: r'mediaPlayer')
  String? get mediaPlayer;

  PlayLibraryItemRequest._();

  factory PlayLibraryItemRequest(
          [void updates(PlayLibraryItemRequestBuilder b)]) =
      _$PlayLibraryItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlayLibraryItemRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlayLibraryItemRequest> get serializer =>
      _$PlayLibraryItemRequestSerializer();
}

class _$PlayLibraryItemRequestSerializer
    implements PrimitiveSerializer<PlayLibraryItemRequest> {
  @override
  final Iterable<Type> types = const [
    PlayLibraryItemRequest,
    _$PlayLibraryItemRequest
  ];

  @override
  final String wireName = r'PlayLibraryItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlayLibraryItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.deviceInfo != null) {
      yield r'deviceInfo';
      yield serializers.serialize(
        object.deviceInfo,
        specifiedType: const FullType(DeviceInfo),
      );
    }
    if (object.forceDirectPlay != null) {
      yield r'forceDirectPlay';
      yield serializers.serialize(
        object.forceDirectPlay,
        specifiedType: const FullType(bool),
      );
    }
    if (object.forceTranscode != null) {
      yield r'forceTranscode';
      yield serializers.serialize(
        object.forceTranscode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportedMimeTypes != null) {
      yield r'supportedMimeTypes';
      yield serializers.serialize(
        object.supportedMimeTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.mediaPlayer != null) {
      yield r'mediaPlayer';
      yield serializers.serialize(
        object.mediaPlayer,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PlayLibraryItemRequest object, {
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
    required PlayLibraryItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deviceInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviceInfo),
          ) as DeviceInfo;
          result.deviceInfo.replace(valueDes);
          break;
        case r'forceDirectPlay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forceDirectPlay = valueDes;
          break;
        case r'forceTranscode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.forceTranscode = valueDes;
          break;
        case r'supportedMimeTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.supportedMimeTypes.replace(valueDes);
          break;
        case r'mediaPlayer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mediaPlayer = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlayLibraryItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlayLibraryItemRequestBuilder();
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
