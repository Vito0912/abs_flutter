import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

class ProgressPage extends ConsumerWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progressNotifier = ref.watch(offlineProgressProviderHandler);
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: PlatformText(S.of(context).offlineSavedProgress),
        ),
        body: ListView.builder(
          itemCount: progressNotifier.length,
          itemBuilder: (context, index) {
            final progress = progressNotifier[index];
            final createdAt =
                DateFormat.yMMMMEEEEd().format(progress.createdAt!);
            final updatedAt =
                DateFormat.yMMMMEEEEd().format(progress.updatedAt!);
            final currentTime =
                Helper.formatTimeToReadable(progress.currentTime);
            final timeListened =
                Helper.formatTimeToReadable(progress.timeListened);
            final status = progress.success != null
                ? progress.success!
                    ? S.of(context).success
                    : S.of(context).failed
                : S.of(context).notTriedYet;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Theme.of(context).colorScheme.surfaceContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PlatformText('User ID: ${progress.userId}'),
                      PlatformText('Item ID: ${progress.itemId}'),
                      if (progress.episodeId != null)
                        PlatformText('Episode ID: ${progress.episodeId}'),
                      PlatformText('Created At: $createdAt'),
                      PlatformText('Updated At: $updatedAt'),
                      PlatformText('Current Time: $currentTime'),
                      PlatformText('Time listened: $timeListened'),
                      PlatformText('Type: ${progress.type}'),
                      PlatformText('Status: $status'),
                      PlatformElevatedButton(
                        child: Icon(context.platformIcons.delete),
                        onPressed: () {
                          ref
                              .read(offlineProgressProviderHandler.notifier)
                              .removeProgress(progress);
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
