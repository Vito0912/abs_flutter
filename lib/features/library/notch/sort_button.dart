import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SortButton extends StatelessWidget {
  const SortButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformIconButton(
        onPressed: () {},
        icon: Icon(
          Icons.sort,
        )
    );
  }
}
