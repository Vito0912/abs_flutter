import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ExpandableDescription extends StatefulWidget {
  const ExpandableDescription({super.key, required this.description});

  final String description;

  @override
  _ExpandableDescriptionState createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          S.of(context).description,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () => setState(() => expanded = !expanded),
          child: PlatformText(
            widget.description,
            maxLines: expanded ? null : 3,
          ),
        ),
        PlatformTextButton(
          onPressed: () => setState(() => expanded = !expanded),
          child: PlatformText(
              expanded ? S.of(context).readLess : S.of(context).readMore),
        ),
      ],
    );
  }
}
