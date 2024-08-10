import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/provider/history_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class PlayHistoryPage extends ConsumerWidget {
  final String itemId;
  const PlayHistoryPage({super.key, required this.itemId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProviderFamily(itemId)).reversed.toList();

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(S.of(context).playHistory),
      ),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (BuildContext context, int index) {
          // Use UniqueKey() to ensure each ListTile has a unique key
          return ListTile(
            dense: true,
            title: Row(
              children: [
                _getIcon(history[index].type, context),
                const SizedBox(width: 16),
                PlatformText(_getHistoryText(history[index].type, context)),
              ],
            ),
            leading: PlatformText(DateFormat.Hm().format(history[index].date)),
            trailing: PlatformText(
             Helper.formatTimeToReadable(history[index].position),
            )
          );
        },
      ),
    );
  }

  Icon _getIcon(HistoryType type, BuildContext context) {
    switch (type) {
      case HistoryType.play:
        return Icon(PlatformIcons(context).playArrow);
      case HistoryType.pause:
        return Icon(PlatformIcons(context).pause);
      case HistoryType.stop:
        return const Icon(Icons.stop);
      case HistoryType.sync:
        return const Icon(Icons.sync);
      case HistoryType.seek:
        return const Icon(Icons.skip_next);
      default:
        return const Icon(Icons.question_mark_rounded);
    }
  }

  String _getHistoryText(HistoryType type, BuildContext context) {
    switch (type) {
      case HistoryType.play:
        return S.of(context).play;
      case HistoryType.pause:
        return S.of(context).pause;
      case HistoryType.stop:
        return S.of(context).stop;
      case HistoryType.sync:
        return S.of(context).sync;
      case HistoryType.seek:
        return S.of(context).seek;
      default:
        return S.of(context).unknown;
    }
  }
}
