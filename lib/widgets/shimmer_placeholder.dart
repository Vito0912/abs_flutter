import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlaceholder extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  const ShimmerPlaceholder({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.shadow.withOpacity(0.4),
      highlightColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
      child: child == null
          ? Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              width: width,
              height: height)
          : child!,
    );
  }
}
