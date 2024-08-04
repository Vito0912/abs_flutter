// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_listening_stats200_response_items_value_media_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetListeningStats200ResponseItemsValueMediaMetadata
    extends GetListeningStats200ResponseItemsValueMediaMetadata {
  @override
  final OneOf oneOf;

  factory _$GetListeningStats200ResponseItemsValueMediaMetadata(
          [void Function(
                  GetListeningStats200ResponseItemsValueMediaMetadataBuilder)?
              updates]) =>
      (new GetListeningStats200ResponseItemsValueMediaMetadataBuilder()
            ..update(updates))
          ._build();

  _$GetListeningStats200ResponseItemsValueMediaMetadata._({required this.oneOf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'GetListeningStats200ResponseItemsValueMediaMetadata', 'oneOf');
  }

  @override
  GetListeningStats200ResponseItemsValueMediaMetadata rebuild(
          void Function(
                  GetListeningStats200ResponseItemsValueMediaMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetListeningStats200ResponseItemsValueMediaMetadataBuilder toBuilder() =>
      new GetListeningStats200ResponseItemsValueMediaMetadataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetListeningStats200ResponseItemsValueMediaMetadata &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'GetListeningStats200ResponseItemsValueMediaMetadata')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GetListeningStats200ResponseItemsValueMediaMetadataBuilder
    implements
        Builder<GetListeningStats200ResponseItemsValueMediaMetadata,
            GetListeningStats200ResponseItemsValueMediaMetadataBuilder> {
  _$GetListeningStats200ResponseItemsValueMediaMetadata? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GetListeningStats200ResponseItemsValueMediaMetadataBuilder() {
    GetListeningStats200ResponseItemsValueMediaMetadata._defaults(this);
  }

  GetListeningStats200ResponseItemsValueMediaMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetListeningStats200ResponseItemsValueMediaMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetListeningStats200ResponseItemsValueMediaMetadata;
  }

  @override
  void update(
      void Function(GetListeningStats200ResponseItemsValueMediaMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetListeningStats200ResponseItemsValueMediaMetadata build() => _build();

  _$GetListeningStats200ResponseItemsValueMediaMetadata _build() {
    final _$result = _$v ??
        new _$GetListeningStats200ResponseItemsValueMediaMetadata._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf,
                r'GetListeningStats200ResponseItemsValueMediaMetadata',
                'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
