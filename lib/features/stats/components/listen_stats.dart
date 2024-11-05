import 'dart:math';

import 'package:abs_flutter/api/library/stats/user_listening_stats.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';

class ListenStats extends StatelessWidget {
  final UserListeningStats ownStats;
  const ListenStats({super.key, required this.ownStats});

  @override
  Widget build(BuildContext context) {
    final int consecutiveDays = _calculateConsecutiveDays(ownStats.days);

    final DateTime today = DateTime.now();
    List<String> last7DaysFormatted = _getLast7DaysFormatted(today);
    num totalTimeLast7Days = 0;
    for (var day in last7DaysFormatted) {
      if (ownStats.days != null && ownStats.days![day] != null) {
        totalTimeLast7Days += ownStats.days![day]!;
      }
    }

    final List<Widget> items = [
      _buildInfoRow(
          Icons.timer_sharp,
          Helper.formatTimeToReadable(ownStats.totalTime, short: true),
          S.of(context).totalTimeListened,
          context),
      _buildInfoRow(
          Icons.today,
          Helper.formatTimeToReadable(ownStats.today,
              short: true, precise: true),
          S.of(context).today,
          context),
      _buildInfoRow(
          Icons.date_range_outlined,
          ownStats.days?.length.toString() ?? '0',
          S.of(context).daysListened,
          context),
      _buildInfoRow(Icons.stacked_line_chart, consecutiveDays.toString(),
          S.of(context).consecutiveDays, context),
      _buildInfoRow(
          HeroIcons.globe_alt,
          Helper.formatTimeToReadable(
              ownStats.days == null
                  ? 0
                  : ((ownStats.totalTime ?? 0) / ownStats.days!.length),
              precise: true,
              short: true),
          'Average per day',
          context),
      _buildInfoRow(
          Bootstrap.number_7_square,
          Helper.formatTimeToReadable(
              ownStats.days == null ? 0 : totalTimeLast7Days / 7,
              precise: true,
              short: true),
          'Average last week',
          context,
          padding: 8),
    ];

    final crossCount = min((1000 / 250).floor(),
        max(1, (MediaQuery.of(context).size.width / 250)).floor());

    return Container(
      constraints: const BoxConstraints(maxWidth: 1000),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: MasonryGridView.count(
        crossAxisCount: crossCount,
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }

  Widget _buildInfoRow(
      IconData icon, String mainText, String subText, BuildContext context,
      {double? padding = 2}) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(padding ?? 0),
          child: Icon(
            icon,
            size: 48 - ((padding ?? 0) * 2),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlatformText(
                mainText,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
              ),
              PlatformText(
                subText,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelLarge,
                maxLines: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  int _calculateConsecutiveDays(Map<String, num>? map) {
    if (map == null || map.isEmpty) {
      return 0;
    }

    // Get the current date
    DateTime today = DateTime.now();
    DateTime yesterday = today.subtract(const Duration(days: 1));
    String todayFormatted = DateFormat('yyyy-MM-dd').format(today);
    String yesterdayFormatted = DateFormat('yyyy-MM-dd').format(yesterday);

    // Check if the user listened yesterday
    if (map[yesterdayFormatted] == null || map[yesterdayFormatted] == 0) {
      return 0;
    }

    // Check if the user listened today
    if (map[todayFormatted] == null || map[todayFormatted] == 0) {
      return 0;
    }

    // Calculate the consecutive days
    int consecutiveDays = 2;
    DateTime previousDay = yesterday;
    while (true) {
      DateTime day = previousDay.subtract(const Duration(days: 1));
      String dayFormatted = DateFormat('yyyy-MM-dd').format(day);
      if (map[dayFormatted] == null || map[dayFormatted] == 0) {
        break;
      }
      consecutiveDays++;
      previousDay = day;
    }

    return consecutiveDays;
  }

  List<String> _getLast7DaysFormatted(DateTime today) {
    List<String> last7DaysFormatted = List.generate(7, (index) {
      DateTime day = today.subtract(Duration(days: 6 - index));
      return DateFormat('yyyy-MM-dd').format(day);
    });
    return last7DaysFormatted;
  }
}
