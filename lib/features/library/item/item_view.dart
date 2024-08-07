import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/components/chip_section.dart';
import 'package:abs_flutter/features/library/item/components/download_button.dart';
import 'package:abs_flutter/features/library/item/components/expandable_description.dart';
import 'package:abs_flutter/features/library/item/components/play_button.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/models/user.dart' as m;
import 'package:abs_flutter/widgets/error_text.dart';
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
    final currentUser = ref.read(currentUserProvider);
    final progress = ref.read(progressProvider);
    progress.getProgressWithLibraryItem(itemId);
    final mediaProgress = ref.watch(mediaProgressProvider);

    return item.when(
      data: (item) => item == null
          ? const ErrorText('Error: Item not found')
          : _buildContent(
              context,
              ref,
              item.data!.oneOf.value as LibraryItemBase,
              currentUser!,
              mediaProgress),
      loading: () => Center(child: PlatformCircularProgressIndicator()),
      error: (error, _) => ErrorText('Error: $error'),
    );
  }

  Widget _buildContent(
      BuildContext context,
      WidgetRef ref,
      LibraryItemBase castItem,
      m.User currentUser,
      List<MediaProgress> mediaProgress) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(castItem.media!.metadata!.title!),
      ),
      body: SelectionArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImage(currentUser, castItem),
                  const SizedBox(height: 16.0),
                  _buildTextContent(context, castItem, mediaProgress),
                  const SizedBox(height: 16.0),
                  _buildChipSections(context, castItem),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(m.User currentUser, LibraryItemBase castItem) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      width: 150,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: CachedNetworkImage(
          imageUrl:
              '${currentUser.server!.url}/api/items/${castItem.id}/cover?token=${currentUser.token}',
          fit: BoxFit.cover,
          placeholder: (context, url) => PlatformCircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context, LibraryItemBase castItem,
      List<MediaProgress> mediaProgress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          castItem.media!.metadata!.title!,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        if (castItem.media!.metadata!.subtitle != null) ...[
          const SizedBox(height: 8.0),
          PlatformText(
            castItem.media!.metadata!.subtitle!,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
        ],
        const SizedBox(height: 8.0),
        Row(

          children: [
            PlayButton(itemId: castItem.id!),
            const VerticalDivider(),
            DownloadButton(itemId: castItem.id!),
          ],
        ),
        const SizedBox(height: 16.0),
        if (castItem.media!.metadata!.description != null) ...[
          ExpandableDescription(
              description: castItem.media!.metadata!.description!),
        ],
        const SizedBox(height: 8.0),
        if (castItem.media?.audioFiles != null) ...[
          PlatformText(
            S.of(context).itemLength(
                  _totalHours(castItem.media!.audioFiles!.toList()).toString(),
                  _totalMinutes(castItem.media!.audioFiles!.toList())
                      .toString(),
                ),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        const SizedBox(height: 8.0),
        PlatformText(
          S.of(context).itemProgress(
              _progressPercentage(mediaProgress, castItem.id!).toString()),
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 8.0),
        if (castItem.media!.metadata!.publishedYear != null) ...[
          PlatformText(
            S.of(context).itemPublishedYear(
                castItem.media!.metadata!.publishedYear.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        if (castItem.media!.chapters != null) ...[
          const SizedBox(height: 8.0),
          PlatformText(
            S
                .of(context)
                .itemNumChapters(castItem.media!.chapters!.length.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ],
    );
  }

  Widget _buildChipSections(BuildContext context, LibraryItemBase castItem) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ChipSection(
          label: S.of(context).authors,
          items: _mapNames(castItem.media!.metadata!.authors!.toList()),
        ),
        ChipSection(
            label: S.of(context).genres,
            items: castItem.media!.metadata!.genres!.toList()),
        ChipSection(
            label: S.of(context).tags, items: castItem.media!.tags!.toList()),
        ChipSection(
          label: S.of(context).series,
          items: castItem.media!.metadata!.series!
              .map((s) => '${s.name} #${s.sequence}')
              .toList(),
        )
      ],
    );
  }

  List<String> _mapNames(List<AuthorMinified> authors) {
    return authors.map((author) => author.name!).toList();
  }

  int _totalHours(List<AudioFile> audioFiles) {
    return audioFiles.fold(0, (sum, file) => sum + file.duration!.toInt()) ~/
        3600;
  }

  int _totalMinutes(List<AudioFile> audioFiles) {
    return (audioFiles.fold(0, (sum, file) => sum + file.duration!.toInt()) %
            3600) ~/
        60;
  }

  double _progressPercentage(List<MediaProgress> mediaProgress, String itemId) {
    return (mediaProgress
                .firstWhere((element) => element.libraryItemId == itemId,
                    orElse: () => MediaProgress())
                .progress ??
            0) *
        100;
  }
}
