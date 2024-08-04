// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_library.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModelLibrary extends ModelLibrary {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final BuiltList<Folder>? folders;
  @override
  final int? displayOrder;
  @override
  final String? icon;
  @override
  final String? mediaType;
  @override
  final String? provider;
  @override
  final LibrarySettings? settings;
  @override
  final int? createdAt;
  @override
  final int? lastUpdate;

  factory _$ModelLibrary([void Function(ModelLibraryBuilder)? updates]) =>
      (new ModelLibraryBuilder()..update(updates))._build();

  _$ModelLibrary._(
      {this.id,
      this.name,
      this.folders,
      this.displayOrder,
      this.icon,
      this.mediaType,
      this.provider,
      this.settings,
      this.createdAt,
      this.lastUpdate})
      : super._();

  @override
  ModelLibrary rebuild(void Function(ModelLibraryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelLibraryBuilder toBuilder() => new ModelLibraryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelLibrary &&
        id == other.id &&
        name == other.name &&
        folders == other.folders &&
        displayOrder == other.displayOrder &&
        icon == other.icon &&
        mediaType == other.mediaType &&
        provider == other.provider &&
        settings == other.settings &&
        createdAt == other.createdAt &&
        lastUpdate == other.lastUpdate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, folders.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, lastUpdate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelLibrary')
          ..add('id', id)
          ..add('name', name)
          ..add('folders', folders)
          ..add('displayOrder', displayOrder)
          ..add('icon', icon)
          ..add('mediaType', mediaType)
          ..add('provider', provider)
          ..add('settings', settings)
          ..add('createdAt', createdAt)
          ..add('lastUpdate', lastUpdate))
        .toString();
  }
}

class ModelLibraryBuilder
    implements Builder<ModelLibrary, ModelLibraryBuilder> {
  _$ModelLibrary? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<Folder>? _folders;
  ListBuilder<Folder> get folders =>
      _$this._folders ??= new ListBuilder<Folder>();
  set folders(ListBuilder<Folder>? folders) => _$this._folders = folders;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _mediaType;
  String? get mediaType => _$this._mediaType;
  set mediaType(String? mediaType) => _$this._mediaType = mediaType;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  LibrarySettingsBuilder? _settings;
  LibrarySettingsBuilder get settings =>
      _$this._settings ??= new LibrarySettingsBuilder();
  set settings(LibrarySettingsBuilder? settings) => _$this._settings = settings;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _lastUpdate;
  int? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(int? lastUpdate) => _$this._lastUpdate = lastUpdate;

  ModelLibraryBuilder() {
    ModelLibrary._defaults(this);
  }

  ModelLibraryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _folders = $v.folders?.toBuilder();
      _displayOrder = $v.displayOrder;
      _icon = $v.icon;
      _mediaType = $v.mediaType;
      _provider = $v.provider;
      _settings = $v.settings?.toBuilder();
      _createdAt = $v.createdAt;
      _lastUpdate = $v.lastUpdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelLibrary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelLibrary;
  }

  @override
  void update(void Function(ModelLibraryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelLibrary build() => _build();

  _$ModelLibrary _build() {
    _$ModelLibrary _$result;
    try {
      _$result = _$v ??
          new _$ModelLibrary._(
              id: id,
              name: name,
              folders: _folders?.build(),
              displayOrder: displayOrder,
              icon: icon,
              mediaType: mediaType,
              provider: provider,
              settings: _settings?.build(),
              createdAt: createdAt,
              lastUpdate: lastUpdate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'folders';
        _folders?.build();

        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelLibrary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
