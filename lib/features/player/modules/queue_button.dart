import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/queue.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QueueButton extends ConsumerWidget {
  final double? size;
  const QueueButton({super.key, this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queue = ref.read(queueProvider);

    if (queue.isEmpty) return const SizedBox.shrink();

    return PlatformIconButton(
      onPressed: () => _showQueueDialog(context, ref),
      icon: Icon(size: size, Icons.queue_music),
    );
  }

  void _showQueueDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => Consumer(builder: (context, ref2, child) {
        final queue = ref2.watch(queueProvider);
        return PlatformAlertDialog(
          title: Text(S.of(context).editQueue),
          content: SizedBox(
              width: double.maxFinite,
              child: ReorderableListView(
                shrinkWrap: true,
                children: _buildQueueListItems(context, queue),
                onReorder: (oldIndex, newIndex) =>
                    _reorderQueue(queue, oldIndex, newIndex, ref),
              )),
          actions: [
            PlatformDialogAction(
              child: PlatformText(S.of(context).close),
              onPressed: () =>
                  Navigator.of(context, rootNavigator: true).pop(context),
            ),
          ],
        );
      }),
    );
  }

  List<Widget> _buildQueueListItems(BuildContext context, List<Queue> queue) {
    return queue.asMap().entries.map((entry) {
      final item = entry.value;
      return PlatformListTile(
        key: ValueKey(item.itemId),
        title: Text(item.title),
        leading: AlbumImage(
          item.itemId,
          size: 48,
        ),
        trailing: Icon(PlatformIcons(context).dehaze),
        material: (_, __) =>
            MaterialListTileData(contentPadding: EdgeInsets.zero),
      );
    }).toList();
  }

  void _reorderQueue(
      List<Queue> queue, int oldIndex, int newIndex, WidgetRef ref) {
    if (newIndex > oldIndex) newIndex--;

    final item = queue.removeAt(oldIndex);
    queue.insert(newIndex, item);

    // Update the state directly
    ref.read(queueProvider.notifier).state = [
      ...queue
    ]; // Create a new list to trigger rebuild
  }
}
