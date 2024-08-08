import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/models/user.dart' as m;
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/downloader_provider.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class DownloadButton extends ConsumerWidget {
  const DownloadButton(
      {super.key, required this.libraryItem, required this.user});

  final LibraryItemBase libraryItem;
  final m.User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloader = ref.watch(downloaderProvider);
    final downloads = ref.watch(downloadListProvider);
    final currentDownload = downloader.downloads
        .where((element) => element.itemId == libraryItem.id)
        .firstOrNull;
    final DownloadInfo? downloadedItem = downloads
        .where((element) => element.itemId == libraryItem.id)
        .firstOrNull;

    return PlatformElevatedButton(
      onPressed: () {
        if (currentDownload != null) {
          downloader.cancelDownload(currentDownload);
        } else if (currentDownload == null && downloadedItem == null) {
          _downloadFile(ref, context);
        } else {
          ref
              .read(downloadListProvider.notifier)
              .removeDownload(downloadedItem!);
        }
      },
      child: downloader.isDownloading && currentDownload != null
          ? StreamBuilder(
              stream: currentDownload.progressStream,
              builder: (BuildContext context,
                  AsyncSnapshot<TaskProgressUpdate> progress) {
                return PlatformText(
                  progress.hasData
                      ? '${(progress.data!.progress * 100).toStringAsFixed(2)} %'
                      : S.of(context).waitingForDownload,
                );
              },
            )
          : downloadedItem == null
              ? Icon(PlatformIcons(context).cloudDownload)
              : Icon(PlatformIcons(context).deleteOutline),
    );
  }

  String getDownloadUrl(String fileId) {
    return user.server!.url +
        '/api/items/' +
        libraryItem.id! +
        '/file/' +
        fileId +
        '/download';
  }

  Future<void> _downloadFile(WidgetRef ref, BuildContext context) async {
    if (await Permission.notification.isDenied) {
      await Permission.notification.request();
    }
    if (await Permission.notification.isDenied) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: PlatformText(S.of(context).notificationHeading),
                content:
                    PlatformText(S.of(context).enableNotificationsDownload),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: PlatformText(S.of(context).ok),
                  )
                ],
              ));
    }

    final downloader = ref.read(downloaderProvider);
    for (AudioFile file in libraryItem.media!.audioFiles!) {
      downloader.downloadAudioFile(
          getDownloadUrl(file.ino!), file, libraryItem);
    }
  }
}
