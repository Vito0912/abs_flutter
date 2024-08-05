import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/play_button.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemView extends ConsumerWidget {
  const ItemView({super.key, required this.itemId, required this.mediaType});

  final String itemId;
  final String mediaType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProvider(itemId));
    final currentUser = ref.watch(currentUserProvider);
    final progress = ref.read(progressProvider);
    progress.getProgressWithLibraryItem(itemId);
    final mediaProgress = ref.watch(mediaProgressProvider);

    return item.when(
      data: (item) {
        if (item == null) {
          return Center(child: PlatformText('Error: Item not found'));
        }

        late final LibraryItemBase castItem;

        if (item.data!.oneOf.value is LibraryItemBase) {
          castItem = item.data!.oneOf.value as LibraryItemBase;
        } else {
          return Center(child: PlatformText('Error: Invalid item type'));
        }

        return PlatformScaffold(
          appBar: PlatformAppBar(
            title: PlatformText(castItem.media!.metadata!.title!),
          ),
          body: SelectionArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 800,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                            ),
                          ],
                        ),
                        width: 150, // Reduced width for the image container
                        height: 150, // Reduced height for the image container
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: CachedNetworkImage(
                            imageUrl:
                                '${currentUser!.server!.url}/api/items/$itemId/cover?token=${currentUser.token}',
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                PlatformCircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      PlatformText(
                        castItem.media!.metadata!.title!,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (castItem.media!.metadata!.subtitle != null) ...[
                        const SizedBox(height: 8.0),
                        PlatformText(
                          castItem.media!.metadata!.subtitle!,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                      const SizedBox(height: 8.0),
                      PlayButton(itemId: itemId),
                      const SizedBox(height: 16.0),
                      if (castItem.media!.metadata!.description != null) ...[
                        ExpandableDescription(
                            description:
                                castItem.media!.metadata!.description!),
                      ],
                      const SizedBox(height: 8.0),
                      if (castItem.media?.audioFiles != null) ...[
                        PlatformText(
                          S.of(context).itemLength(
                              Duration(
                                      seconds: castItem.media!.audioFiles!
                                          .fold<int>(
                                              0,
                                              (previousValue, element) =>
                                                  previousValue +
                                                  element.duration!.toInt()))
                                  .inHours
                                  .toString(),
                              Duration(
                                      seconds: castItem.media!.audioFiles!
                                          .fold<int>(
                                              0,
                                              (previousValue, element) =>
                                                  previousValue +
                                                  element.duration!.toInt()))
                                  .inMinutes
                                  .remainder(60)
                                  .toString()),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                      ...[
                        const SizedBox(height: 8.0),
                        PlatformText(
                          S.of(context).itemProgress(((mediaProgress
                                          .where((element) =>
                                              element.libraryItemId == itemId)
                                          .firstOrNull
                                          ?.progress ??
                                      0) *
                                  100)
                              .toString()),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                      const SizedBox(height: 8.0),
                      if (castItem.media!.metadata!.publishedYear != null) ...[
                        PlatformText(
                          S.of(context).itemPublishedYear(castItem
                              .media!.metadata!.publishedYear
                              .toString()),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                      if (castItem.media!.chapters != null) ...[
                        const SizedBox(height: 8.0),
                        PlatformText(
                          S.of(context).itemNumChapters(
                              castItem.media!.chapters!.length.toString()),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                      const SizedBox(height: 16.0),
                      if (castItem.media!.metadata!.authors != null) ...[
                        _buildChipSection(
                            S.of(context).authors,
                            _authors(castItem.media!.metadata!.authors!
                                    .toList()) ??
                                []),
                      ],
                      const SizedBox(height: 8.0),
                      if (castItem.media!.metadata!.genres != null) ...[
                        _buildChipSection(S.of(context).genres,
                            castItem.media!.metadata!.genres!.toList()),
                      ],
                      const SizedBox(height: 8.0),
                      if (castItem.media!.tags != null) ...[
                        _buildChipSection(
                            S.of(context).tags, castItem.media!.tags!.toList()),
                      ],
                      const SizedBox(height: 8.0),
                      if (castItem.media!.metadata!.series != null) ...[
                        _buildChipSection(
                            S.of(context).series,
                            castItem.media!.metadata!.series!
                                .map((s) => '${s.name} #${s.sequence}')
                                .toList()),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      loading: () => Center(child: PlatformCircularProgressIndicator()),
      error: (error, _) => Center(child: PlatformText('Error: $error')),
    );
  }

  List<String>? _authors(List<AuthorMinified>? authors) {
    if (authors == null || authors.isEmpty) {
      return null;
    }
    List<String>? authorNames = [];
    for (var author in authors) {
      authorNames.add(author.name!);
    }
    return authorNames;
  }

  Widget _buildChipSection(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          '$label:',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: items
              .map((item) => Chip(
                    label: Text(item),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    labelStyle: TextStyle(fontSize: 12.0),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

class ExpandableDescription extends StatefulWidget {
  final String description;

  const ExpandableDescription({Key? key, required this.description})
      : super(key: key);

  @override
  _ExpandableDescriptionState createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final maxLines = expanded ? null : 3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          S.of(context).description,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () => setState(() => expanded = !expanded),
          child: PlatformText(
            widget.description,
            maxLines: maxLines,
          ),
        ),
        (!expanded)
            ? PlatformTextButton(
                onPressed: () => setState(() => expanded = true),
                child: PlatformText(S.of(context).readMore),
              )
            : PlatformTextButton(
                onPressed: () => setState(() => expanded = false),
                child: PlatformText(S.of(context).readLess),
              ),
      ],
    );
  }
}
