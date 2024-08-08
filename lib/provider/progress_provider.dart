
import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/progress_item.dart';
import 'package:abs_flutter/models/user.dart' as m;
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/progress_timer_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProgressProvider extends ChangeNotifier {
  final Ref ref;
  AbsApi? api;
  List<MediaProgress>? progress;

  ProgressProvider(this.ref) {
    // Listen to changes in the API provider and update the API instance
    ref.listen<AbsApi?>(apiProvider, (previousApi, nextApi) {
      api = nextApi;
      getAllProgress();  // Refresh progress whenever the API changes
    });

    // Initialize the API and fetch the initial progress data
    api = ref.read(apiProvider);
    getAllProgress();
  }

  Future<void> getAllProgress() async {
    if (api == null) {
      return;
    }

    final offlineProgress = ref.read(offlineProgressProviderHandler);

      try {
        final response = await api!.getMeApi().getMe();

        User user = response.data!;

        if (user.mediaProgress == null) {
          progress = [];
        } else {
          progress = user.mediaProgress!.toList();
        }
      } catch (e) {
        if (e is DioException) {
          log(e.response?.data?.toString() ?? e.toString());
        } else {
          log(e.toString());
        }
        return;
      }

    for (ProgressItem item in offlineProgress) {
      progress ??= [];
      int index = progress!.indexWhere((element) => element.libraryItemId == item.itemId);
      if(index >= 0) {
        MediaProgressBuilder builder = progress![index].toBuilder();
        builder.currentTime = item.currentTime;
        builder.duration = item.durationOfItem;
        builder.progress = item.currentTime / item.durationOfItem;
        progress![index] = builder.build();
      }
    }

    notifyListeners();
  }

  Future<void> getProgressWithLibraryItem(String id) async {
    if (api == null) {
      return;
    }
    try {
      final response = await api!.getMeApi().getProgressLibraryItem(libraryItemId: id);

      Response<MediaProgress> progressResponse = response;

      MediaProgress progress = progressResponse.data!;

      // Add or update the progress data
      if (this.progress == null) {
        this.progress = [progress];
      } else {
        int index = this.progress!.indexWhere((element) => element.libraryItemId == id);
        if (index == -1) {
          this.progress!.add(progress);
        } else {
          this.progress![index] = progress;
        }
      }

      notifyListeners();
    } catch (e) {
      if (e is DioException) {
        log(e.response?.data?.toString() ?? e.toString());
      } else {
        log(e.toString());
      }
      return;
    }
    return;
  }

  void updateProgressForItem(String id, double currentTime) {
    if (progress == null) {
      return;
    }

    int index = progress!.indexWhere((element) => element.libraryItemId == id);
    if (index == -1) {
      return;
    }

    MediaProgressBuilder builder = progress![index].toBuilder();
    builder.currentTime = currentTime;

    progress![index] = builder.build();

    notifyListeners();
  }

  List<MediaProgress>? getProgress() {
    return progress;
  }
}

final progressProvider = ChangeNotifierProvider<ProgressProvider>((ref) {
  return ProgressProvider(ref);
});

// Separate provider for reactive watching
final mediaProgressProvider = StateNotifierProvider<MediaProgressNotifier, List<MediaProgress>>((ref) {
  return MediaProgressNotifier(ref.read(progressProvider).getProgress());
});

class MediaProgressNotifier extends StateNotifier<List<MediaProgress>> {
  MediaProgressNotifier(List<MediaProgress>? initialProgress) : super(initialProgress ?? []);
}