import 'package:abs_flutter/provider/log_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AndroidPreventClosing extends StatelessWidget {
  final Widget child;
  const AndroidPreventClosing({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    void moveToBackground() {
      try {
        MethodChannel channel =
            const MethodChannel('de.vito.absapp.abs_flutter/prevent_closing');
        channel.invokeMethod('moveToBackground');
      } catch (e) {
        log('Error moving app to background: $e');
      }
    }

    return BackButtonListener(
        child: child,
        onBackButtonPressed: () {
          NavigatorState navigator = Navigator.of(context);
          bool isRoot = navigator.canPop() != true;

          if (isRoot) {
            moveToBackground();
            return Future.value(true);
          }

          return Future.value(false);
        });
  }
}
