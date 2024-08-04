// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ereader_device_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EreaderDeviceObjectAvailabilityOptionEnum
    _$ereaderDeviceObjectAvailabilityOptionEnum_adminOrUp =
    const EreaderDeviceObjectAvailabilityOptionEnum._('adminOrUp');
const EreaderDeviceObjectAvailabilityOptionEnum
    _$ereaderDeviceObjectAvailabilityOptionEnum_userOrUp =
    const EreaderDeviceObjectAvailabilityOptionEnum._('userOrUp');
const EreaderDeviceObjectAvailabilityOptionEnum
    _$ereaderDeviceObjectAvailabilityOptionEnum_guestOrUp =
    const EreaderDeviceObjectAvailabilityOptionEnum._('guestOrUp');
const EreaderDeviceObjectAvailabilityOptionEnum
    _$ereaderDeviceObjectAvailabilityOptionEnum_specificUsers =
    const EreaderDeviceObjectAvailabilityOptionEnum._('specificUsers');

EreaderDeviceObjectAvailabilityOptionEnum
    _$ereaderDeviceObjectAvailabilityOptionEnumValueOf(String name) {
  switch (name) {
    case 'adminOrUp':
      return _$ereaderDeviceObjectAvailabilityOptionEnum_adminOrUp;
    case 'userOrUp':
      return _$ereaderDeviceObjectAvailabilityOptionEnum_userOrUp;
    case 'guestOrUp':
      return _$ereaderDeviceObjectAvailabilityOptionEnum_guestOrUp;
    case 'specificUsers':
      return _$ereaderDeviceObjectAvailabilityOptionEnum_specificUsers;
    default:
      return _$ereaderDeviceObjectAvailabilityOptionEnum_specificUsers;
  }
}

final BuiltSet<EreaderDeviceObjectAvailabilityOptionEnum>
    _$ereaderDeviceObjectAvailabilityOptionEnumValues = new BuiltSet<
        EreaderDeviceObjectAvailabilityOptionEnum>(const <EreaderDeviceObjectAvailabilityOptionEnum>[
  _$ereaderDeviceObjectAvailabilityOptionEnum_adminOrUp,
  _$ereaderDeviceObjectAvailabilityOptionEnum_userOrUp,
  _$ereaderDeviceObjectAvailabilityOptionEnum_guestOrUp,
  _$ereaderDeviceObjectAvailabilityOptionEnum_specificUsers,
]);

Serializer<EreaderDeviceObjectAvailabilityOptionEnum>
    _$ereaderDeviceObjectAvailabilityOptionEnumSerializer =
    new _$EreaderDeviceObjectAvailabilityOptionEnumSerializer();

class _$EreaderDeviceObjectAvailabilityOptionEnumSerializer
    implements PrimitiveSerializer<EreaderDeviceObjectAvailabilityOptionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'adminOrUp': 'adminOrUp',
    'userOrUp': 'userOrUp',
    'guestOrUp': 'guestOrUp',
    'specificUsers': 'specificUsers',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'adminOrUp': 'adminOrUp',
    'userOrUp': 'userOrUp',
    'guestOrUp': 'guestOrUp',
    'specificUsers': 'specificUsers',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EreaderDeviceObjectAvailabilityOptionEnum
  ];
  @override
  final String wireName = 'EreaderDeviceObjectAvailabilityOptionEnum';

  @override
  Object serialize(Serializers serializers,
          EreaderDeviceObjectAvailabilityOptionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EreaderDeviceObjectAvailabilityOptionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EreaderDeviceObjectAvailabilityOptionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EreaderDeviceObject extends EreaderDeviceObject {
  @override
  final String name;
  @override
  final String email;
  @override
  final EreaderDeviceObjectAvailabilityOptionEnum availabilityOption;
  @override
  final BuiltList<String>? users;

  factory _$EreaderDeviceObject(
          [void Function(EreaderDeviceObjectBuilder)? updates]) =>
      (new EreaderDeviceObjectBuilder()..update(updates))._build();

  _$EreaderDeviceObject._(
      {required this.name,
      required this.email,
      required this.availabilityOption,
      this.users})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'EreaderDeviceObject', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'EreaderDeviceObject', 'email');
    BuiltValueNullFieldError.checkNotNull(
        availabilityOption, r'EreaderDeviceObject', 'availabilityOption');
  }

  @override
  EreaderDeviceObject rebuild(
          void Function(EreaderDeviceObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EreaderDeviceObjectBuilder toBuilder() =>
      new EreaderDeviceObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EreaderDeviceObject &&
        name == other.name &&
        email == other.email &&
        availabilityOption == other.availabilityOption &&
        users == other.users;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, availabilityOption.hashCode);
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EreaderDeviceObject')
          ..add('name', name)
          ..add('email', email)
          ..add('availabilityOption', availabilityOption)
          ..add('users', users))
        .toString();
  }
}

class EreaderDeviceObjectBuilder
    implements Builder<EreaderDeviceObject, EreaderDeviceObjectBuilder> {
  _$EreaderDeviceObject? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  EreaderDeviceObjectAvailabilityOptionEnum? _availabilityOption;
  EreaderDeviceObjectAvailabilityOptionEnum? get availabilityOption =>
      _$this._availabilityOption;
  set availabilityOption(
          EreaderDeviceObjectAvailabilityOptionEnum? availabilityOption) =>
      _$this._availabilityOption = availabilityOption;

  ListBuilder<String>? _users;
  ListBuilder<String> get users => _$this._users ??= new ListBuilder<String>();
  set users(ListBuilder<String>? users) => _$this._users = users;

  EreaderDeviceObjectBuilder() {
    EreaderDeviceObject._defaults(this);
  }

  EreaderDeviceObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _availabilityOption = $v.availabilityOption;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EreaderDeviceObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EreaderDeviceObject;
  }

  @override
  void update(void Function(EreaderDeviceObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EreaderDeviceObject build() => _build();

  _$EreaderDeviceObject _build() {
    _$EreaderDeviceObject _$result;
    try {
      _$result = _$v ??
          new _$EreaderDeviceObject._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'EreaderDeviceObject', 'name'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'EreaderDeviceObject', 'email'),
              availabilityOption: BuiltValueNullFieldError.checkNotNull(
                  availabilityOption,
                  r'EreaderDeviceObject',
                  'availabilityOption'),
              users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EreaderDeviceObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
