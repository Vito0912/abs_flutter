// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_library_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlayLibraryItemRequest extends PlayLibraryItemRequest {
  @override
  final DeviceInfo? deviceInfo;
  @override
  final bool? forceDirectPlay;
  @override
  final bool? forceTranscode;
  @override
  final BuiltList<String>? supportedMimeTypes;
  @override
  final String? mediaPlayer;

  factory _$PlayLibraryItemRequest(
          [void Function(PlayLibraryItemRequestBuilder)? updates]) =>
      (new PlayLibraryItemRequestBuilder()..update(updates))._build();

  _$PlayLibraryItemRequest._(
      {this.deviceInfo,
      this.forceDirectPlay,
      this.forceTranscode,
      this.supportedMimeTypes,
      this.mediaPlayer})
      : super._();

  @override
  PlayLibraryItemRequest rebuild(
          void Function(PlayLibraryItemRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlayLibraryItemRequestBuilder toBuilder() =>
      new PlayLibraryItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlayLibraryItemRequest &&
        deviceInfo == other.deviceInfo &&
        forceDirectPlay == other.forceDirectPlay &&
        forceTranscode == other.forceTranscode &&
        supportedMimeTypes == other.supportedMimeTypes &&
        mediaPlayer == other.mediaPlayer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceInfo.hashCode);
    _$hash = $jc(_$hash, forceDirectPlay.hashCode);
    _$hash = $jc(_$hash, forceTranscode.hashCode);
    _$hash = $jc(_$hash, supportedMimeTypes.hashCode);
    _$hash = $jc(_$hash, mediaPlayer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlayLibraryItemRequest')
          ..add('deviceInfo', deviceInfo)
          ..add('forceDirectPlay', forceDirectPlay)
          ..add('forceTranscode', forceTranscode)
          ..add('supportedMimeTypes', supportedMimeTypes)
          ..add('mediaPlayer', mediaPlayer))
        .toString();
  }
}

class PlayLibraryItemRequestBuilder
    implements Builder<PlayLibraryItemRequest, PlayLibraryItemRequestBuilder> {
  _$PlayLibraryItemRequest? _$v;

  DeviceInfoBuilder? _deviceInfo;
  DeviceInfoBuilder get deviceInfo =>
      _$this._deviceInfo ??= new DeviceInfoBuilder();
  set deviceInfo(DeviceInfoBuilder? deviceInfo) =>
      _$this._deviceInfo = deviceInfo;

  bool? _forceDirectPlay;
  bool? get forceDirectPlay => _$this._forceDirectPlay;
  set forceDirectPlay(bool? forceDirectPlay) =>
      _$this._forceDirectPlay = forceDirectPlay;

  bool? _forceTranscode;
  bool? get forceTranscode => _$this._forceTranscode;
  set forceTranscode(bool? forceTranscode) =>
      _$this._forceTranscode = forceTranscode;

  ListBuilder<String>? _supportedMimeTypes;
  ListBuilder<String> get supportedMimeTypes =>
      _$this._supportedMimeTypes ??= new ListBuilder<String>();
  set supportedMimeTypes(ListBuilder<String>? supportedMimeTypes) =>
      _$this._supportedMimeTypes = supportedMimeTypes;

  String? _mediaPlayer;
  String? get mediaPlayer => _$this._mediaPlayer;
  set mediaPlayer(String? mediaPlayer) => _$this._mediaPlayer = mediaPlayer;

  PlayLibraryItemRequestBuilder() {
    PlayLibraryItemRequest._defaults(this);
  }

  PlayLibraryItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceInfo = $v.deviceInfo?.toBuilder();
      _forceDirectPlay = $v.forceDirectPlay;
      _forceTranscode = $v.forceTranscode;
      _supportedMimeTypes = $v.supportedMimeTypes?.toBuilder();
      _mediaPlayer = $v.mediaPlayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlayLibraryItemRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlayLibraryItemRequest;
  }

  @override
  void update(void Function(PlayLibraryItemRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlayLibraryItemRequest build() => _build();

  _$PlayLibraryItemRequest _build() {
    _$PlayLibraryItemRequest _$result;
    try {
      _$result = _$v ??
          new _$PlayLibraryItemRequest._(
              deviceInfo: _deviceInfo?.build(),
              forceDirectPlay: forceDirectPlay,
              forceTranscode: forceTranscode,
              supportedMimeTypes: _supportedMimeTypes?.build(),
              mediaPlayer: mediaPlayer);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deviceInfo';
        _deviceInfo?.build();

        _$failedField = 'supportedMimeTypes';
        _supportedMimeTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlayLibraryItemRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
