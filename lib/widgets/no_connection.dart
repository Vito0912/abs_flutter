import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NoConnection extends ConsumerWidget {
  final bool short;
  final bool showDownloadButton;
  const NoConnection({super.key, this.short = false, this.showDownloadButton = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: short
          ? PlatformText(S.of(context).noConnection)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlatformText(S.of(context).noInternetDescription),
                PlatformText(S.of(context).pleaseCheckInternet),
                const SizedBox(height: 20),
                PlatformElevatedButton(
                  child: PlatformText(S.of(context).tryAgain),
                  onPressed: () {
                    ref
                        .read(connectionProvider.notifier)
                        .checkServerReachability();
                  },
                ),
                PlatformElevatedButton(
                  child: PlatformText(S.of(context).openDownloads),
                  onPressed: () {
                    context.go('/downloads');
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
    );
  }
}
