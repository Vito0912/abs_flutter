import 'dart:async';
import 'package:abs_api/abs_api.dart' as api;
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class DownloadItem {
  final DownloadTask task;
  final StreamController<TaskProgressUpdate> progressController;
  final StreamController<TaskStatusUpdate> statusController;
  final String itemId;

  DownloadItem({
    required this.task,
    required this.progressController,
    required this.statusController,
    required this.itemId,
  });

  Stream<TaskProgressUpdate> get progressStream => progressController.stream;
  Stream<TaskStatusUpdate> get statusStream => statusController.stream;

  void dispose() {
    progressController.close();
    statusController.close();
  }
}

class DownloadProvider extends ChangeNotifier {
  final List<DownloadItem> _downloads = [];
  List<DownloadItem> get downloads => _downloads;
  final Map<String, TaskStatus> _taskStatuses = {};
  final Ref ref;

  DownloadProvider(this.ref) {
    _init();
  }

  void _init() {
    // Configure notifications with grouping and click action
    FileDownloader().configureNotification(
      running: const TaskNotification(
        'Downloading',
        'Downloading {displayName}',
      ),
      complete: const TaskNotification(
        'Download complete',
        'Download of {displayName} complete',
      ),
      error: const TaskNotification(
        'Error downloading',
        'An error occurred while downloading {displayName}',
      ),
      progressBar: true
    );

    // Listen to updates
    FileDownloader().updates.listen((update) {
      if (update is TaskStatusUpdate) {
        _handleStatusUpdate(update);
      } else if (update is TaskProgressUpdate) {
        _handleProgressUpdate(update);
      }
    });
  }

  void _handleStatusUpdate(TaskStatusUpdate update) {
    final downloadItem = _downloads.firstWhere(
          (item) => item.task.taskId == update.task.taskId,
      orElse: () => _createDummyDownloadItem(update.task as DownloadTask),
    );

    downloadItem.statusController.add(update);

    if (update.status == TaskStatus.complete || update.status == TaskStatus.failed) {
      _downloads.remove(downloadItem);
      downloadItem.dispose();
    }

    _taskStatuses[update.task.taskId] = update.status;
    notifyListeners();
  }

  void _handleProgressUpdate(TaskProgressUpdate update) {
    final downloadItem = _downloads.firstWhere(
          (item) => item.task.taskId == update.task.taskId,
      orElse: () => _createDummyDownloadItem(update.task as DownloadTask),
    );

    downloadItem.progressController.add(update);
  }

  DownloadItem _createDummyDownloadItem(DownloadTask task) {
    final dummyProgressController = StreamController<TaskProgressUpdate>.broadcast();
    final dummyStatusController = StreamController<TaskStatusUpdate>.broadcast();

    return DownloadItem(
      task: task,
      progressController: dummyProgressController,
      statusController: dummyStatusController,
      itemId: '',
    );
  }

  bool get isDownloading {
    return _taskStatuses.values.any((status) =>
    status == TaskStatus.enqueued || status == TaskStatus.running);
  }

  Future<void> downloadAudioFile(
      String url, api.AudioFile file, api.LibraryItemBase item) async {
    final fileName = file.metadata!.filename!;
    final name = item.media!.metadata!.title;

    await _download(url, fileName, name, item.id!);
  }

  Future<void> _download(
      String url, String fileName, String? displayName, String itemId) async {
    final User? user = ref.read(currentUserProvider);
    if (user == null) {
      return;
    }
    final token = user.token;
    final bool onlyWifi = user.setting?.settings['downloadsOnlyViaWifi'] ?? false;

    final task = DownloadTask(
      url: '$url?token=${token.toString()}',
      filename: fileName,
      updates: Updates.statusAndProgress,
      requiresWiFi: onlyWifi,
      directory: 'abs_flutter',
      displayName: displayName ?? fileName,
      group: 'download_group',
    );

    await FileDownloader().enqueue(task);

    final progressController = StreamController<TaskProgressUpdate>.broadcast();
    final statusController = StreamController<TaskStatusUpdate>.broadcast();

    final downloadItem = DownloadItem(
      task: task,
      progressController: progressController,
      statusController: statusController,
      itemId: itemId,
    );

    _downloads.add(downloadItem);
    notifyListeners();
  }

  void cancelDownload(DownloadItem downloadItem) async {
    try {
      await FileDownloader().cancelTaskWithId(downloadItem.task.taskId);

      _downloads.remove(downloadItem);

      downloadItem.dispose();

      notifyListeners();
    } catch (e) {
      debugPrint('Failed to cancel download: $e');
    }
  }

  @override
  void dispose() {
    for (var download in _downloads) {
      download.dispose();
    }
    super.dispose();
  }
}

final downloadProvider = ChangeNotifierProvider((ref) => DownloadProvider(ref));
