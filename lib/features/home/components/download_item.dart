import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/downloader_provider.dart';
import 'package:flutter/material.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DownloadItemWidget extends StatelessWidget {
  final DownloadItem downloadItem;

  const DownloadItemWidget({super.key, required this.downloadItem});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TaskProgressUpdate>(
      stream: downloadItem.progressStream,
      builder: (context, progressSnapshot) {
        final progress = progressSnapshot.data?.progress ?? 0.0;

        return StreamBuilder<TaskStatusUpdate>(
          stream: downloadItem.statusStream,
          builder: (context, statusSnapshot) {
            final status = statusSnapshot.data?.status;
            final isComplete = status == TaskStatus.complete;
            final statusText = isComplete ? S.of(context).downloadComplete : 'Downloading...';

            return PlatformListTile(
              title: PlatformText(downloadItem.task.displayName),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(value: progress),
                  const SizedBox(height: 8.0),
                  PlatformText(
                    '${(progress * 100).toStringAsFixed(2)}%',
                  ),
                  if (isComplete)
                    PlatformText(
                      statusText,
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
