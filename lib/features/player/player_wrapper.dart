import 'package:abs_flutter/features/player/player_minified.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlayerWrapper extends StatelessWidget {
  final Widget child;

  const PlayerWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: child),
        if (Helper.getCurrentRoute(GoRouter.of(context)) != '/player')
          const PlayerMinified()
      ],
    );
  }
}
