// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listening_stats200_response_items_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetListeningStats200ResponseItemsValue
    extends GetListeningStats200ResponseItemsValue {
  @override
  final String? id;
  @override
  final num? timeListening;
  @override
  final GetListeningStats200ResponseItemsValueMediaMetadata? mediaMetadata;

  factory _$GetListeningStats200ResponseItemsValue(
          [void Function(GetListeningStats200ResponseItemsValueBuilder)?
              updates]) =>
      (new GetListeningStats200ResponseItemsValueBuilder()..update(updates))
          ._build();

  _$GetListeningStats200ResponseItemsValue._(
      {this.id, this.timeListening, this.mediaMetadata})
      : super._();

  @override
  GetListeningStats200ResponseItemsValue rebuild(
          void Function(GetListeningStats200ResponseItemsValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetListeningStats200ResponseItemsValueBuilder toBuilder() =>
      new GetListeningStats200ResponseItemsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetListeningStats200ResponseItemsValue &&
        id == other.id &&
        timeListening == other.timeListening &&
        mediaMetadata == other.mediaMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, timeListening.hashCode);
    _$hash = $jc(_$hash, mediaMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetListeningStats200ResponseItemsValue')
          ..add('id', id)
          ..add('timeListening', timeListening)
          ..add('mediaMetadata', mediaMetadata))
        .toString();
  }
}

class GetListeningStats200ResponseItemsValueBuilder
    implements
        Builder<GetListeningStats200ResponseItemsValue,
            GetListeningStats200ResponseItemsValueBuilder> {
  _$GetListeningStats200ResponseItemsValue? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _timeListening;
  num? get timeListening => _$this._timeListening;
  set timeListening(num? timeListening) =>
      _$this._timeListening = timeListening;

  GetListeningStats200ResponseItemsValueMediaMetadataBuilder? _mediaMetadata;
  GetListeningStats200ResponseItemsValueMediaMetadataBuilder
      get mediaMetadata => _$this._mediaMetadata ??=
          new GetListeningStats200ResponseItemsValueMediaMetadataBuilder();
  set mediaMetadata(
          GetListeningStats200ResponseItemsValueMediaMetadataBuilder?
              mediaMetadata) =>
      _$this._mediaMetadata = mediaMetadata;

  GetListeningStats200ResponseItemsValueBuilder() {
    GetListeningStats200ResponseItemsValue._defaults(this);
  }

  GetListeningStats200ResponseItemsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _timeListening = $v.timeListening;
      _mediaMetadata = $v.mediaMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetListeningStats200ResponseItemsValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetListeningStats200ResponseItemsValue;
  }

  @override
  void update(
      void Function(GetListeningStats200ResponseItemsValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetListeningStats200ResponseItemsValue build() => _build();

  _$GetListeningStats200ResponseItemsValue _build() {
    _$GetListeningStats200ResponseItemsValue _$result;
    try {
      _$result = _$v ??
          new _$GetListeningStats200ResponseItemsValue._(
              id: id,
              timeListening: timeListening,
              mediaMetadata: _mediaMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaMetadata';
        _mediaMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetListeningStats200ResponseItemsValue',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
