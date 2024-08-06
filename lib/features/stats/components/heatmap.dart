import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HeatMap extends StatelessWidget {
  final double size;
  final Map<DateTime, num> datasets;
  final Function(DateTime, num)? onClick;
  final Axis axis;

  HeatMap({
    required this.size,
    required this.datasets,
    this.onClick,
    this.axis = Axis.vertical, // Default to horizontal
  });

  @override
  Widget build(BuildContext context) {
    // Normalize all dataset keys to midnight
    Map<DateTime, num> normalizedDatasets = {};
    datasets.forEach((key, value) {
      final normalizedKey = DateTime(key.year, key.month, key.day);
      normalizedDatasets[normalizedKey] = value;
    });

    final maxVal = normalizedDatasets.values.isNotEmpty
        ? normalizedDatasets.values.reduce((a, b) => a > b ? a : b)
        : 1; // Prevent division by zero

    final now = DateTime.now();
    final oneYearAgo = DateTime(now.year - 1, now.month, now.day);

    // Creating a map to hold DateTime objects for every day in the last year
    Map<DateTime, num> normalizedData = {};
    for (var i = 0; i <= 366; i++) {
      final date = oneYearAgo.add(Duration(days: i));
      final normalizedDate = DateTime(date.year, date.month, date.day);
      final num value = normalizedDatasets[normalizedDate] ?? 0;
      normalizedData[normalizedDate] = value;
    }

    return axis == Axis.horizontal
        ? _buildHorizontalHeatmap(normalizedData, maxVal, context)
        : _buildVerticalHeatmap(normalizedData, maxVal, context);
  }

  Widget _buildHorizontalHeatmap(
      Map<DateTime, num> normalizedData, num maxVal, BuildContext context) {
    const double spacing = 25;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: spacing),
                for (var i = 0; i < 7; i++) _getWeekdayWidget(i),
              ],
            ),
            for (var week in _getWeeks(normalizedData.keys.toList()).reversed)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _getMonthWidget(week, spacing),
                  for (var day in week)
                    GestureDetector(
                      onTap: () => onClick?.call(day, normalizedData[day]!),
                      child: Tooltip(
                        message: Helper.formatTimeToReadable(normalizedData[day] ?? 0),
                        child: Container(
                          width: size,
                          height: size,
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: _getColor(
                                normalizedData[day]!,
                                maxVal,
                                Theme.of(context).brightness ==
                                    Brightness.dark),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildVerticalHeatmap(
      Map<DateTime, num> normalizedData, num maxVal, BuildContext context) {
    const double spacing = 25;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            children: [
              const SizedBox(height: spacing),
              for (var i = 0; i < 7; i++) _getWeekdayWidget(i)!,
            ],
          ),
        ),
        for (var week in _getWeeks(normalizedData.keys.toList()))
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _getMonthWidget(week, spacing),
              for (var day in week)
                GestureDetector(
                  onTap: () => onClick?.call(day, normalizedData[day]!),
                  child: Tooltip(
                    message: Helper.formatTimeToReadable(normalizedData[day] ?? 0),
                    child: Container(
                      width: size,
                      height: size,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: _getColor(normalizedData[day]!, maxVal,
                            Theme.of(context).brightness == Brightness.dark),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }

  Widget _getMonthWidget(List<DateTime> week, double spacing) {
    for (var day in week) {
      if (day.day == 1) {
        if (axis == Axis.horizontal) {
          return SizedBox(
            width: spacing,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                _monthLabel(day.month),
                style: TextStyle(fontSize: 10),
              ),
            ),
          );
        } else {
          return SizedBox(
            height: spacing,
            child: Text(
              _monthLabel(day.month),
              style: TextStyle(fontSize: 10),
            ),
          );
        }
      }
    }
    if (axis == Axis.horizontal) {
      return SizedBox(
        width: spacing,
      );
    } else {
      return SizedBox(
        height: spacing,
      );
    }
  }

  Widget _getWeekdayWidget(int index) {
    if (axis == Axis.horizontal && index % 2 == 1)
      return const SizedBox.shrink();
    if (axis == Axis.horizontal) {
      return Container(
        width: size * 2,
        margin: EdgeInsets.all(4),
        child: Text(
          _weekdayLabel(index),
          style: TextStyle(fontSize: 10),
        ),
      );
    } else {
      return Container(
        height: size,
        margin: EdgeInsets.all(2),
        child: Text(
          _weekdayLabel(index),
          style: TextStyle(fontSize: 10),
        ),
      );
    }
  }

  List<List<DateTime>> _getWeeks(List<DateTime> days) {
    List<List<DateTime>> weeks = [];
    List<DateTime> week = [];

    for (var day in days) {
      week.add(day);
      if (week.length == 7) {
        weeks.add(List.from(week));
        week.clear();
      }
    }
    if (week.isNotEmpty) weeks.add(week);
    return weeks;
  }

  String _weekdayLabel(int index) {
    final weekdays = DateFormat().dateSymbols.WEEKDAYS;
    final shortWeekdays = weekdays.map((e) => e.substring(0, 2)).toList();
       return shortWeekdays[index];
  }

  String _monthLabel(int month) {
    final months = DateFormat().dateSymbols.MONTHS;
    final shortMonths = months.map((e) => e.substring(0, 3)).toList();
    return shortMonths[month - 1];
  }

  Color _getColor(num value, num maxVal, bool isDarkMode) {
    if (value == 0) return isDarkMode ? Colors.grey[800]! : Colors.grey[300]!;

    final intensity = (value / maxVal).clamp(0.0, 1.0);

    final adjustedIntensity = intensity * 3;

    final Color startColorLight = Colors.green[100]!;
    final Color startColorDark = Colors.green[900]!;

    return Color.lerp(
      isDarkMode ? startColorDark : startColorLight,
      Colors.green,
      adjustedIntensity,
    )!;
  }
}
