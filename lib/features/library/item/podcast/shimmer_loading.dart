import 'package:abs_flutter/widgets/shimmer_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
          title: const ShimmerPlaceholder(
        height: 24,
        width: 200,
      )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                const ShimmerPlaceholder(
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 16),
                const ShimmerPlaceholder(
                  height: 24,
                  width: double.infinity,
                ),
                const SizedBox(height: 32),
                ShimmerPlaceholder(
                  height: 24,
                  width: double.infinity,
                  child: Column(
                    children:
                        List.generate(3, (index) => _buildShimmerEpisode()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget buildShimmerEpisodes(int num) {
    return Column(
      children: List.generate(num, (index) => _buildShimmerEpisode()),
    );
  }

  static Widget _buildShimmerEpisode() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 16,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Container(
            width: 100,
            height: 16,
            color: Colors.white,
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
