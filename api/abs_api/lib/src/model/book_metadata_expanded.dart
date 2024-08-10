//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:abs_api/src/model/book_metadata_base.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'book_metadata_expanded.g.dart';

/// BookMetadataExpanded
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
/// * [titleIgnorePrefix] - The title of the book with any prefix moved to the end.
/// * [authorName] - The name of the book's author(s).
/// * [authorNameLF] - The name of the book's author(s) with last names first.
/// * [narratorName] - The name of the audiobook's narrator(s).
/// * [seriesName] - The name of the book's series.
@BuiltValue()
abstract class BookMetadataExpanded
    implements
        BookMetadataBase,
        Built<BookMetadataExpanded, BookMetadataExpandedBuilder> {
  /// The name of the audiobook's narrator(s).
  @BuiltValueField(wireName: r'narratorName')
  String? get narratorName;

  /// The name of the book's author(s).
  @BuiltValueField(wireName: r'authorName')
  String? get authorName;

  /// The name of the book's author(s) with last names first.
  @BuiltValueField(wireName: r'authorNameLF')
  String? get authorNameLF;

  /// The name of the book's series.
  @BuiltValueField(wireName: r'seriesName')
  String? get seriesName;

  /// The title of the book with any prefix moved to the end.
  @BuiltValueField(wireName: r'titleIgnorePrefix')
  String? get titleIgnorePrefix;

  BookMetadataExpanded._();

  factory BookMetadataExpanded([void updates(BookMetadataExpandedBuilder b)]) =
      _$BookMetadataExpanded;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BookMetadataExpandedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BookMetadataExpanded> get serializer =>
      _$BookMetadataExpandedSerializer();
}

class _$BookMetadataExpandedSerializer
    implements PrimitiveSerializer<BookMetadataExpanded> {
  @override
  final Iterable<Type> types = const [
    BookMetadataExpanded,
    _$BookMetadataExpanded
  ];

  @override
  final String wireName = r'BookMetadataExpanded';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BookMetadataExpanded object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorNameLF != null) {
      yield r'authorNameLF';
      yield serializers.serialize(
        object.authorNameLF,
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
    if (object.isbn != null) {
      yield r'isbn';
      yield serializers.serialize(
        object.isbn,
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
    if (object.abridged != null) {
      yield r'abridged';
      yield serializers.serialize(
        object.abridged,
        specifiedType: const FullType(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.titleIgnorePrefix != null) {
      yield r'titleIgnorePrefix';
      yield serializers.serialize(
        object.titleIgnorePrefix,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.narratorName != null) {
      yield r'narratorName';
      yield serializers.serialize(
        object.narratorName,
        specifiedType: const FullType(String),
      );
    }
    if (object.explicit != null) {
      yield r'explicit';
      yield serializers.serialize(
        object.explicit,
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
    if (object.genres != null) {
      yield r'genres';
      yield serializers.serialize(
        object.genres,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.subtitle != null) {
      yield r'subtitle';
      yield serializers.serialize(
        object.subtitle,
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
    if (object.asin != null) {
      yield r'asin';
      yield serializers.serialize(
        object.asin,
        specifiedType: const FullType.nullable(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    BookMetadataExpanded object, {
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
    required BookMetadataExpandedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorNameLF':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorNameLF = valueDes;
          break;
        case r'seriesName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.seriesName = valueDes;
          break;
        case r'isbn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.isbn = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'abridged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.abridged = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'titleIgnorePrefix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titleIgnorePrefix = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'narratorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narratorName = valueDes;
          break;
        case r'explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.explicit = valueDes;
          break;
        case r'authorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorName = valueDes;
          break;
        case r'genres':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.genres.replace(valueDes);
          break;
        case r'subtitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.subtitle = valueDes;
          break;
        case r'publisher':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.publisher = valueDes;
          break;
        case r'asin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.asin = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BookMetadataExpanded deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BookMetadataExpandedBuilder();
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
