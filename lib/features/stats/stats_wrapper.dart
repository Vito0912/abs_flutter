import 'package:abs_flutter/features/stats/library_stats.dart';
import 'package:abs_flutter/features/stats/own_stats.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/stats_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';

class StatsWrapper extends StatelessWidget {
  const StatsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      iosContentPadding: true,
      tabController: PlatformTabController(
        initialIndex: 0,
      ),
      appBarBuilder: (_, index) {
        return PlatformAppBar(
            title: Text(S.of(context).stats),
            trailingActions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Consumer(builder: (context, ref, child) {
                  return PlatformIconButton(
                    icon: const Icon(EvaIcons.refresh_outline),
                    onPressed: () {
                      ref.read(ownStatsProvider.notifier).refreshStats();
                      ref.read(libraryStatsProvider.notifier).refreshStats();
                    },
                  );
                }),
              )
            ]);
      },
      bodyBuilder: (_, index) {
        if (index == 0) return const OwnStats();
        if (index == 1) return const LibraryStats();
        return Center(
          child: Text(S.of(context).stats),
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            context.platformIcons.accountCircle,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          label: S.of(context).ownStats,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            context.platformIcons.book,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          label: S.of(context).libraryStats,
        ),
      ],
      tabsBackgroundColor: Theme.of(context).colorScheme.surface,
    );
  }
}
