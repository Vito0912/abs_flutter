// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_track.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AudioTrack extends AudioTrack {
  @override
  final int? index;
  @override
  final double? startOffset;
  @override
  final double? duration;
  @override
  final String? title;
  @override
  final String? contentUrl;
  @override
  final String? mimeType;
  @override
  final String? codec;
  @override
  final FileMetadata? metadata;

  factory _$AudioTrack([void Function(AudioTrackBuilder)? updates]) =>
      (new AudioTrackBuilder()..update(updates))._build();

  _$AudioTrack._(
      {this.index,
      this.startOffset,
      this.duration,
      this.title,
      this.contentUrl,
      this.mimeType,
      this.codec,
      this.metadata})
      : super._();

  @override
  AudioTrack rebuild(void Function(AudioTrackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudioTrackBuilder toBuilder() => new AudioTrackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudioTrack &&
        index == other.index &&
        startOffset == other.startOffset &&
        duration == other.duration &&
        title == other.title &&
        contentUrl == other.contentUrl &&
        mimeType == other.mimeType &&
        codec == other.codec &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, startOffset.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, contentUrl.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, codec.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AudioTrack')
          ..add('index', index)
          ..add('startOffset', startOffset)
          ..add('duration', duration)
          ..add('title', title)
          ..add('contentUrl', contentUrl)
          ..add('mimeType', mimeType)
          ..add('codec', codec)
          ..add('metadata', metadata))
        .toString();
  }
}

class AudioTrackBuilder implements Builder<AudioTrack, AudioTrackBuilder> {
  _$AudioTrack? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  double? _startOffset;
  double? get startOffset => _$this._startOffset;
  set startOffset(double? startOffset) => _$this._startOffset = startOffset;

  double? _duration;
  double? get duration => _$this._duration;
  set duration(double? duration) => _$this._duration = duration;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _contentUrl;
  String? get contentUrl => _$this._contentUrl;
  set contentUrl(String? contentUrl) => _$this._contentUrl = contentUrl;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _codec;
  String? get codec => _$this._codec;
  set codec(String? codec) => _$this._codec = codec;

  FileMetadataBuilder? _metadata;
  FileMetadataBuilder get metadata =>
      _$this._metadata ??= new FileMetadataBuilder();
  set metadata(FileMetadataBuilder? metadata) => _$this._metadata = metadata;

  AudioTrackBuilder() {
    AudioTrack._defaults(this);
  }

  AudioTrackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _startOffset = $v.startOffset;
      _duration = $v.duration;
      _title = $v.title;
      _contentUrl = $v.contentUrl;
      _mimeType = $v.mimeType;
      _codec = $v.codec;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudioTrack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AudioTrack;
  }

  @override
  void update(void Function(AudioTrackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AudioTrack build() => _build();

  _$AudioTrack _build() {
    _$AudioTrack _$result;
    try {
      _$result = _$v ??
          new _$AudioTrack._(
              index: index,
              startOffset: startOffset,
              duration: duration,
              title: title,
              contentUrl: contentUrl,
              mimeType: mimeType,
              codec: codec,
              metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AudioTrack', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
