import 'dart:math';
import 'package:abs_flutter/features/stats/components/heatmap.dart';
import 'package:abs_flutter/features/stats/components/listen_chart.dart';
import 'package:abs_flutter/provider/stats_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class OwnStats extends ConsumerStatefulWidget {
  const OwnStats({super.key});

  @override
  _OwnStatsState createState() => _OwnStatsState();
}

class _OwnStatsState extends ConsumerState<OwnStats> {
  bool _is7DaysSelected = true;

  @override
  Widget build(BuildContext context) {
    final ownStats = ref.watch(ownStatsProvider);

    if (ownStats == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    // Get the current date
    DateTime today = DateTime.now();

    // Get data based on the selected timeframe
    final List<num> lastDays = _is7DaysSelected
        ? _getLastDays(ownStats.days?.toMap(), today, 7)
        : _getLastDays(ownStats.days?.toMap(), today, 30);
    final List<String> lastDaysLabels = _is7DaysSelected
        ? _getLastDaysLabels(today, 7, context)
        : _getLastDaysLabels(today, 30, context);

    final int consecutiveDays = _calculateConsecutiveDays(ownStats.days?.toMap());

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                      constraints: const BoxConstraints(maxWidth: 700),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          // Check if the available width is less than a certain threshold
                          if (constraints.maxWidth < 600) {
                            // If the width is less than 600, switch to a column layout
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildInfoRow(Icons.timer_sharp, Helper.formattedTimeWithTime(ownStats.totalTime), "Total listened time", context),
                                const SizedBox(height: 16),
                                _buildInfoRow(Icons.date_range_outlined, ownStats.days?.length.toString() ?? '0', "Days listened", context),
                                const SizedBox(height: 16),
                                _buildInfoRow(Icons.stacked_line_chart, consecutiveDays.toString() ?? '0', "Consecutive days", context),
                              ],
                            );
                          } else {
                            // If the width is sufficient, use a row layout
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildInfoRow(Icons.timer_sharp, Helper.formattedTimeWithTime(ownStats.totalTime), "Total listened time", context),
                                _buildInfoRow(Icons.date_range_outlined, ownStats.days?.length.toString() ?? '0', "Days listened", context),
                                _buildInfoRow(Icons.stacked_line_chart, consecutiveDays.toString() ?? '0', "Consecutive days", context),
                              ],
                            );
                          }
                        },
                      )
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 5.0,
            children: [
              ChoiceChip(
                label: Text('Last 7 days'),
                selected: _is7DaysSelected,
                onSelected: (bool selected) {
                  setState(() {
                    _is7DaysSelected = true;
                  });
                },
              ),
              ChoiceChip(
                label: Text('Last 30 days'),
                selected: !_is7DaysSelected,
                onSelected: (bool selected) {
                  setState(() {
                    _is7DaysSelected = false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,  // Height for the chart
                child: ListenChart(
                  lastDays: lastDays,
                  lastDaysLabels: lastDaysLabels,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: PlatformText(
              'Listening in the last year',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: HeatMap(
              size: 14,
              axis: MediaQuery.of(context).size.width > 1080 ? Axis.vertical : Axis.horizontal,
              datasets: _generateDatasets(ownStats.days?.toMap()),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Map<DateTime, num> _generateDatasets(Map<String, num>? listenMap) {
    if (listenMap == null) {
      return {};
    }
    Map<DateTime, num> datasets = {};
    listenMap.forEach((key, value) {
      final date = DateTime.parse(key);
      datasets[date] = value;
    });
    return datasets;
  }

  List<num> _getLastDays(Map<String, num>? map, DateTime today, int days) {
    List<num> lastDays = List.generate(days, (index) {
      // Format yyyy-mm-dd
      DateTime day = today.subtract(Duration(days: days - 1 - index));
      String formattedDay = DateFormat('yyyy-MM-dd').format(day);
      return map?[formattedDay] ?? 0;
    });
    return lastDays;
  }

  List<String> _getLastDaysLabels(DateTime today, int days, BuildContext context) {
    List<String> lastDaysLabels = List.generate(days, (index) {
      DateTime day = today.subtract(Duration(days: days - 1 - index));
      return DateFormat.E(Localizations.localeOf(context).toString()).format(day);
    });
    return lastDaysLabels;
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

  Widget _buildInfoRow(IconData icon, String mainText, String subText, BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 48,
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PlatformText(
              mainText,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            PlatformText(
              subText,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
