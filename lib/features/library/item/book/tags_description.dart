import 'package:abs_flutter/api/library_items/author.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/library_items/series.dart';
import 'package:abs_flutter/features/library/item/book/chip_section.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:flutter/material.dart';

class TagsDescription extends StatelessWidget {
  const TagsDescription({super.key, required this.castItem});

  final LibraryItem castItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipSection(
          filterKey: 'authors',
          label: S.of(context).authors,
          items: _mapAuthors(
              castItem.media?.bookMedia?.metadata.authors?.toList()),
        ),
        ChipSection(
          filterKey: 'narrators',
          label: S.of(context).narrators,
          items:
              _mapList(castItem.media?.bookMedia?.metadata.narrators?.toList()),
        ),
        ChipSection(
          label: S.of(context).genres,
          items: _mapList(castItem.media?.bookMedia?.metadata.genres?.toList()),
          filterKey: 'genres',
        ),
        ChipSection(
          label: S.of(context).tags,
          items: _mapList(castItem.media?.bookMedia?.tags?.toList()),
          filterKey: 'tags',
        ),
        if (castItem.mediaType != null && castItem.mediaType == Constants.BOOK)
          ChipSection(
            label: S.of(context).series,
            items: _mapSeries(
                castItem.media?.bookMedia?.metadata.series?.toList()),
            filterKey: 'series',
          )
      ],
    );
  }

  Map<String, String> _mapList(List<String>? list) {
    if (list == null) return {};
    return {for (var item in list) item: item};
  }

  Map<String, String> _mapAuthors(List<Author>? authors) {
    if (authors == null) return {};
    return {for (var author in authors) author.id!: author.name!};
  }

  Map<String, String> _mapSeries(List<Series>? series) {
    if (series == null) return {};
    return {
      for (var s in series)
        s.id ?? '': s.sequence != null ? '${s.name} #${s.sequence}' : s.name
    };
  }
}
