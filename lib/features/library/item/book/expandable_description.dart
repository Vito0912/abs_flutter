import 'dart:math';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ExpandableDescription extends HookWidget {
  const ExpandableDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> expanded = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlatformText(
          S.of(context).description,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () => expanded.value = !expanded.value,
          child: HtmlWidget(
            _convertHtmlString(description, expanded.value),
            onTapUrl: (url) => Helper.launchUrl(url),
            enableCaching: true,
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        if (_isTooLong(description))
          PlatformTextButton(
            onPressed: () => expanded.value = !expanded.value,
            child: PlatformText(expanded.value
                ? S.of(context).readLess
                : S.of(context).readMore),
          ),
        const SizedBox(height: 16.0)
      ],
    );
  }

  String _convertHtmlString(String content, bool expanded) {
    String htmlString = content.replaceAll('\\n', '<br>');
    if (!expanded) {
      htmlString = htmlString
          .split(' ')
          .sublist(0, min(50, htmlString.split(' ').length))
          .join(' ');
      if(_isTooLong(content)) htmlString += ' ...';
    }
    return htmlString;
  }

  bool _isTooLong(String content) {
    return content.split(' ').length > 50;
  }
}
