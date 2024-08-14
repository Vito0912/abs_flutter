import 'dart:async';
import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressProvider extends ChangeNotifier {
  final Ref ref;
  AbsApi? api;
  List<MediaProgress>? progress;

  ProgressProvider(this.ref) {
    ref.listen<AbsApi?>(apiProvider, (previousApi, nextApi) {
      api = nextApi;
    });

    print(api);

    addListener(() => print('Change'));
  }

  Future<void> getAllProgress() async {
    if (api == null) return;
    log('getProgress', name: 'progress_provider');

    final offlineProgress = ref.read(offlineProgressProviderHandler);

    List<MediaProgress>? newProgress = [];

    if (offlineProgress.isNotEmpty) {
      for (ProgressItem item in offlineProgress) {
        MediaProgressBuilder builder = MediaProgressBuilder()
          ..currentTime = item.currentTime
          ..duration = item.durationOfItem
          ..progress = item.currentTime / item.durationOfItem;
        newProgress.add(builder.build());
      }
    }

    try {
      final response = await api!.getMeApi().getMe();
      User user = response.data!;

      if (user.mediaProgress != null) {
        newProgress.addAll(user.mediaProgress!.toList());
      }
    } catch (e) {
      log(e.toString(), name: 'progress_provider');
    }

    if (progress == null || !listEquals(progress, newProgress)) {
      progress = newProgress;
      notifyListeners();
    }
  }

  Future<void> getProgressWithLibraryItem(String id, {String? episodeId}) async {
    if (api == null) return;

    final Completer<void> progressChanged = Completer<void>();
    List<MediaProgress>? previousProgress = List.from(progress ?? []);

    try {
      final offlineProgress = ref.read(offlineProgressProviderHandler);

      if (offlineProgress.isNotEmpty) {
        int index = offlineProgress.indexWhere((element) => element.itemId == id);
        if (index != -1) {
          ProgressItem item = offlineProgress[index];
          MediaProgressBuilder builder = MediaProgressBuilder()
            ..currentTime = item.currentTime
            ..duration = item.durationOfItem
            ..progress = item.currentTime / item.durationOfItem;
          progress ??= [];

          int indexInList =
          progress!.indexWhere((element) => element.libraryItemId == id);
          if (indexInList == -1) {
            progress!.add(builder.build());
          } else {
            progress![indexInList] = builder.build();
          }
        }
      }

      final connection = ref.read(connectionProvider);

      if (connection) {
        final response =
        await api!.getMeApi().getProgressLibraryItem(libraryItemId: id);
        MediaProgress fetchedProgress = response.data!;

        int index =
        progress!.indexWhere((element) => element.libraryItemId == id);
        if (index == -1) {
          progress!.add(fetchedProgress);
        } else {
          progress![index] = fetchedProgress;
        }

        // Notify listeners only if the progress of the specific item has changed
        if (!listEquals(previousProgress, progress)) {
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

    int index = progress!.indexWhere((element) =>
    element.libraryItemId == id && element.episodeId == episodeId);
    if (index == -1) return;

    MediaProgressBuilder builder = progress![index].toBuilder();
    builder.currentTime = currentTime;
    builder.progress = percentage;
    progress![index] = builder.build();

    notifyListeners();
  }

  List<MediaProgress>? getProgress() => progress;
}


final progressProvider = ChangeNotifierProvider<ProgressProvider>((ref) {
  return ProgressProvider(ref);
});

final progressProviderWithItemId =
    Provider.family<MediaProgress?, ItemEpisodeId>(
  (ref, item) {
    final progressProviderValue = ref.watch(progressProvider);
    final progressList = progressProviderValue.progress;

// Ensure this listens to changes
    return progressList?.firstWhereOrNull(
      (element) =>
          element.libraryItemId == item.itemId &&
          element.episodeId == item.episodeId,
    );
  },
);

class ItemEpisodeId {
  final String itemId;
  final String? episodeId;

  ItemEpisodeId(this.itemId, this.episodeId);
}
