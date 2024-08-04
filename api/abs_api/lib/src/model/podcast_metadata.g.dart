// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PodcastMetadata extends PodcastMetadata {
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? description;
  @override
  final DateTime? releaseDate;
  @override
  final BuiltList<String>? genres;
  @override
  final String? feedUrl;
  @override
  final String? imageUrl;
  @override
  final String? itunesPageUrl;
  @override
  final String? itunesId;
  @override
  final String? itunesArtistId;
  @override
  final bool? explicit;
  @override
  final String? language;
  @override
  final String? type;

  factory _$PodcastMetadata([void Function(PodcastMetadataBuilder)? updates]) =>
      (new PodcastMetadataBuilder()..update(updates))._build();

  _$PodcastMetadata._(
      {this.title,
      this.author,
      this.description,
      this.releaseDate,
      this.genres,
      this.feedUrl,
      this.imageUrl,
      this.itunesPageUrl,
      this.itunesId,
      this.itunesArtistId,
      this.explicit,
      this.language,
      this.type})
      : super._();

  @override
  PodcastMetadata rebuild(void Function(PodcastMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastMetadataBuilder toBuilder() =>
      new PodcastMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastMetadata &&
        title == other.title &&
        author == other.author &&
        description == other.description &&
        releaseDate == other.releaseDate &&
        genres == other.genres &&
        feedUrl == other.feedUrl &&
        imageUrl == other.imageUrl &&
        itunesPageUrl == other.itunesPageUrl &&
        itunesId == other.itunesId &&
        itunesArtistId == other.itunesArtistId &&
        explicit == other.explicit &&
        language == other.language &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, genres.hashCode);
    _$hash = $jc(_$hash, feedUrl.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, itunesPageUrl.hashCode);
    _$hash = $jc(_$hash, itunesId.hashCode);
    _$hash = $jc(_$hash, itunesArtistId.hashCode);
    _$hash = $jc(_$hash, explicit.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PodcastMetadata')
          ..add('title', title)
          ..add('author', author)
          ..add('description', description)
          ..add('releaseDate', releaseDate)
          ..add('genres', genres)
          ..add('feedUrl', feedUrl)
          ..add('imageUrl', imageUrl)
          ..add('itunesPageUrl', itunesPageUrl)
          ..add('itunesId', itunesId)
          ..add('itunesArtistId', itunesArtistId)
          ..add('explicit', explicit)
          ..add('language', language)
          ..add('type', type))
        .toString();
  }
}

class PodcastMetadataBuilder
    implements Builder<PodcastMetadata, PodcastMetadataBuilder> {
  _$PodcastMetadata? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _releaseDate;
  DateTime? get releaseDate => _$this._releaseDate;
  set releaseDate(DateTime? releaseDate) => _$this._releaseDate = releaseDate;

  ListBuilder<String>? _genres;
  ListBuilder<String> get genres =>
      _$this._genres ??= new ListBuilder<String>();
  set genres(ListBuilder<String>? genres) => _$this._genres = genres;

  String? _feedUrl;
  String? get feedUrl => _$this._feedUrl;
  set feedUrl(String? feedUrl) => _$this._feedUrl = feedUrl;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _itunesPageUrl;
  String? get itunesPageUrl => _$this._itunesPageUrl;
  set itunesPageUrl(String? itunesPageUrl) =>
      _$this._itunesPageUrl = itunesPageUrl;

  String? _itunesId;
  String? get itunesId => _$this._itunesId;
  set itunesId(String? itunesId) => _$this._itunesId = itunesId;

  String? _itunesArtistId;
  String? get itunesArtistId => _$this._itunesArtistId;
  set itunesArtistId(String? itunesArtistId) =>
      _$this._itunesArtistId = itunesArtistId;

  bool? _explicit;
  bool? get explicit => _$this._explicit;
  set explicit(bool? explicit) => _$this._explicit = explicit;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  PodcastMetadataBuilder() {
    PodcastMetadata._defaults(this);
  }

  PodcastMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _author = $v.author;
      _description = $v.description;
      _releaseDate = $v.releaseDate;
      _genres = $v.genres?.toBuilder();
      _feedUrl = $v.feedUrl;
      _imageUrl = $v.imageUrl;
      _itunesPageUrl = $v.itunesPageUrl;
      _itunesId = $v.itunesId;
      _itunesArtistId = $v.itunesArtistId;
      _explicit = $v.explicit;
      _language = $v.language;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PodcastMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastMetadata;
  }

  @override
  void update(void Function(PodcastMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastMetadata build() => _build();

  _$PodcastMetadata _build() {
    _$PodcastMetadata _$result;
    try {
      _$result = _$v ??
          new _$PodcastMetadata._(
              title: title,
              author: author,
              description: description,
              releaseDate: releaseDate,
              genres: _genres?.build(),
              feedUrl: feedUrl,
              imageUrl: imageUrl,
              itunesPageUrl: itunesPageUrl,
              itunesId: itunesId,
              itunesArtistId: itunesArtistId,
              explicit: explicit,
              language: language,
              type: type);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genres';
        _genres?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PodcastMetadata', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
