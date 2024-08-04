// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MediaType _$book = const MediaType._('book');
const MediaType _$podcast = const MediaType._('podcast');

MediaType _$valueOf(String name) {
  switch (name) {
    case 'book':
      return _$book;
    case 'podcast':
      return _$podcast;
    default:
      return _$podcast;
  }
}

final BuiltSet<MediaType> _$values = new BuiltSet<MediaType>(const <MediaType>[
  _$book,
  _$podcast,
]);

class _$MediaTypeMeta {
  const _$MediaTypeMeta();
  MediaType get book => _$book;
  MediaType get podcast => _$podcast;
  MediaType valueOf(String name) => _$valueOf(name);
  BuiltSet<MediaType> get values => _$values;
}

abstract class _$MediaTypeMixin {
  // ignore: non_constant_identifier_names
  _$MediaTypeMeta get MediaType => const _$MediaTypeMeta();
}

Serializer<MediaType> _$mediaTypeSerializer = new _$MediaTypeSerializer();

class _$MediaTypeSerializer implements PrimitiveSerializer<MediaType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'book': 'book',
    'podcast': 'podcast',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'book': 'book',
    'podcast': 'podcast',
  };

  @override
  final Iterable<Type> types = const <Type>[MediaType];
  @override
  final String wireName = 'MediaType';

  @override
  Object serialize(Serializers serializers, MediaType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MediaType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MediaType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
