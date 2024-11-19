import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:go_router/go_router.dart';

class BookButton extends StatelessWidget {
  final LibraryItem item;
  const BookButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return PlatformElevatedButton(
      onPressed: () {
        showPlatformDialog(
            context: context,
            builder: (context) {
              return PlatformAlertDialog(
                title: PlatformText(S.of(context).information),
                content: PlatformText(
                    """Please note that this feature is currently in development and subject to change. It may not function as expected.
                    
At this stage, there is no syncing or robust support for proper display; the output will primarily consist of plain text. Consider this a proof of concept.

If you encounter any issues, particularly with loading, please feel free to open an issue to report it."""),
                actions: <Widget>[
                  PlatformDialogAction(
                    child: PlatformText(S.of(context).close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  PlatformDialogAction(
                    child: PlatformText('Open'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      context.push('/e-reader/${item.id}');
                    },
                  ),
                ],
              );
            });
      },
      child: const Icon(Icons.book_outlined),
    );
  }
}
