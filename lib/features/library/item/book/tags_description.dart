import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/book/chip_section.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';

class TagsDescription extends StatelessWidget {
  const TagsDescription({super.key, required this.castItem});

  final LibraryItemBase castItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipSection(
          filterKey: 'authors',
          label: S.of(context).authors,
          items: _mapAuthors(castItem.media?.metadata?.authors?.toList()),
        ),
        ChipSection(
          filterKey: 'narrators',
          label: S.of(context).narrators,
          items: _mapList(castItem.media?.metadata?.narrators?.toList()),
        ),
        ChipSection(
          label: S.of(context).genres,
          items: _mapList(castItem.media?.metadata?.genres?.toList()),
          filterKey: 'genres',
        ),
        ChipSection(
          label: S.of(context).tags,
          items: _mapList(castItem.media?.tags?.toList()),
          filterKey: 'tags',
        ),
        if (castItem.mediaType != null && castItem.mediaType == MediaType.book)
          ChipSection(
            label: S.of(context).series,
            items: _mapSeries(castItem.media?.metadata?.series?.toList()),
            filterKey: 'series',
          )
      ],
    );
  }

  Map<String, String> _mapList(List<String>? list) {
    if (list == null) return {};
    return {for (var item in list) item: item};
  }

  Map<String, String> _mapAuthors(List<AuthorMinified>? authors) {
    if (authors == null) return {};
    return {for (var author in authors) author.id!: author.name!};
  }

  Map<String, String> _mapSeries(List<SeriesSequence>? series) {
    if (series == null) return {};
    return {
      for (var s in series)
        s.id!: s.sequence != null ? '${s.name} #${s.sequence}' : s.name!
    };
  }
}
