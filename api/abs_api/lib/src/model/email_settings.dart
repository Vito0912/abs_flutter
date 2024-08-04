//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/ereader_device_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_settings.g.dart';

/// The email settings configuration for the server. This includes the credentials to send e-books and an array of e-reader devices.
///
/// Properties:
/// * [id] - The unique identifier for the email settings. Currently this is always `email-settings`
/// * [port] - The port number for the SMTP server.
/// * [secure] - Indicates if the connection should use SSL/TLS.
/// * [ereaderDevices] - List of configured e-reader devices.
/// * [host] - The SMTP host address.
/// * [rejectUnauthorized] - Indicates if unauthorized SSL/TLS certificates should be rejected.
/// * [user] - The username for SMTP authentication.
/// * [pass] - The password for SMTP authentication.
/// * [testAddress] - The test email address used for sending test emails.
/// * [fromAddress] - The default \"from\" email address for outgoing emails.
@BuiltValue()
abstract class EmailSettings
    implements Built<EmailSettings, EmailSettingsBuilder> {
  /// The unique identifier for the email settings. Currently this is always `email-settings`
  @BuiltValueField(wireName: r'id')
  String get id;

  /// The port number for the SMTP server.
  @BuiltValueField(wireName: r'port')
  int get port;

  /// Indicates if the connection should use SSL/TLS.
  @BuiltValueField(wireName: r'secure')
  bool get secure;

  /// List of configured e-reader devices.
  @BuiltValueField(wireName: r'ereaderDevices')
  BuiltList<EreaderDeviceObject> get ereaderDevices;

  /// The SMTP host address.
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// Indicates if unauthorized SSL/TLS certificates should be rejected.
  @BuiltValueField(wireName: r'rejectUnauthorized')
  bool? get rejectUnauthorized;

  /// The username for SMTP authentication.
  @BuiltValueField(wireName: r'user')
  String? get user;

  /// The password for SMTP authentication.
  @BuiltValueField(wireName: r'pass')
  String? get pass;

  /// The test email address used for sending test emails.
  @BuiltValueField(wireName: r'testAddress')
  String? get testAddress;

  /// The default \"from\" email address for outgoing emails.
  @BuiltValueField(wireName: r'fromAddress')
  String? get fromAddress;

  EmailSettings._();

  factory EmailSettings([void updates(EmailSettingsBuilder b)]) =
      _$EmailSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailSettings> get serializer =>
      _$EmailSettingsSerializer();
}

class _$EmailSettingsSerializer implements PrimitiveSerializer<EmailSettings> {
  @override
  final Iterable<Type> types = const [EmailSettings, _$EmailSettings];

  @override
  final String wireName = r'EmailSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    yield r'secure';
    yield serializers.serialize(
      object.secure,
      specifiedType: const FullType(bool),
    );
    yield r'ereaderDevices';
    yield serializers.serialize(
      object.ereaderDevices,
      specifiedType: const FullType(BuiltList, [FullType(EreaderDeviceObject)]),
    );
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.rejectUnauthorized != null) {
      yield r'rejectUnauthorized';
      yield serializers.serialize(
        object.rejectUnauthorized,
        specifiedType: const FullType(bool),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.pass != null) {
      yield r'pass';
      yield serializers.serialize(
        object.pass,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.testAddress != null) {
      yield r'testAddress';
      yield serializers.serialize(
        object.testAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fromAddress != null) {
      yield r'fromAddress';
      yield serializers.serialize(
        object.fromAddress,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EmailSettings object, {
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
    required EmailSettingsBuilder result,
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
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        case r'secure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.secure = valueDes;
          break;
        case r'ereaderDevices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(EreaderDeviceObject)]),
          ) as BuiltList<EreaderDeviceObject>;
          result.ereaderDevices.replace(valueDes);
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'rejectUnauthorized':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.rejectUnauthorized = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.user = valueDes;
          break;
        case r'pass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pass = valueDes;
          break;
        case r'testAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.testAddress = valueDes;
          break;
        case r'fromAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fromAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EmailSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailSettingsBuilder();
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
