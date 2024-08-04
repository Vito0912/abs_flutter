// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationType _$info = const NotificationType._('info');
const NotificationType _$success = const NotificationType._('success');
const NotificationType _$warning = const NotificationType._('warning');
const NotificationType _$failure = const NotificationType._('failure');

NotificationType _$valueOf(String name) {
  switch (name) {
    case 'info':
      return _$info;
    case 'success':
      return _$success;
    case 'warning':
      return _$warning;
    case 'failure':
      return _$failure;
    default:
      return _$failure;
  }
}

final BuiltSet<NotificationType> _$values =
    new BuiltSet<NotificationType>(const <NotificationType>[
  _$info,
  _$success,
  _$warning,
  _$failure,
]);

class _$NotificationTypeMeta {
  const _$NotificationTypeMeta();
  NotificationType get info => _$info;
  NotificationType get success => _$success;
  NotificationType get warning => _$warning;
  NotificationType get failure => _$failure;
  NotificationType valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationType> get values => _$values;
}

abstract class _$NotificationTypeMixin {
  // ignore: non_constant_identifier_names
  _$NotificationTypeMeta get NotificationType => const _$NotificationTypeMeta();
}

Serializer<NotificationType> _$notificationTypeSerializer =
    new _$NotificationTypeSerializer();

class _$NotificationTypeSerializer
    implements PrimitiveSerializer<NotificationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'info': 'info',
    'success': 'success',
    'warning': 'warning',
    'failure': 'failure',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'info': 'info',
    'success': 'success',
    'warning': 'warning',
    'failure': 'failure',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationType];
  @override
  final String wireName = 'NotificationType';

  @override
  Object serialize(Serializers serializers, NotificationType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
