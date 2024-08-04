//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ereader_device_object.g.dart';

/// An e-reader device configured to receive EPUB through e-mail.
///
/// Properties:
/// * [name] - The name of the e-reader device.
/// * [email] - The email address associated with the e-reader device.
/// * [availabilityOption] - The availability option for the device.
/// * [users] - List of specific users allowed to access the device.
@BuiltValue()
abstract class EreaderDeviceObject
    implements Built<EreaderDeviceObject, EreaderDeviceObjectBuilder> {
  /// The name of the e-reader device.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The email address associated with the e-reader device.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// The availability option for the device.
  @BuiltValueField(wireName: r'availabilityOption')
  EreaderDeviceObjectAvailabilityOptionEnum get availabilityOption;
  // enum availabilityOptionEnum {  adminOrUp,  userOrUp,  guestOrUp,  specificUsers,  };

  /// List of specific users allowed to access the device.
  @BuiltValueField(wireName: r'users')
  BuiltList<String>? get users;

  EreaderDeviceObject._();

  factory EreaderDeviceObject([void updates(EreaderDeviceObjectBuilder b)]) =
      _$EreaderDeviceObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EreaderDeviceObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EreaderDeviceObject> get serializer =>
      _$EreaderDeviceObjectSerializer();
}

class _$EreaderDeviceObjectSerializer
    implements PrimitiveSerializer<EreaderDeviceObject> {
  @override
  final Iterable<Type> types = const [
    EreaderDeviceObject,
    _$EreaderDeviceObject
  ];

  @override
  final String wireName = r'EreaderDeviceObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EreaderDeviceObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'availabilityOption';
    yield serializers.serialize(
      object.availabilityOption,
      specifiedType: const FullType(EreaderDeviceObjectAvailabilityOptionEnum),
    );
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EreaderDeviceObject object, {
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
    required EreaderDeviceObjectBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'availabilityOption':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(EreaderDeviceObjectAvailabilityOptionEnum),
          ) as EreaderDeviceObjectAvailabilityOptionEnum;
          result.availabilityOption = valueDes;
          break;
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.users.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EreaderDeviceObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EreaderDeviceObjectBuilder();
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

class EreaderDeviceObjectAvailabilityOptionEnum extends EnumClass {
  /// The availability option for the device.
  @BuiltValueEnumConst(wireName: r'adminOrUp')
  static const EreaderDeviceObjectAvailabilityOptionEnum adminOrUp =
      _$ereaderDeviceObjectAvailabilityOptionEnum_adminOrUp;

  /// The availability option for the device.
  @BuiltValueEnumConst(wireName: r'userOrUp')
  static const EreaderDeviceObjectAvailabilityOptionEnum userOrUp =
      _$ereaderDeviceObjectAvailabilityOptionEnum_userOrUp;

  /// The availability option for the device.
  @BuiltValueEnumConst(wireName: r'guestOrUp')
  static const EreaderDeviceObjectAvailabilityOptionEnum guestOrUp =
      _$ereaderDeviceObjectAvailabilityOptionEnum_guestOrUp;

  /// The availability option for the device.
  @BuiltValueEnumConst(wireName: r'specificUsers', fallback: true)
  static const EreaderDeviceObjectAvailabilityOptionEnum specificUsers =
      _$ereaderDeviceObjectAvailabilityOptionEnum_specificUsers;

  static Serializer<EreaderDeviceObjectAvailabilityOptionEnum> get serializer =>
      _$ereaderDeviceObjectAvailabilityOptionEnumSerializer;

  const EreaderDeviceObjectAvailabilityOptionEnum._(String name) : super(name);

  static BuiltSet<EreaderDeviceObjectAvailabilityOptionEnum> get values =>
      _$ereaderDeviceObjectAvailabilityOptionEnumValues;
  static EreaderDeviceObjectAvailabilityOptionEnum valueOf(String name) =>
      _$ereaderDeviceObjectAvailabilityOptionEnumValueOf(name);
}
