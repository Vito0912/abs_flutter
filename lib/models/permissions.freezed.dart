// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permissions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool? get download => throw _privateConstructorUsedError;
  bool? get delete => throw _privateConstructorUsedError;
  bool? get upload => throw _privateConstructorUsedError;
  bool? get accessAllLibraries => throw _privateConstructorUsedError;
  bool? get accessAllTags => throw _privateConstructorUsedError;
  bool? get accessExplicitContent => throw _privateConstructorUsedError;
  bool? get update_ => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call(
      {bool? download,
      bool? delete,
      bool? upload,
      bool? accessAllLibraries,
      bool? accessAllTags,
      bool? accessExplicitContent,
      bool? update_});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? download = freezed,
    Object? delete = freezed,
    Object? upload = freezed,
    Object? accessAllLibraries = freezed,
    Object? accessAllTags = freezed,
    Object? accessExplicitContent = freezed,
    Object? update_ = freezed,
  }) {
    return _then(_value.copyWith(
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
      upload: freezed == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessAllLibraries: freezed == accessAllLibraries
          ? _value.accessAllLibraries
          : accessAllLibraries // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessAllTags: freezed == accessAllTags
          ? _value.accessAllTags
          : accessAllTags // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessExplicitContent: freezed == accessExplicitContent
          ? _value.accessExplicitContent
          : accessExplicitContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      update_: freezed == update_
          ? _value.update_
          : update_ // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsImplCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$PermissionsImplCopyWith(
          _$PermissionsImpl value, $Res Function(_$PermissionsImpl) then) =
      __$$PermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? download,
      bool? delete,
      bool? upload,
      bool? accessAllLibraries,
      bool? accessAllTags,
      bool? accessExplicitContent,
      bool? update_});
}

/// @nodoc
class __$$PermissionsImplCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$PermissionsImpl>
    implements _$$PermissionsImplCopyWith<$Res> {
  __$$PermissionsImplCopyWithImpl(
      _$PermissionsImpl _value, $Res Function(_$PermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? download = freezed,
    Object? delete = freezed,
    Object? upload = freezed,
    Object? accessAllLibraries = freezed,
    Object? accessAllTags = freezed,
    Object? accessExplicitContent = freezed,
    Object? update_ = freezed,
  }) {
    return _then(_$PermissionsImpl(
      download: freezed == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as bool?,
      delete: freezed == delete
          ? _value.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as bool?,
      upload: freezed == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessAllLibraries: freezed == accessAllLibraries
          ? _value.accessAllLibraries
          : accessAllLibraries // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessAllTags: freezed == accessAllTags
          ? _value.accessAllTags
          : accessAllTags // ignore: cast_nullable_to_non_nullable
              as bool?,
      accessExplicitContent: freezed == accessExplicitContent
          ? _value.accessExplicitContent
          : accessExplicitContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      update_: freezed == update_
          ? _value.update_
          : update_ // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsImpl with DiagnosticableTreeMixin implements _Permissions {
  _$PermissionsImpl(
      {this.download,
      this.delete,
      this.upload,
      this.accessAllLibraries,
      this.accessAllTags,
      this.accessExplicitContent,
      this.update_});

  factory _$PermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsImplFromJson(json);

  @override
  final bool? download;
  @override
  final bool? delete;
  @override
  final bool? upload;
  @override
  final bool? accessAllLibraries;
  @override
  final bool? accessAllTags;
  @override
  final bool? accessExplicitContent;
  @override
  final bool? update_;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Permissions(download: $download, delete: $delete, upload: $upload, accessAllLibraries: $accessAllLibraries, accessAllTags: $accessAllTags, accessExplicitContent: $accessExplicitContent, update_: $update_)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Permissions'))
      ..add(DiagnosticsProperty('download', download))
      ..add(DiagnosticsProperty('delete', delete))
      ..add(DiagnosticsProperty('upload', upload))
      ..add(DiagnosticsProperty('accessAllLibraries', accessAllLibraries))
      ..add(DiagnosticsProperty('accessAllTags', accessAllTags))
      ..add(DiagnosticsProperty('accessExplicitContent', accessExplicitContent))
      ..add(DiagnosticsProperty('update_', update_));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsImpl &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.delete, delete) || other.delete == delete) &&
            (identical(other.upload, upload) || other.upload == upload) &&
            (identical(other.accessAllLibraries, accessAllLibraries) ||
                other.accessAllLibraries == accessAllLibraries) &&
            (identical(other.accessAllTags, accessAllTags) ||
                other.accessAllTags == accessAllTags) &&
            (identical(other.accessExplicitContent, accessExplicitContent) ||
                other.accessExplicitContent == accessExplicitContent) &&
            (identical(other.update_, update_) || other.update_ == update_));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, download, delete, upload,
      accessAllLibraries, accessAllTags, accessExplicitContent, update_);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      __$$PermissionsImplCopyWithImpl<_$PermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsImplToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  factory _Permissions(
      {final bool? download,
      final bool? delete,
      final bool? upload,
      final bool? accessAllLibraries,
      final bool? accessAllTags,
      final bool? accessExplicitContent,
      final bool? update_}) = _$PermissionsImpl;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$PermissionsImpl.fromJson;

  @override
  bool? get download;
  @override
  bool? get delete;
  @override
  bool? get upload;
  @override
  bool? get accessAllLibraries;
  @override
  bool? get accessAllTags;
  @override
  bool? get accessExplicitContent;
  @override
  bool? get update_;
  @override
  @JsonKey(ignore: true)
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
