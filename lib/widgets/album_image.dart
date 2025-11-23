import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/features/library/item_components/top_label.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:abs_flutter/widgets/shimmer_placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlbumImage extends ConsumerWidget {
  final String itemId;
  final double? size;
  final bool withProgress;
  final double barHeight;
  final bool hasAudio;
  final bool hasBook;
  final String? label;
  const AlbumImage(this.itemId,
      {super.key,
      this.size,
      this.withProgress = false,
      this.barHeight = 5.0,
      this.hasAudio = false,
      this.hasBook = false,
      this.label});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User? user = ref.read(currentUserProvider);
    if (user == null) return const SizedBox.shrink();
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CachedNetworkImage(
              imageUrl: '${user.server!.url}/api/items/$itemId/cover',
              httpHeaders: {
                'Authorization': 'Bearer ${user.token}',
                ...?user.server?.headers,
              },
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholderFadeInDuration: const Duration(milliseconds: 150),
              fadeInDuration: const Duration(milliseconds: 150),
              fadeOutDuration: const Duration(milliseconds: 150),
              fit: BoxFit.cover,
              placeholder: (context, url) => const ShimmerPlaceholder(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          if (label != null)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  constraints: const BoxConstraints(maxWidth: 120),
                  child: TopLabel(label!)),
            ),
          Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final settings = ref.watch(
                specificKeysSettingsProvider([Constants.SHOW_MEDIA_TYPE]));
            return settings[Constants.SHOW_MEDIA_TYPE]
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 6.0, right: 2.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceContainer
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (hasAudio)
                                const Icon(Icons.audiotrack, size: 16.0),
                              if (hasBook) const Icon(Icons.book, size: 16.0),
                            ]),
                      ),
                    ))
                : const SizedBox.shrink();
          }),
          if (withProgress)
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final progress = ref
                    .watch(progressProviderWithItemId(ItemEpisodeId(itemId)));
                num progressValue =
                    ((progress?.currentTime! ?? 0) / (progress?.duration ?? 1))
                        .toDouble();

                return Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                    value: progressValue.toDouble(),
                    semanticsValue: progressValue.toStringAsFixed(2),
                    semanticsLabel: S
                        .of(context)
                        .progressNum(progressValue.toStringAsFixed(2)),
                    minHeight: barHeight,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.green),
                    backgroundColor: Colors.white.withOpacity(0.3),
                  ),
                );
              },
            )
        ],
      ),
    );
  }
}
