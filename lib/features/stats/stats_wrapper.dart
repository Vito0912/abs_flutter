import 'package:abs_flutter/features/stats/own_stats.dart';
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
          title: Text('Stats'),
        );
      },
      bodyBuilder: (_, index) {
        if(index == 0) return OwnStats();
        return Center(
          child: Text('Stats'),
        );
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(context.platformIcons.accountCircle),
          label: 'Own Stats',
        ),
        BottomNavigationBarItem(
          icon: Icon(context.platformIcons.book),
          label: 'Library Stats',
        ),
      ],
    );
  }
}
