import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/queue_provider.dart';
import 'package:abs_flutter/widgets/album_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class QueueButton extends ConsumerWidget {
  final double? size;
  const QueueButton({super.key, this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final queue = ref.read(queueProvider);

    if (queue.isEmpty) return const SizedBox.shrink();

    return PlatformIconButton(
      onPressed: () => _showQueueDialog(context, queue, ref),
      icon: Icon(size: size, Icons.queue_music),
    );
  }

  void _showQueueDialog(BuildContext context, List<LibraryItemBase> queue, WidgetRef ref) {
    showPlatformDialog(
      context: context,
      builder: (_) => PlatformAlertDialog(
        title: Text(S.of(context).editQueue),
        content: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReorderableListView(
                shrinkWrap: true,
                children: _buildQueueListItems(context, queue),
                onReorder: (oldIndex, newIndex) => _reorderQueue(queue, oldIndex, newIndex, ref),
              ),
            ],
          ),
        ),
        actions: [
          PlatformDialogAction(
            child: PlatformText(S.of(context).close),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildQueueListItems(BuildContext context, List<LibraryItemBase> queue) {
    return queue.asMap().entries.map((entry) {
      final item = entry.value;
      return PlatformListTile(
        key: ValueKey(item.id),
        title: Text(item.media?.metadata?.title ?? S.of(context).unknownTitle),
        leading: AlbumImage(item.id!),
        trailing: Icon(PlatformIcons(context).dehaze),
      );
    }).toList();
  }

  void _reorderQueue(List<LibraryItemBase> queue, int oldIndex, int newIndex, WidgetRef ref) {
    if (newIndex > oldIndex) newIndex--;

    final item = queue.removeAt(oldIndex);
    queue.insert(newIndex, item);

    // Update the state directly
    ref.read(queueProvider.notifier).state = [...queue]; // Create a new list to trigger rebuild
  }


}
