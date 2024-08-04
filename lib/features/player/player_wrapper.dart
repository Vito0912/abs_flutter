import 'package:abs_flutter/features/player/player_minified.dart';
import 'package:flutter/material.dart';

class PlayerWrapper extends StatelessWidget {
  final Widget child;

  const PlayerWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: child),
        const PlayerMinified()
      ],
    );
  }
}
