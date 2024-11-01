import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DownloadLibrary extends HookConsumerWidget {
  late List<DownloadInfo>? downloads;
  final String? libraryId;
  final String? libraryName;

  DownloadLibrary(
      {super.key, this.downloads, this.libraryId, this.libraryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDownloads = useState<List<DownloadInfo>>([]);

    final List<DownloadInfo> libraryDownloads = [];
    if (libraryId != null) {
      final downloadsNew = ref.watch(downloadListProvider);
      downloads = downloadsNew;
      if (downloads != null) {
        libraryDownloads.addAll(
            downloads!.where((element) => element.libraryId == libraryId));
      }
    } else {
      libraryDownloads.addAll(downloads!);
    }

    return libraryId != null
        ? PlatformScaffold(
            appBar: libraryId != null
                ? PlatformAppBar(
                    title: Text(libraryName ?? S.of(context).downloads),
                  )
                : null,
            body:
                _listBuilder(libraryDownloads, context, ref, selectedDownloads),
          )
        : _listBuilder(libraryDownloads, context, ref, selectedDownloads);
  }

  Widget _listBuilder(List<DownloadInfo> libraryDownloads, BuildContext context,
      WidgetRef ref, ValueNotifier<List<DownloadInfo>> selectedDownloads) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      if (selectedDownloads.value.isNotEmpty)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: PlatformElevatedButton(
            child: PlatformText(S.of(context).deleteSelected),
            onPressed: () =>
                _deleteSelectedDownloads(ref, selectedDownloads.value),
          ),
        ),
      ListView.builder(
        itemCount: libraryDownloads.length,
        padding: const EdgeInsets.only(bottom: 8),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = libraryDownloads[index];
          final itemType = item.type.name;
          final isSelected = selectedDownloads.value.contains(item);

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
                  icon: Icon(
                    isSelected
                        ? Icons.check_box
                        : Icons.check_box_outline_blank,
                  ),
                  onPressed: () => _toggleSelection(item, selectedDownloads),
                ),
                PlatformIconButton(
                  icon: Icon(PlatformIcons(context).deleteOutline),
                  onPressed: () {
                    ref
                        .read(downloadListProvider.notifier)
                        .removeDownload(item);
                  },
                ),
                PlatformIconButton(
                    icon: Icon(PlatformIcons(context).info),
                    onPressed: () {
                      showPlatformDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return PlatformAlertDialog(
                              title: PlatformText(S.of(context).downloadInfo),
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    PlatformText(
                                        '${S.of(context).libraryName}: ${item.libraryName}'),
                                    PlatformText(
                                        '${S.of(context).itemId}: ${item.itemId}'),
                                    if (item.episodeId != null)
                                      PlatformText(
                                          '${S.of(context).episodeId}: ${item.episodeId}'),
                                    PlatformText(
                                        '${S.of(context).filename}: ${item.filename}'),
                                    PlatformText(
                                        '${S.of(context).filepath}: ${item.filePath}'),
                                    PlatformText(
                                        '${S.of(context).itemType}: ${item.type.name}'),
                                  ]
                                      .map((e) => Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: e))
                                      .toList()),
                              actions: [
                                PlatformDialogAction(
                                  child: PlatformText(S.of(context).close),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          });
                    }),
                const SizedBox(width: 16),
                Icon(PlatformIcons(context).rightChevron),
              ],
            ),
          );
        },
      ),
    ]);
  }

  void _toggleSelection(
      DownloadInfo item, ValueNotifier<List<DownloadInfo>> selectedDownloads) {
    if (selectedDownloads.value.contains(item)) {
      selectedDownloads.value = List.from(selectedDownloads.value)
        ..remove(item);
    } else {
      selectedDownloads.value = List.from(selectedDownloads.value)..add(item);
    }
  }

  void _deleteSelectedDownloads(
      WidgetRef ref, List<DownloadInfo> selectedDownloads) {
    for (var download in selectedDownloads) {
      ref.read(downloadListProvider.notifier).removeDownload(download);
    }
    selectedDownloads.clear(); // Clear the list after deletion
  }
}
