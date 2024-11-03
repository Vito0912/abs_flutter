import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/me/user.dart' as m;
import 'package:abs_flutter/features/home/components/download_info_button.dart';
import 'package:abs_flutter/features/library/item/book/metainfo.dart';
import 'package:abs_flutter/features/library/item/book/tags_description.dart';
import 'package:abs_flutter/features/library/item/components/add_to_queue_button.dart';
import 'package:abs_flutter/features/library/item/components/download_button.dart';
import 'package:abs_flutter/features/library/item/components/play_button.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:abs_flutter/widgets/error_page.dart';
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
        return (item == null || item.media?.bookMedia == null)
            ? ErrorPage(
                shortMessage: S.of(context).errorItemNotFound,
                longMessage: S.of(context).itemNotFoundDescription)
            : _buildContent(context, ref, item, currentUser!);
      },
      loading: () {
        final progressNotifier = ref.read(progressProvider.notifier);
        progressNotifier.getProgressWithLibraryItem(itemId);
        return Center(child: PlatformCircularProgressIndicator());
      },
      error: (error, track) {
        log("$error\n$track", name: 'item_view');
        return ErrorPage(
            shortMessage: S.of(context).errorItemNotFound,
            longMessage: error.toString());
      },
    );
  }

  Widget _buildContent(BuildContext context, WidgetRef ref,
      LibraryItem castItem, m.User currentUser) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(castItem.media!.bookMedia!.metadata.title!),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Stack(children: [
                      AlbumImage(
                        castItem.id,
                        size: 200,
                        withProgress: true,
                        barHeight: 6,
                      ),
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  _buildTextContent(context, castItem, currentUser),
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

  Widget _buildTextContent(
      BuildContext context, LibraryItem castItem, m.User user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          castItem.media!.bookMedia!.metadata.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        if (castItem.media!.bookMedia!.metadata.subtitle != null) ...[
          PlatformText(
            castItem.media!.bookMedia!.metadata.subtitle!,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
        const SizedBox(height: 8.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PlayButton(itemId: castItem.id, mediaType: 'book'),
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
        if (castItem.media!.bookMedia!.metadata.description != null) ...[
          ExpandableDescription(
              description: castItem.media!.bookMedia!.metadata.description!),
        ],
        Metainfo(castItem: castItem),
      ],
    );
  }
}
