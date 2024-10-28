import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/features/library/item/book/progress.dart';
import 'package:abs_flutter/features/player/modules/chapters.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Metainfo extends StatelessWidget {
  const Metainfo({super.key, required this.castItem});

  final LibraryItemBase castItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Progress(
          item: castItem,
        ),
        const SizedBox(height: 16.0),
        if (castItem.media?.audioFiles != null) ...[
          PlatformText(
            S.of(context).itemLength(Helper.formatTimeToReadable(
                _totalDuration(castItem.media!.audioFiles!.toList()
            ))),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        const SizedBox(height:4.0),
        if (castItem.media!.metadata!.publishedYear != null) ...[
          PlatformText(
            S.of(context).itemPublishedYear(
                castItem.media!.metadata!.publishedYear.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
        if (castItem.media!.chapters != null &&
            castItem.media!.chapters!.isNotEmpty) ...[
          const SizedBox(height: 4.0),
          PlatformText(
            S
                .of(context)
                .itemNumChapters(castItem.media!.chapters!.length.toString()),
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 4.0),
          Chapters(
              chapters: castItem.media!.chapters!
                  .map((e) => {
                        'title': e?.title,
                        'start': e?.start,
                        'end': e?.end,
                      })
                  .toList(),
              child: PlatformText(S.of(context).viewChapters))
        ],
      ],
    );
  }

  double _totalDuration(List<AudioFile> files) {
    double total = 0;
    for (var file in files) {
      total += file.duration!;
    }
    return total;
  }
}
