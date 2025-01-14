import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/util/helper.dart';
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
            body: SingleChildScrollView(
                child: _listBuilder(
                    libraryDownloads, context, ref, selectedDownloads)),
          )
        : _listBuilder(libraryDownloads, context, ref, selectedDownloads);
  }

  Widget _listBuilder(List<DownloadInfo> libraryDownloads, BuildContext context,
      WidgetRef ref, ValueNotifier<List<DownloadInfo>> selectedDownloads) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (selectedDownloads.value.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PlatformElevatedButton(
              child: PlatformText(S.of(context).deleteSelected),
              onPressed: () =>
                  _deleteSelectedDownloads(ref, selectedDownloads.value),
            ),
          ),
        SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: libraryDownloads.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(bottom: 8),
            itemBuilder: (context, index) {
              final item = libraryDownloads[index];
              final itemType = item.type.name;
              final isSelected = selectedDownloads.value.contains(item);

              return ListTile(
                title: Text(item.displayName),
                subtitle: Text('${item.files.length.toString()} media files'),
                onTap: () {
                  context.push('/view/$itemType/${item.itemId}');
                },
                leading: AlbumImage(
                  item.itemId,
                  size: 48,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PlatformIconButton(
                      icon: Icon(
                        isSelected
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                      ),
                      onPressed: () =>
                          _toggleSelection(item, selectedDownloads),
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
                                  title:
                                      PlatformText(S.of(context).downloadInfo),
                                  content: SingleChildScrollView(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          PlatformText(
                                              '${S.of(context).libraryName}: ${item.libraryName}'),
                                          PlatformText(
                                              '${S.of(context).itemId}: ${item.itemId}'),
                                          if (item.episodeId != null)
                                            PlatformText(
                                                '${S.of(context).episodeId}: ${item.episodeId}'),
                                          const Divider(),
                                          ..._buildFileText(item, context),
                                          const Divider(),
                                          PlatformText(
                                              '${S.of(context).itemType}: ${item.type.name}'),
                                        ]
                                            .map((e) => Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: e))
                                            .toList()),
                                  ),
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
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
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

  List<Widget> _buildFileText(DownloadInfo item, BuildContext context) {
    List<Widget> fileText = [];

    for (DownloadFile file in item.files) {
      fileText.add(
        PlatformText('${S.of(context).filename}: ${file.filename}'),
      );
      fileText.add(
        PlatformText('${S.of(context).filepath}: ${file.filePath}'),
      );
      fileText.add(
        PlatformText('${S.of(context).size}: ${Helper.formatBytes(file.size)}'),
      );
    }

    return fileText;
  }

  void _deleteSelectedDownloads(
      WidgetRef ref, List<DownloadInfo> selectedDownloads) {
    for (var download in selectedDownloads) {
      ref.read(downloadListProvider.notifier).removeDownload(download);
    }
    selectedDownloads.clear(); // Clear the list after deletion
  }
}
