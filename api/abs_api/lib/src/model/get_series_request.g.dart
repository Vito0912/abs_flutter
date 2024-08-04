// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_series_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetSeriesRequestIncludeEnum _$getSeriesRequestIncludeEnum_progress =
    const GetSeriesRequestIncludeEnum._('progress');
const GetSeriesRequestIncludeEnum _$getSeriesRequestIncludeEnum_rssfeed =
    const GetSeriesRequestIncludeEnum._('rssfeed');
const GetSeriesRequestIncludeEnum
    _$getSeriesRequestIncludeEnum_progressCommaRssfeed =
    const GetSeriesRequestIncludeEnum._('progressCommaRssfeed');
const GetSeriesRequestIncludeEnum
    _$getSeriesRequestIncludeEnum_rssfeedCommaProgress =
    const GetSeriesRequestIncludeEnum._('rssfeedCommaProgress');

GetSeriesRequestIncludeEnum _$getSeriesRequestIncludeEnumValueOf(String name) {
  switch (name) {
    case 'progress':
      return _$getSeriesRequestIncludeEnum_progress;
    case 'rssfeed':
      return _$getSeriesRequestIncludeEnum_rssfeed;
    case 'progressCommaRssfeed':
      return _$getSeriesRequestIncludeEnum_progressCommaRssfeed;
    case 'rssfeedCommaProgress':
      return _$getSeriesRequestIncludeEnum_rssfeedCommaProgress;
    default:
      return _$getSeriesRequestIncludeEnum_rssfeedCommaProgress;
  }
}

final BuiltSet<GetSeriesRequestIncludeEnum>
    _$getSeriesRequestIncludeEnumValues = new BuiltSet<
        GetSeriesRequestIncludeEnum>(const <GetSeriesRequestIncludeEnum>[
  _$getSeriesRequestIncludeEnum_progress,
  _$getSeriesRequestIncludeEnum_rssfeed,
  _$getSeriesRequestIncludeEnum_progressCommaRssfeed,
  _$getSeriesRequestIncludeEnum_rssfeedCommaProgress,
]);

Serializer<GetSeriesRequestIncludeEnum>
    _$getSeriesRequestIncludeEnumSerializer =
    new _$GetSeriesRequestIncludeEnumSerializer();

class _$GetSeriesRequestIncludeEnumSerializer
    implements PrimitiveSerializer<GetSeriesRequestIncludeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'progress': 'progress',
    'rssfeed': 'rssfeed',
    'progressCommaRssfeed': 'progress,rssfeed',
    'rssfeedCommaProgress': 'rssfeed,progress',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'progress': 'progress',
    'rssfeed': 'rssfeed',
    'progress,rssfeed': 'progressCommaRssfeed',
    'rssfeed,progress': 'rssfeedCommaProgress',
  };

  @override
  final Iterable<Type> types = const <Type>[GetSeriesRequestIncludeEnum];
  @override
  final String wireName = 'GetSeriesRequestIncludeEnum';

  @override
  Object serialize(Serializers serializers, GetSeriesRequestIncludeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetSeriesRequestIncludeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetSeriesRequestIncludeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetSeriesRequest extends GetSeriesRequest {
  @override
  final GetSeriesRequestIncludeEnum? include;

  factory _$GetSeriesRequest(
          [void Function(GetSeriesRequestBuilder)? updates]) =>
      (new GetSeriesRequestBuilder()..update(updates))._build();

  _$GetSeriesRequest._({this.include}) : super._();

  @override
  GetSeriesRequest rebuild(void Function(GetSeriesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSeriesRequestBuilder toBuilder() =>
      new GetSeriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSeriesRequest && include == other.include;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, include.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetSeriesRequest')
          ..add('include', include))
        .toString();
  }
}

class GetSeriesRequestBuilder
    implements Builder<GetSeriesRequest, GetSeriesRequestBuilder> {
  _$GetSeriesRequest? _$v;

  GetSeriesRequestIncludeEnum? _include;
  GetSeriesRequestIncludeEnum? get include => _$this._include;
  set include(GetSeriesRequestIncludeEnum? include) =>
      _$this._include = include;

  GetSeriesRequestBuilder() {
    GetSeriesRequest._defaults(this);
  }

  GetSeriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _include = $v.include;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSeriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSeriesRequest;
  }

  @override
  void update(void Function(GetSeriesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSeriesRequest build() => _build();

  _$GetSeriesRequest _build() {
    final _$result = _$v ?? new _$GetSeriesRequest._(include: include);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
