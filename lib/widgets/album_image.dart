import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

class AlbumImage extends ConsumerWidget {
  final String itemId;
  final double? size;
  const AlbumImage(this.itemId, {super.key, this.size});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final User? user = ref.read(currentUserProvider);
    if(user == null) return const SizedBox.shrink();
    return Container(
      width: size,  // Or provide specific width and height
      height: size, // Or use other constraints based on your layout
      child: AspectRatio(
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
          fit: BoxFit.cover,
          placeholder: (context, url) => _shimmerPlaceholder(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
    ;
  }

  Widget _shimmerPlaceholder() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
