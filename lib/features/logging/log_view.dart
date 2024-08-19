import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:flutter/material.dart';
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
            icon: Icon(context.platformIcons.delete),
            onPressed: () => ref.read(logProvider.notifier).clearLogs(),
          ),
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
