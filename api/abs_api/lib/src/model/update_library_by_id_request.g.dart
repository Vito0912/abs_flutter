// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_library_by_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLibraryByIdRequest extends UpdateLibraryByIdRequest {
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

  factory _$UpdateLibraryByIdRequest(
          [void Function(UpdateLibraryByIdRequestBuilder)? updates]) =>
      (new UpdateLibraryByIdRequestBuilder()..update(updates))._build();

  _$UpdateLibraryByIdRequest._(
      {this.name,
      this.folders,
      this.displayOrder,
      this.icon,
      this.mediaType,
      this.provider,
      this.settings})
      : super._();

  @override
  UpdateLibraryByIdRequest rebuild(
          void Function(UpdateLibraryByIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLibraryByIdRequestBuilder toBuilder() =>
      new UpdateLibraryByIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLibraryByIdRequest &&
        name == other.name &&
        folders == other.folders &&
        displayOrder == other.displayOrder &&
        icon == other.icon &&
        mediaType == other.mediaType &&
        provider == other.provider &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, folders.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, mediaType.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateLibraryByIdRequest')
          ..add('name', name)
          ..add('folders', folders)
          ..add('displayOrder', displayOrder)
          ..add('icon', icon)
          ..add('mediaType', mediaType)
          ..add('provider', provider)
          ..add('settings', settings))
        .toString();
  }
}

class UpdateLibraryByIdRequestBuilder
    implements
        Builder<UpdateLibraryByIdRequest, UpdateLibraryByIdRequestBuilder> {
  _$UpdateLibraryByIdRequest? _$v;

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

  UpdateLibraryByIdRequestBuilder() {
    UpdateLibraryByIdRequest._defaults(this);
  }

  UpdateLibraryByIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _folders = $v.folders?.toBuilder();
      _displayOrder = $v.displayOrder;
      _icon = $v.icon;
      _mediaType = $v.mediaType;
      _provider = $v.provider;
      _settings = $v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLibraryByIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateLibraryByIdRequest;
  }

  @override
  void update(void Function(UpdateLibraryByIdRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLibraryByIdRequest build() => _build();

  _$UpdateLibraryByIdRequest _build() {
    _$UpdateLibraryByIdRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateLibraryByIdRequest._(
              name: name,
              folders: _folders?.build(),
              displayOrder: displayOrder,
              icon: icon,
              mediaType: mediaType,
              provider: provider,
              settings: _settings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'folders';
        _folders?.build();

        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateLibraryByIdRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
