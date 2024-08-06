import 'package:abs_flutter/features/stats/own_stats.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

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
        );
      },
      bodyBuilder: (_, index) {
        if (index == 0) return const OwnStats();
        return Center(
          child: Text(S.of(context).stats),
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(context.platformIcons.accountCircle),
          label: S.of(context).ownStats,
        ),
        BottomNavigationBarItem(
          icon: Icon(context.platformIcons.book),
          label: S.of(context).libraryStats,
        ),
      ],
    );
  }
}
