import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ShowRestartInfo {
  static void show(BuildContext context) {
    showPlatformDialog(
      context: context,
      builder: (context) {
        return PlatformAlertDialog(
          title: Text(S.of(context).restartRequired),
          content: Text(S.of(context).restartRequiredDescription),
          actions: <Widget>[
            PlatformDialogAction(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: PlatformText(S.of(context).ok),
            ),
          ],
        );
      },
    );
  }
}
