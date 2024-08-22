import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/progress_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

List<PodcastEpisode> filterEpisodes(
    List<PodcastEpisode> episodes, String filter, WidgetRef ref) {
  final progresses = ref.read(progressProvider);
  switch (filter) {
    case 'Incomplete':
      return episodes.where((episode) {
        final progress =
            progresses.progress?['${episode.libraryItemId}${episode.id ?? ''}'];
        return progress != null && progress.progress! < 1.0;
      }).toList();
    case 'Complete':
      return episodes.where((episode) {
        final progress =
            progresses.progress?['${episode.libraryItemId}${episode.id ?? ''}'];
        return progress != null && progress.progress! == 1.0;
      }).toList();
    case 'In Progress':
      return episodes.where((episode) {
        final progress =
            progresses.progress?['${episode.libraryItemId}${episode.id ?? ''}'];
        return progress != null &&
            progress.progress! > 0 &&
            progress.progress! < 1.0;
      }).toList();
    default:
      return episodes;
  }
}

List<PodcastEpisode> sortEpisodes(
    List<PodcastEpisode> episodes, String sort, bool isAscending) {
  int compare<T extends Comparable<T>>(T? a, T? b) {
    if (a == null && b == null) return 0;
    if (a == null) return isAscending ? -1 : 1;
    if (b == null) return isAscending ? 1 : -1;
    return isAscending ? a.compareTo(b) : b.compareTo(a);
  }

  switch (sort) {
    case 'Episode Title':
      episodes.sort((a, b) => compare(a.title, b.title));
      break;
    case 'Episode':
      episodes.sort((a, b) => compare(a.episode, b.episode));
      break;
    case 'Pub Date':
    default:
      episodes.sort((a, b) =>
          compare(a.publishedAt.toString(), b.publishedAt.toString()));
      break;
  }
  return episodes;
}
