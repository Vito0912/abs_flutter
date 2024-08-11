import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/provider/history_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:intl/intl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlayHistoryPage extends HookConsumerWidget {
  final String itemId;
  const PlayHistoryPage({super.key, required this.itemId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historyProviderFamily(itemId)).reversed.toList();
    final expandedIndices = useState<Set<int>>(<int>{});

    List<HistoryView> views = convertHistoryListToHistoryViewList(history);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text(S.of(context).playHistory),
      ),
      body: ListView.builder(
        itemCount: views.length,
        itemBuilder: (BuildContext context, int index) {
          final isExpanded = expandedIndices.value.contains(index);
          final historiesToShow =
              isExpanded ? views[index].histories : [views[index].first];

          return Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              children: [
                ListTile(
                  key: UniqueKey(),
                  dense: true,
                  title: Row(
                    children: [
                      _getIcon(views[index].type, context),
                      const SizedBox(width: 16),
                      Flexible(
                        child: PlatformText(
                          '${_getHistoryText(views[index].type, context)} (${views[index].histories.length}x)',
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    if (isExpanded) {
                      expandedIndices.value = {...expandedIndices.value}
                        ..remove(index);
                    } else {
                      expandedIndices.value = {...expandedIndices.value}
                        ..add(index);
                    }
                  },
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlatformText(
                          DateFormat.Hm().format(views[index].first.date)),
                      if (views[index].isCompressed)
                        PlatformText(
                            DateFormat.Hm().format(views[index].last.date)),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PlatformText(
                        Helper.formatTimeToReadable(views[index].first.position,
                            precise: true),
                      ),
                      if (views[index].isCompressed)
                        PlatformText(
                          Helper.formatTimeToReadable(
                              views[index].last.position,
                              precise: true),
                        ),
                    ],
                  ),
                ),
                if (isExpanded)
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Column(
                      children: historiesToShow.map((history) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              PlatformText(DateFormat.Hm().format(history.date)),
                              const SizedBox(width: 16),
                              Flexible(
                                child: PlatformText(
                                  Helper.formatTimeToReadable(history.position,
                                      precise: true),
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  List<HistoryView> convertHistoryListToHistoryViewList(
      List<History> histories) {
    if (histories.isEmpty) return [];

    List<HistoryView> result = [];
    List<History> currentHistories = [];
    HistoryType currentType = histories.first.type;

    for (var history in histories) {
      if (history.type == currentType) {
        currentHistories.add(history);
      } else {
        result.add(HistoryView(
            type: currentType, histories: List.unmodifiable(currentHistories)));
        currentType = history.type;
        currentHistories = [history];
      }
    }

    // Add the last batch of histories
    if (currentHistories.isNotEmpty) {
      result.add(HistoryView(
          type: currentType, histories: List.unmodifiable(currentHistories)));
    }

    return result;
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
