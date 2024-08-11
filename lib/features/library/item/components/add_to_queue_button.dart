import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddQueueButton extends ConsumerWidget {
  const AddQueueButton({super.key, required this.item});

  final LibraryItemBase item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerStatus = ref.watch(playStatusProvider);
    final queue = ref.watch(queueProvider);

    if(playerStatus == PlayerStatus.playing) return const SizedBox.shrink();

    return PlatformElevatedButton(
      onPressed: () {
        if(queue.contains(item)) {
          queue.remove(item);
        } else {
          queue.add(item);
        }

        ref.read(queueProvider.notifier).update((state) => [...state]);
      },
      child: queue.contains(item) ? Icon(PlatformIcons(context).remove) : Icon(PlatformIcons(context).add),
    );
  }
}
