import 'package:abs_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ErrorPage extends StatelessWidget {
  final String shortMessage;
  final String longMessage;
  final void Function()? onRetry;
  const ErrorPage(
      {super.key,
      required this.shortMessage,
      required this.longMessage,
      this.onRetry});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PlatformText(
                shortMessage,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              PlatformText(
                longMessage,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              if (onRetry != null)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: PlatformElevatedButton(
                    onPressed: onRetry,
                    child: PlatformText(S.of(context).retry),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
