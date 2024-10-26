import 'package:abs_flutter/features/stats/components/heatmap.dart';
import 'package:abs_flutter/features/stats/components/listen_chart.dart';
import 'package:abs_flutter/features/stats/components/listen_stats.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/stats_provider.dart';
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

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListenStats(ownStats: ownStats),
          const SizedBox(height: 16),
          Wrap(
            spacing: 5.0,
            children: [
              ChoiceChip(
                label: PlatformText(S.of(context).last7Days),
                selected: _is7DaysSelected,
                showCheckmark: true,
                checkmarkColor: Theme.of(context).colorScheme.onSurface,
                onSelected: (bool selected) {
                  setState(() {
                    _is7DaysSelected = true;
                  });
                },
              ),
              ChoiceChip(
                label: PlatformText(S.of(context).last30Days),
                selected: !_is7DaysSelected,
                showCheckmark: true,
                checkmarkColor: Theme.of(context).colorScheme.onSurface,
                onSelected: (bool selected) {
                  setState(() {
                    _is7DaysSelected = false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 200, // Height for the chart
                  child: ListenChart(
                    lastDays: lastDays,
                    lastDaysLabels: lastDaysLabels,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: PlatformText(
              S.of(context).listeningInTheLastYear,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 8),
          Center(
            child: HeatMap(
              size: 14,
              axis: MediaQuery.of(context).size.width > 1080
                  ? Axis.vertical
                  : Axis.horizontal,
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

  List<String> _getLastDaysLabels(
      DateTime today, int days, BuildContext context) {
    List<String> lastDaysLabels = List.generate(days, (index) {
      DateTime day = today.subtract(Duration(days: days - 1 - index));
      return DateFormat.E(Localizations.localeOf(context).toString())
          .format(day);
    });
    return lastDaysLabels;
  }
}
