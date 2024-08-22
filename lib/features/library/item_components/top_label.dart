import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TopLabel extends StatelessWidget {
  const TopLabel(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer.withOpacity(0.8),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
            offset: const Offset(-2, 2),
            blurRadius: 2,
            spreadRadius: 0, // Makes the shadow more focused on the edge
          ),
        ],
      ),
      child: PlatformText(
        label,
        style: Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}
