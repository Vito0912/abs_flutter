import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/home/components/download_info_button.dart';
import 'package:abs_flutter/features/library/item/book/metainfo.dart';
import 'package:abs_flutter/features/library/item/book/tags_description.dart';
import 'package:abs_flutter/features/library/item/components/add_to_queue_button.dart';
import 'package:abs_flutter/features/library/item/components/download_button.dart';
import 'package:abs_flutter/features/library/item/components/play_button.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/models/user.dart' as m;
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'book/expandable_description.dart';

class BookView extends ConsumerWidget {
  const BookView({super.key, required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(itemProvider(itemId));
    final currentUser = ref.read(currentUserProvider);

    log('Building item view for $itemId', name: 'item_view');

    return item.when(
      data: (item) {
        final progressNotifier = ref.read(progressProvider.notifier);
        progressNotifier.getProgressWithLibraryItem(itemId);
        return item == null
            ? const ErrorText('Error: Item not found')
            : _buildContent(context, ref, item, currentUser!);
      },
      loading: () => Center(child: PlatformCircularProgressIndicator()),
      error: (error, _) => ErrorText('Error: $error'),
    );
  }

  Widget _buildContent(
      BuildContext context,
      WidgetRef ref,
      LibraryItemBase castItem,
      m.User currentUser) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(castItem.media!.metadata!.title!),
        trailingActions: const [
          DownloadInfoButton(
            show: true,
          )
        ],
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
                  AlbumImage(
                    castItem.id!,
                    size: 150,
                  ),
                  const SizedBox(height: 16.0),
                  _buildTextContent(
                      context, castItem, currentUser),
                  const SizedBox(height: 16.0),
                  TagsDescription(castItem: castItem),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextContent(BuildContext context, LibraryItemBase castItem, m.User user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          castItem.media!.metadata!.title!,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (castItem.media!.metadata!.subtitle != null) ...[
          PlatformText(
            castItem.media!.metadata!.subtitle!,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
        const SizedBox(height: 8.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PlayButton(itemId: castItem.id!, mediaType: 'book'),
              const VerticalDivider(),
              DownloadButton(
                libraryItem: castItem,
                user: user,
              ),
              const VerticalDivider(),
              AddQueueButton(item: castItem),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        if (castItem.media!.metadata!.description != null) ...[
          ExpandableDescription(
              description: castItem.media!.metadata!.description!),
        ],
        Metainfo(castItem: castItem),
      ],
    );
  }
}
