// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Error extends Error {
  @override
  final String? message;

  factory _$Error([void Function(ErrorBuilder)? updates]) =>
      (new ErrorBuilder()..update(updates))._build();

  _$Error._({this.message}) : super._();

  @override
  Error rebuild(void Function(ErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorBuilder toBuilder() => new ErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Error && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Error')..add('message', message))
        .toString();
  }
}

class ErrorBuilder implements Builder<Error, ErrorBuilder> {
  _$Error? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ErrorBuilder() {
    Error._defaults(this);
  }

  ErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Error other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Error;
  }

  @override
  void update(void Function(ErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Error build() => _build();

  _$Error _build() {
    final _$result = _$v ?? new _$Error._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
