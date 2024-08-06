import 'package:abs_flutter/util/helper.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListenChart extends StatelessWidget {
  final List<num> lastDays;
  final List<String> lastDaysLabels;
  const ListenChart({super.key, required this.lastDays, required this.lastDaysLabels});

  @override
  Widget build(BuildContext context) {
    final int numDays = lastDays.length;
    return LineChart(
      LineChartData(
        gridData: const FlGridData(
            show: true,
            drawVerticalLine: true,
            drawHorizontalLine: true,
            horizontalInterval: 60,
            verticalInterval: 1
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: numDays / 7,  // Ensures 7 intervals
              getTitlesWidget: (value, _) {
                // Ensure the index is within range and return the corresponding day
                if (value.toInt() >= 0 && value.toInt() < numDays) {
                  return Text(lastDaysLabels[value.toInt()]);
                }
                return const Text(''); // Empty for any out-of-bounds value
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50,
              interval: 60,  // Set a fixed interval for Y-axis
              getTitlesWidget: (value, _) {
                // Convert seconds to minutes
                return Text(Helper.formattedTimeWithTime(value));
              },
            ),
          ),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((touchedSpot) {
                return LineTooltipItem(
                  '${lastDaysLabels[touchedSpot.spotIndex]}: ${Helper.formattedTimeWithTime(touchedSpot.y.toInt())}',
                  TextStyle(color: Theme.of(context).colorScheme.onSurface),
                );
              }).toList();
            },
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: Theme.of(context).colorScheme.surfaceContainer,
            width: 1,
          ),
        ),
        minX: 0,
        maxX: numDays.toDouble() - 1,
        minY: 0,
        maxY: ((((lastDays.reduce((value, element) => value > element ? value : element)) / 60) + 60) ~/ 60 * 60).toDouble(),
        lineBarsData: [
          LineChartBarData(
            spots: lastDays
                .asMap()
                .entries
                .map((entry) => FlSpot(entry.key.toDouble(), entry.value.toDouble() / 60))  // Convert seconds to minutes
                .toList(),
            isCurved: true,
            color: Theme.of(context).colorScheme.primary,
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: const FlDotData(show: true),
          ),
        ],
      ),
    );
  }
}
