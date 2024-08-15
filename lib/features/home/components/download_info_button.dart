import 'package:abs_flutter/features/home/components/download_item.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/downloader_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadInfoButton extends ConsumerWidget {
  final bool show;
  const DownloadInfoButton({super.key, this.show = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Browser Support
    if(kIsWeb) return const SizedBox.shrink();
    final downloader = ref.watch(downloaderProvider);

    if(!downloader.isDownloading && !show) {
      return const SizedBox.shrink();
    }

    return IconButton(
      icon: const Icon(Icons.download),
      onPressed: () {
        showBottomSheet(
            context: context, builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: downloader.isDownloading ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: downloader.downloads.map((downloadItem) {
                    return DownloadItemWidget(downloadItem: downloadItem);
                  }).toList(),
                ) : ListTile(
                  title: Text(S.of(context).noDownloads),
                )
              );
        },

        );
      },
    );
  }
}
