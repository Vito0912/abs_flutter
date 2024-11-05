import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogView extends ConsumerWidget {
  const LogView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ScrollController();
    final logs = ref.watch(logProvider);

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(S.of(context).logs),
        trailingActions: [
          PlatformIconButton(
            icon: const Icon(Icons.copy),
            onPressed: () => showPlatformDialog(
              context: context,
              builder: (_) => PlatformAlertDialog(
                title: PlatformText(S.of(context).copyLogs),
                content: PlatformText(S.of(context).copyLogsDescription),
                actions: [
                  PlatformDialogAction(
                    child: PlatformText(S.of(context).cancel),
                    onPressed: () =>
                        Navigator.of(context, rootNavigator: true).pop(),
                  ),
                  PlatformDialogAction(
                    child: PlatformText(S.of(context).copy),
                    onPressed: () {
                      _copyToClipboard(logs, false);
                    },
                  ),
                  PlatformDialogAction(
                    child: PlatformText(S.of(context).copyAnonymous),
                    onPressed: () {
                      _copyToClipboard(logs, true, ref: ref);
                    },
                  ),
                ],
              ),
            ),
          ),
          PlatformIconButton(
            icon: Icon(context.platformIcons.delete),
            onPressed: () => ref.read(logProvider.notifier).clearLogs(),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          controller: scrollController,
          itemCount: logs.length,
          itemBuilder: (context, index) {
            return LogItem(log: logs[index]);
          },
        ),
      ),
    );
  }

  Future<void> _copyToClipboard(logs, bool replaceSensitive,
      {WidgetRef? ref}) async {
    String logText = '';

    for (var log in logs) {
      logText += '${log.time.toIso8601String()} ${log.name} ${log.message}\n';
    }

    if (replaceSensitive) {
      final sensitiveData = _sensitiveData(ref!);
      for (var data in sensitiveData) {
        logText = logText.replaceAll(data, 'REDACTED');
      }
    }

    await Clipboard.setData(ClipboardData(text: logText));
  }

  List<String> _sensitiveData(WidgetRef ref) {
    final List<String> sensitiveData = [];
    final users = ref.read(usersProvider);

    for (var user in users) {
      if (user.email != null) sensitiveData.add(user.email);
      if (user.token != null) sensitiveData.add(user.token!);
      if (user.server != null) sensitiveData.add(user.server!.url);
      if (user.server != null) sensitiveData.add(user.server!.host);
    }

    return sensitiveData;
  }
}

class LogItem extends StatelessWidget {
  final Log log;

  const LogItem({super.key, required this.log});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          log.message,
          style: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          children: [
            PlatformText(
              log.time.toIso8601String(),
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.secondary,
                fontWeight: FontWeight.w200,
              ),
            ),
            const VerticalDivider(),
            PlatformText(
              log.name,
              style: textTheme.labelSmall?.copyWith(
                color: colorScheme.secondary,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
        const Divider(height: 6),
      ],
    );
  }
}
