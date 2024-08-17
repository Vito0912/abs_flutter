import 'dart:async';
import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressProvider extends ChangeNotifier {
  final Ref ref;
  AbsApi? api;
  Map<String, MediaProgress>? progress;
  DateTime? lastUpdated;

  ProgressProvider(this.ref) {
    ref.listen<AbsApi?>(apiProvider, (previousApi, nextApi) {
      api = nextApi;
    });

    addListener(() => print('Change'));
  }

  Future<void> getAllProgress() async {
    if (api == null) return;
    if (lastUpdated != null &&
        DateTime.now().difference(lastUpdated!).inSeconds < 1) {
      return;
    }
    lastUpdated = DateTime.now();
    log('getProgress', name: 'progress_provider');

    final offlineProgress = ref.read(offlineProgressProviderHandler);

    Map<String, MediaProgress>? newProgress = {};

    if (offlineProgress.isNotEmpty) {
      for (ProgressItem item in offlineProgress) {
        MediaProgressBuilder builder = MediaProgressBuilder()
          ..currentTime = item.currentTime
          ..duration = item.durationOfItem
          ..progress = item.currentTime / item.durationOfItem;
        newProgress['${item.itemId}${item.episodeId ?? ''}'] = builder.build();
      }
    }

    try {
      final response = await api!.getMeApi().getMe();
      User user = response.data!;

      if (user.mediaProgress != null) {
        for (var media in user.mediaProgress!) {
          newProgress['${media.libraryItemId!}${media.episodeId ?? ''}'] =
              media;
        }
      }
    } catch (e) {
      log(e.toString(), name: 'progress_provider');
    }

    if (progress == null || !mapEquals(progress, newProgress)) {
      progress = newProgress;
      notifyListeners();
    }
  }

  Future<void> getProgressWithLibraryItem(String id,
      {String? episodeId}) async {
    if (api == null) return;

    final Completer<void> progressChanged = Completer<void>();
    Map<String, MediaProgress>? previousProgress = Map.from(progress ?? {});

    try {
      final offlineProgress = ref.read(offlineProgressProviderHandler);

      if (offlineProgress.isNotEmpty) {
        int index =
            offlineProgress.indexWhere((element) => element.itemId == id);
        if (index != -1) {
          ProgressItem item = offlineProgress[index];
          MediaProgressBuilder builder = MediaProgressBuilder()
            ..currentTime = item.currentTime
            ..duration = item.durationOfItem
            ..progress = item.currentTime / item.durationOfItem;

          String key = id + (episodeId ?? '');
          progress ??= {};

          progress![key] = builder.build();
        }
      }

      final connection = ref.read(connectionProvider);

      if (connection) {
        final response =
            await api!.getMeApi().getProgressLibraryItem(libraryItemId: id);
        MediaProgress fetchedProgress = response.data!;

        String key = id + (episodeId ?? '');
        progress![key] = fetchedProgress;

        // Notify listeners only if the progress of the specific item has changed
        if (!mapEquals(previousProgress, progress)) {
          notifyListeners();
        }
      }
    } catch (e) {
      progressChanged.completeError(e);
    } finally {
      if (!progressChanged.isCompleted) {
        progressChanged.complete();
      }
    }

    return progressChanged.future;
  }

  void updateProgressForItem(
      String id, String? episodeId, double currentTime, double percentage) {
    if (progress == null) return;

    String key = id + (episodeId ?? '');

    MediaProgress? existingProgress = progress![key];
    if (existingProgress == null) return;

    MediaProgressBuilder builder = existingProgress.toBuilder();
    builder.currentTime = currentTime;
    builder.progress = percentage;
    progress![key] = builder.build();

    notifyListeners();
  }

  Map<String, MediaProgress>? getProgress() => progress;
}

final progressProvider = ChangeNotifierProvider<ProgressProvider>((ref) {
  return ProgressProvider(ref);
});

final progressProviderWithItemId =
    Provider.family<MediaProgress?, ItemEpisodeId>(
  (ref, item) {
    final progressProviderValue = ref.watch(progressProvider);
    final progressMap = progressProviderValue.progress;

    if (progressMap == null) return null;

    String key = '${item.itemId}${item.episodeId ?? ''}';
    return progressMap[key];
  },
);

class ItemEpisodeId {
  final String itemId;
  final String? episodeId;

  ItemEpisodeId(this.itemId, [this.episodeId]);
}
