import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Progress extends ConsumerWidget {
  const Progress({super.key, required this.item});
  final LibraryItemBase item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final progress =
        ref.watch(progressProviderWithItemId(ItemEpisodeId(item.id!, null)));
    if (progress?.progress == null ||
        progress?.progress == null ||
        progress!.progress! <= 0) {
      return const SizedBox.shrink();
    }
    final currentProgress =
        Helper.formatPercentage(progress.progress!.toDouble());
    final currentPosition = Helper.formatTimeToReadable(
        progress.currentTime!,
        precise: true,
        short: true);
    final toGoSeconds =
        progress.duration! - progress.progress! * progress.duration!;
    final timeRemaining = Helper.formatTimeToReadable(
        toGoSeconds >= progress.duration! ? progress.duration! : toGoSeconds,
        precise: true,
        short: true);
    return Chip(
        label: IntrinsicWidth(
          child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          PlatformText(
            S.of(context).progressNum(currentProgress),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Divider(
            height: 4,
          ),
          PlatformText(
            S.of(context).currentPositionNum(currentPosition),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          if(progress.duration != null && progress.duration! > 0) PlatformText(
            S.of(context).timeRemainingNum(timeRemaining),
            style: Theme.of(context).textTheme.bodySmall,
          ),
                ],
              ),
        ));
  }
}
