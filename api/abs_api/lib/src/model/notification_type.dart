//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_type.g.dart';

class NotificationType extends EnumClass {
  /// The notification's type.
  @BuiltValueEnumConst(wireName: r'info')
  static const NotificationType info = _$info;

  /// The notification's type.
  @BuiltValueEnumConst(wireName: r'success')
  static const NotificationType success = _$success;

  /// The notification's type.
  @BuiltValueEnumConst(wireName: r'warning')
  static const NotificationType warning = _$warning;

  /// The notification's type.
  @BuiltValueEnumConst(wireName: r'failure', fallback: true)
  static const NotificationType failure = _$failure;

  static Serializer<NotificationType> get serializer =>
      _$notificationTypeSerializer;

  const NotificationType._(String name) : super(name);

  static BuiltSet<NotificationType> get values => _$values;
  static NotificationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationTypeMixin = Object with _$NotificationTypeMixin;
