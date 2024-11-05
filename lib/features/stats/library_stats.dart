import 'package:abs_flutter/api/library/stats/library_stats.dart' as abs;
import 'package:abs_flutter/provider/stats_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LibraryStats extends ConsumerWidget {
  const LibraryStats({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final abs.LibraryStats? libraryStats = ref.watch(libraryStatsProvider);

    print(libraryStats);

    return const Placeholder();
  }
}
