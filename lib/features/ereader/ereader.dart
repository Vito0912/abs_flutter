import 'package:abs_flutter/generated/l10n.dart';
import 'package:epubx/epubx.dart' hide Image;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class EReader extends StatefulWidget {
  final String itemId;
  const EReader({super.key, required this.itemId});

  @override
  State<EReader> createState() => _EReaderState();
}

class _EReaderState extends State<EReader> {
  EpubBook? epubBook;

  @override
  void initState() {

    // Load the EPUB file from assets
    rootBundle
        .load('assets/xxx')
        .then((ByteData book) async {
      // Convert ByteData to Uint8List
      Uint8List uint8List = book.buffer.asUint8List();

      // Read the EPUB book
      EpubReader.readBook(uint8List).then(
        (EpubBook epubBook) {
          setState(() {
            this.epubBook = epubBook;
          });
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String? htmlContent;
    List<CssRule> cssRules = [];
    if (epubBook != null) {
      print(epubBook!.AuthorList);
      print(epubBook!.Content!.AllFiles);
      for (var item in epubBook!.Content!.AllFiles!.entries) {
        if (item.value.ContentType == EpubContentType.CSS) {
          EpubTextContentFile cssFile = item.value as EpubTextContentFile;
          cssRules.addAll(parseCss(cssFile.Content!));
        } else if (item.value.ContentType == EpubContentType.XHTML_1_1) {
          EpubTextContentFile xhtmlFile = item.value as EpubTextContentFile;
          htmlContent ??= '';
          htmlContent += xhtmlFile.Content!;
        }
      }
      htmlContent = '$htmlContent';
    }
    //log(htmlContent ?? '');
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(S.of(context).ebookreader),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SelectionArea(child:
            LayoutBuilder(builder: (context, BoxConstraints constraints) {
          print(constraints.widthConstraints());
          print(constraints.heightConstraints());
          return HtmlWidget(
            htmlContent ?? '',
            buildAsync: true,
            factoryBuilder: () {},
            customStylesBuilder: (element) {
              for (CssRule rule in cssRules) {
                if (rule.type == 'tag' && rule.selector == element.localName) {
                  return rule.properties;
                }
                if (rule.type == 'class' &&
                    element.classes.contains(rule.selector)) {
                  return rule.properties;
                }
                if (rule.type == 'id' && element.id == rule.selector) {
                  return rule.properties;
                }
                if (rule.type == 'at-rule' && rule.selector == 'body') {
                  return rule.properties;
                }
              }

              return null;
            },
            renderMode: RenderMode.column,
          );
        })),
      ),
    );
  }

  List<CssRule> parseCss(String css) {
    final List<CssRule> rules = [];

    // Regular expression to match each selector and its block of properties
    final ruleRegex = RegExp(r'([.#@]?[a-zA-Z0-9_-]+)\s*\{([^}]*)\}');

    for (final match in ruleRegex.allMatches(css)) {
      var selector = match.group(1)!.trim();
      final propertiesBlock = match.group(2)!.trim();

      // Determine type based on the first character of the selector
      String type;
      if (selector.startsWith('.')) {
        type = 'class';
        selector = selector.substring(1);
      } else if (selector.startsWith('#')) {
        type = 'id';
        selector = selector.substring(1);
      } else if (selector.startsWith('@')) {
        type = 'at-rule';
        selector = selector.substring(1);
      } else {
        type = 'tag';
      }

      // Parse the properties into a map
      final properties = <String, String>{};
      final propertiesRegex = RegExp(r'([a-zA-Z-]+)\s*:\s*([^;]+);?');
      for (final propertyMatch in propertiesRegex.allMatches(propertiesBlock)) {
        String key = propertyMatch.group(1)!.trim();
        final value = propertyMatch.group(2)!.trim();
        properties[key] = value;
      }

      // Create a CssRule and add it to the list
      rules
          .add(CssRule(type: type, selector: selector, properties: properties));
    }

    return rules;
  }
}

class CssRule {
  final String type;
  final String selector;
  final Map<String, String> properties;

  CssRule({
    required this.type,
    required this.selector,
    required this.properties,
  });

  @override
  String toString() {
    return 'Type: $type, Selector: $selector, Properties: $properties';
  }
}
