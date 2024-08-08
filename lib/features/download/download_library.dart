import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DownloadLibrary extends ConsumerWidget {
  late List<DownloadInfo>? downloads;
  final String? libraryId;
  final String? libraryName;
  DownloadLibrary(
      {super.key, this.downloads, this.libraryId, this.libraryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    downloads ??= ref.watch(downloadListProvider);
    final List<DownloadInfo> libraryDownloads = [];
    if (libraryId != null) {
      libraryDownloads.addAll(
          downloads!.where((element) => element.libraryId == libraryId));
    } else {
      libraryDownloads.addAll(downloads!);
    }

    return libraryId != null
        ? PlatformScaffold(
            appBar: libraryId != null
                ? PlatformAppBar(
                    title: Text(libraryName ?? 'Downloads'),
                  )
                : null,
            body: _listBuilder(libraryDownloads, context, ref),
          )
        : _listBuilder(libraryDownloads, context, ref);
  }

  Widget _listBuilder(List<DownloadInfo> libraryDownloads, BuildContext context,
      WidgetRef ref) {
    return ListView.builder(
        itemCount: libraryDownloads.length,
        padding: const EdgeInsets.only(bottom: 8),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = libraryDownloads[index];
          final itemType = item.type
              .toString()
              .split('.')[item.type.toString().split('.').length - 1];
          return ListTile(
            title: Text(item.displayName),
            subtitle: Text(item.filename),
            onTap: () {
              context.push('/view/$itemType/${item.itemId}');
            },
            leading: AlbumImage(item.itemId),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                PlatformIconButton(
                  icon: Icon(PlatformIcons(context).deleteOutline),
                  onPressed: () {
                    ref
                        .read(downloadListProvider.notifier)
                        .removeDownload(item);
                  },
                ),
                const SizedBox(width: 16),
                Icon(PlatformIcons(context).rightChevron),
              ],
            ),
          );
        });
  }
}
