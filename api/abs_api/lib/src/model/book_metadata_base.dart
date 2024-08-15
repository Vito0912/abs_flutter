//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_metadata_base.g.dart';

/// The base book metadata object for minified, normal, and extended schemas to inherit from.
///
/// Properties:
/// * [title] - The title of the book. Will be null if unknown.
/// * [subtitle] - The subtitle of the book. Will be null if there is no subtitle.
/// * [genres] - The genres of the book.
/// * [publishedYear] - The year the book was published. Will be null if unknown.
/// * [publishedDate] - The date the book was published. Will be null if unknown.
/// * [publisher] - The publisher of the book. Will be null if unknown.
/// * [description] - A description for the book. Will be null if empty.
/// * [isbn] - The ISBN of the book. Will be null if unknown.
/// * [asin] - The ASIN of the book. Will be null if unknown.
/// * [language] - The language of the book. Will be null if unknown.
/// * [explicit] - Whether the book has been marked as explicit.
/// * [abridged] - Whether the book is abridged.
/// * [authorName] - The name of the author.
/// * [narratorName] - The name of the book's narrator(s).
/// * [seriesName] - The name of the series.
@BuiltValue(instantiable: false)
abstract class BookMetadataBase {
  /// The title of the book. Will be null if unknown.
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The subtitle of the book. Will be null if there is no subtitle.
  @BuiltValueField(wireName: r'subtitle')
  String? get subtitle;

  /// The genres of the book.
  @BuiltValueField(wireName: r'genres')
  BuiltList<String>? get genres;

  /// The year the book was published. Will be null if unknown.
  @BuiltValueField(wireName: r'publishedYear')
  String? get publishedYear;

  /// The date the book was published. Will be null if unknown.
  @BuiltValueField(wireName: r'publishedDate')
  String? get publishedDate;

  /// The publisher of the book. Will be null if unknown.
  @BuiltValueField(wireName: r'publisher')
  String? get publisher;

  /// A description for the book. Will be null if empty.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The ISBN of the book. Will be null if unknown.
  @BuiltValueField(wireName: r'isbn')
  String? get isbn;

  /// The ASIN of the book. Will be null if unknown.
  @BuiltValueField(wireName: r'asin')
  String? get asin;

  /// The language of the book. Will be null if unknown.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Whether the book has been marked as explicit.
  @BuiltValueField(wireName: r'explicit')
  bool? get explicit;

  /// Whether the book is abridged.
  @BuiltValueField(wireName: r'abridged')
  bool? get abridged;

  /// The name of the author.
  @BuiltValueField(wireName: r'authorName')
  String? get authorName;

  /// The name of the book's narrator(s).
  @BuiltValueField(wireName: r'narratorName')
  String? get narratorName;

  /// The name of the series.
  @BuiltValueField(wireName: r'seriesName')
  String? get seriesName;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookMetadataBase> get serializer =>
      _$BookMetadataBaseSerializer();
}

class _$BookMetadataBaseSerializer
    implements PrimitiveSerializer<BookMetadataBase> {
  @override
  final Iterable<Type> types = const [BookMetadataBase];

  @override
  final String wireName = r'BookMetadataBase';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookMetadataBase object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.publishedYear != null) {
      yield r'publishedYear';
      yield serializers.serialize(
        object.publishedYear,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publishedDate != null) {
      yield r'publishedDate';
      yield serializers.serialize(
        object.publishedDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.publisher != null) {
      yield r'publisher';
      yield serializers.serialize(
        object.publisher,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isbn != null) {
      yield r'isbn';
      yield serializers.serialize(
        object.isbn,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.asin != null) {
      yield r'asin';
      yield serializers.serialize(
        object.asin,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.explicit != null) {
      yield r'explicit';
      yield serializers.serialize(
        object.explicit,
        specifiedType: const FullType(bool),
      );
    }
    if (object.abridged != null) {
      yield r'abridged';
      yield serializers.serialize(
        object.abridged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.authorName != null) {
      yield r'authorName';
      yield serializers.serialize(
        object.authorName,
        specifiedType: const FullType(String),
      );
    }
    if (object.narratorName != null) {
      yield r'narratorName';
      yield serializers.serialize(
        object.narratorName,
        specifiedType: const FullType(String),
      );
    }
    if (object.seriesName != null) {
      yield r'seriesName';
      yield serializers.serialize(
        object.seriesName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BookMetadataBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  BookMetadataBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
        specifiedType: FullType($BookMetadataBase)) as $BookMetadataBase;
  }
}

/// a concrete implementation of [BookMetadataBase], since [BookMetadataBase] is not instantiable
@BuiltValue(instantiable: true)
abstract class $BookMetadataBase
    implements
        BookMetadataBase,
        Built<$BookMetadataBase, $BookMetadataBaseBuilder> {
  $BookMetadataBase._();

  factory $BookMetadataBase(
      [void Function($BookMetadataBaseBuilder)? updates]) = _$$BookMetadataBase;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($BookMetadataBaseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$BookMetadataBase> get serializer =>
      _$$BookMetadataBaseSerializer();
}

class _$$BookMetadataBaseSerializer
    implements PrimitiveSerializer<$BookMetadataBase> {
  @override
  final Iterable<Type> types = const [$BookMetadataBase, _$$BookMetadataBase];

  @override
  final String wireName = r'$BookMetadataBase';

  @override
  Object serialize(
    Serializers serializers,
    $BookMetadataBase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(BookMetadataBase))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BookMetadataBaseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.genres.replace(valueDes);
          break;
        case r'publishedYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publishedYear = valueDes;
          break;
        case r'publishedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publishedDate = valueDes;
          break;
        case r'publisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publisher = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'isbn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.isbn = valueDes;
          break;
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.explicit = valueDes;
          break;
        case r'abridged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.abridged = valueDes;
          break;
        case r'authorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorName = valueDes;
          break;
        case r'narratorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narratorName = valueDes;
          break;
        case r'seriesName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.seriesName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $BookMetadataBase deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $BookMetadataBaseBuilder();
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
