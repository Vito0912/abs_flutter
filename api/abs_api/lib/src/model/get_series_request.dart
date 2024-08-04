//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_series_request.g.dart';

/// GetSeriesRequest
///
/// Properties:
/// * [include] - A comma separated list of what to include with the series.
@BuiltValue()
abstract class GetSeriesRequest
    implements Built<GetSeriesRequest, GetSeriesRequestBuilder> {
  /// A comma separated list of what to include with the series.
  @BuiltValueField(wireName: r'include')
  GetSeriesRequestIncludeEnum? get include;
  // enum includeEnum {  progress,  rssfeed,  progress,rssfeed,  rssfeed,progress,  };

  GetSeriesRequest._();

  factory GetSeriesRequest([void updates(GetSeriesRequestBuilder b)]) =
      _$GetSeriesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSeriesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSeriesRequest> get serializer =>
      _$GetSeriesRequestSerializer();
}

class _$GetSeriesRequestSerializer
    implements PrimitiveSerializer<GetSeriesRequest> {
  @override
  final Iterable<Type> types = const [GetSeriesRequest, _$GetSeriesRequest];

  @override
  final String wireName = r'GetSeriesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSeriesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.include != null) {
      yield r'include';
      yield serializers.serialize(
        object.include,
        specifiedType: const FullType(GetSeriesRequestIncludeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSeriesRequest object, {
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
    required GetSeriesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'include':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GetSeriesRequestIncludeEnum),
          ) as GetSeriesRequestIncludeEnum;
          result.include = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSeriesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSeriesRequestBuilder();
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

class GetSeriesRequestIncludeEnum extends EnumClass {
  /// A comma separated list of what to include with the series.
  @BuiltValueEnumConst(wireName: r'progress')
  static const GetSeriesRequestIncludeEnum progress =
      _$getSeriesRequestIncludeEnum_progress;

  /// A comma separated list of what to include with the series.
  @BuiltValueEnumConst(wireName: r'rssfeed')
  static const GetSeriesRequestIncludeEnum rssfeed =
      _$getSeriesRequestIncludeEnum_rssfeed;

  /// A comma separated list of what to include with the series.
  @BuiltValueEnumConst(wireName: r'progress,rssfeed')
  static const GetSeriesRequestIncludeEnum progressCommaRssfeed =
      _$getSeriesRequestIncludeEnum_progressCommaRssfeed;

  /// A comma separated list of what to include with the series.
  @BuiltValueEnumConst(wireName: r'rssfeed,progress', fallback: true)
  static const GetSeriesRequestIncludeEnum rssfeedCommaProgress =
      _$getSeriesRequestIncludeEnum_rssfeedCommaProgress;

  static Serializer<GetSeriesRequestIncludeEnum> get serializer =>
      _$getSeriesRequestIncludeEnumSerializer;

  const GetSeriesRequestIncludeEnum._(String name) : super(name);

  static BuiltSet<GetSeriesRequestIncludeEnum> get values =>
      _$getSeriesRequestIncludeEnumValues;
  static GetSeriesRequestIncludeEnum valueOf(String name) =>
      _$getSeriesRequestIncludeEnumValueOf(name);
}
