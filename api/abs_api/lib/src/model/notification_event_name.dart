//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_event_name.g.dart';

class NotificationEventName extends EnumClass {
  /// The name of the event the notification will fire on.
  @BuiltValueEnumConst(wireName: r'onPodcastEpisodeDownloaded')
  static const NotificationEventName onPodcastEpisodeDownloaded =
      _$onPodcastEpisodeDownloaded;

  /// The name of the event the notification will fire on.
  @BuiltValueEnumConst(wireName: r'onTest', fallback: true)
  static const NotificationEventName onTest = _$onTest;

  static Serializer<NotificationEventName> get serializer =>
      _$notificationEventNameSerializer;

  const NotificationEventName._(String name) : super(name);

  static BuiltSet<NotificationEventName> get values => _$values;
  static NotificationEventName valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationEventNameMixin = Object
    with _$NotificationEventNameMixin;
