import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ChipSection extends StatelessWidget {
  final String label;
  final List<String> items;
  final bool? showWhenEmpty;
  const ChipSection(
      {super.key,
      required this.label,
      required this.items,
      this.showWhenEmpty});

  @override
  Widget build(BuildContext context) {
    if((showWhenEmpty == null || !showWhenEmpty!) && items.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          '$label:',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 8.0),
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: items
              .map((item) => Chip(
                  label: Text(item),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  labelStyle: const TextStyle(fontSize: 12.0)))
              .toList(),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
