import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/widgets/shimmer_placeholder.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlbumImage extends ConsumerWidget {
  final String itemId;
  final double? size;
  final bool withProgress;
  final double barHeight;
  const AlbumImage(this.itemId,
      {super.key, this.size, this.withProgress = false, this.barHeight = 5.0});

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
          if (withProgress)
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final progress = ref
                    .watch(progressProviderWithItemId(ItemEpisodeId(itemId)));
                num progressValue = progress?.progress ?? 0.0;
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
