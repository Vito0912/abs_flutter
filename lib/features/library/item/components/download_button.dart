import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/session_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadButton extends ConsumerWidget {
  const DownloadButton({super.key, required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformElevatedButton(
      onPressed: () {
        print('Download button pressed');
      },
      child: Icon(PlatformIcons(context).cloudDownload),
    );
  }
}
