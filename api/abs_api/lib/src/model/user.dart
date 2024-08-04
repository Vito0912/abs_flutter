//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:abs_api/src/model/permissions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/media_progress.dart';
import 'package:abs_api/src/model/bookmark.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// A user object which includes the user's ID, username, type, token, and media progress.
///
/// Properties:
/// * [id] - The ID of the user.
/// * [username] - The username to log in with.
/// * [type] - The type of the user.
/// * [token] - The token of the user.
/// * [mediaProgress] - The user's progress of media.
/// * [seriesHideFromContinueListening] - The IDs of series to hide from the user's \"Continue Series\" shelf.
/// * [bookmarks] - The user's bookmarks.
/// * [lastSeen] - The time (in ms since POSIX epoch) when the user was last seen.
/// * [isActive] - Whether the user is active.
/// * [isLocked] - Whether the user is locked.
/// * [createdAt] - The time (in ms since POSIX epoch) when was created.
/// * [permissions]
/// * [librariesAccessible] - The IDs of libraries the user has access to.
/// * [itemTagsSelected] - Tags applied to items.
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  /// The ID of the user.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// The username to log in with.
  @BuiltValueField(wireName: r'username')
  String? get username;

  /// The type of the user.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// The token of the user.
  @BuiltValueField(wireName: r'token')
  String? get token;

  /// The user's progress of media.
  @BuiltValueField(wireName: r'mediaProgress')
  BuiltList<MediaProgress>? get mediaProgress;

  /// The IDs of series to hide from the user's \"Continue Series\" shelf.
  @BuiltValueField(wireName: r'seriesHideFromContinueListening')
  BuiltList<String>? get seriesHideFromContinueListening;

  /// The user's bookmarks.
  @BuiltValueField(wireName: r'bookmarks')
  BuiltList<Bookmark>? get bookmarks;

  /// The time (in ms since POSIX epoch) when the user was last seen.
  @BuiltValueField(wireName: r'lastSeen')
  int? get lastSeen;

  /// Whether the user is active.
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  /// Whether the user is locked.
  @BuiltValueField(wireName: r'isLocked')
  bool? get isLocked;

  /// The time (in ms since POSIX epoch) when was created.
  @BuiltValueField(wireName: r'createdAt')
  int? get createdAt;

  @BuiltValueField(wireName: r'permissions')
  Permissions? get permissions;

  /// The IDs of libraries the user has access to.
  @BuiltValueField(wireName: r'librariesAccessible')
  BuiltList<String>? get librariesAccessible;

  /// Tags applied to items.
  @BuiltValueField(wireName: r'itemTagsSelected')
  BuiltList<String>? get itemTagsSelected;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
    if (object.mediaProgress != null) {
      yield r'mediaProgress';
      yield serializers.serialize(
        object.mediaProgress,
        specifiedType: const FullType(BuiltList, [FullType(MediaProgress)]),
      );
    }
    if (object.seriesHideFromContinueListening != null) {
      yield r'seriesHideFromContinueListening';
      yield serializers.serialize(
        object.seriesHideFromContinueListening,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.bookmarks != null) {
      yield r'bookmarks';
      yield serializers.serialize(
        object.bookmarks,
        specifiedType: const FullType(BuiltList, [FullType(Bookmark)]),
      );
    }
    if (object.lastSeen != null) {
      yield r'lastSeen';
      yield serializers.serialize(
        object.lastSeen,
        specifiedType: const FullType(int),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isLocked != null) {
      yield r'isLocked';
      yield serializers.serialize(
        object.isLocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(int),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType(Permissions),
      );
    }
    if (object.librariesAccessible != null) {
      yield r'librariesAccessible';
      yield serializers.serialize(
        object.librariesAccessible,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.itemTagsSelected != null) {
      yield r'itemTagsSelected';
      yield serializers.serialize(
        object.itemTagsSelected,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'mediaProgress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MediaProgress)]),
          ) as BuiltList<MediaProgress>;
          result.mediaProgress.replace(valueDes);
          break;
        case r'seriesHideFromContinueListening':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.seriesHideFromContinueListening.replace(valueDes);
          break;
        case r'bookmarks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Bookmark)]),
          ) as BuiltList<Bookmark>;
          result.bookmarks.replace(valueDes);
          break;
        case r'lastSeen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lastSeen = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'isLocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLocked = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.createdAt = valueDes;
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Permissions),
          ) as Permissions;
          result.permissions.replace(valueDes);
          break;
        case r'librariesAccessible':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.librariesAccessible.replace(valueDes);
          break;
        case r'itemTagsSelected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.itemTagsSelected.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
