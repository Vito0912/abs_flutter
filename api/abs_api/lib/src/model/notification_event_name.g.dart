// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_event_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationEventName _$onPodcastEpisodeDownloaded =
    const NotificationEventName._('onPodcastEpisodeDownloaded');
const NotificationEventName _$onTest = const NotificationEventName._('onTest');

NotificationEventName _$valueOf(String name) {
  switch (name) {
    case 'onPodcastEpisodeDownloaded':
      return _$onPodcastEpisodeDownloaded;
    case 'onTest':
      return _$onTest;
    default:
      return _$onTest;
  }
}

final BuiltSet<NotificationEventName> _$values =
    new BuiltSet<NotificationEventName>(const <NotificationEventName>[
  _$onPodcastEpisodeDownloaded,
  _$onTest,
]);

class _$NotificationEventNameMeta {
  const _$NotificationEventNameMeta();
  NotificationEventName get onPodcastEpisodeDownloaded =>
      _$onPodcastEpisodeDownloaded;
  NotificationEventName get onTest => _$onTest;
  NotificationEventName valueOf(String name) => _$valueOf(name);
  BuiltSet<NotificationEventName> get values => _$values;
}

abstract class _$NotificationEventNameMixin {
  // ignore: non_constant_identifier_names
  _$NotificationEventNameMeta get NotificationEventName =>
      const _$NotificationEventNameMeta();
}

Serializer<NotificationEventName> _$notificationEventNameSerializer =
    new _$NotificationEventNameSerializer();

class _$NotificationEventNameSerializer
    implements PrimitiveSerializer<NotificationEventName> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'onPodcastEpisodeDownloaded': 'onPodcastEpisodeDownloaded',
    'onTest': 'onTest',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'onPodcastEpisodeDownloaded': 'onPodcastEpisodeDownloaded',
    'onTest': 'onTest',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationEventName];
  @override
  final String wireName = 'NotificationEventName';

  @override
  Object serialize(Serializers serializers, NotificationEventName object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationEventName deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationEventName.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
