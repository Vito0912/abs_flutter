import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformIconButton(
        onPressed: () {},
        icon: Icon(
          Icons.filter_alt,
        )
    );
  }
}
