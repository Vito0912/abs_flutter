import 'dart:async';
import 'dart:io';
import 'package:abs_api/abs_api.dart' as api;
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

class DownloadItem {
  final DownloadTask task;
  final StreamController<TaskProgressUpdate> progressController;
  final StreamController<TaskStatusUpdate> statusController;
  final String itemId;
  final String userId;

  DownloadItem({
    required this.task,
    required this.progressController,
    required this.statusController,
    required this.userId,
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
        running: TaskNotification(
          S.current.downloading,
          S.current.downloadingBody,
        ),
        complete: TaskNotification(
          S.current.downloadComplete,
          S.current.downloadCompleteBody,
        ),
        error: TaskNotification(
          S.current.errorDownloading,
          S.current.errorDownloadingBody,
        ),
        progressBar: true);

    // Listen to updates
    FileDownloader().updates.listen((update) {
      if (update is TaskStatusUpdate) {
        _handleStatusUpdate(update);
      } else if (update is TaskProgressUpdate) {
        _handleProgressUpdate(update);
      }
    });
  }

  void _handleStatusUpdate(TaskStatusUpdate update) async {
    final downloadItem = _downloads.firstWhere(
      (item) => item.task.taskId == update.task.taskId,
      orElse: () => _createDummyDownloadItem(update.task as DownloadTask),
    );
    final downloadList = ref.read(downloadListProvider);
    final DownloadInfo? currentDownload = downloadList.firstWhereOrNull(
      (download) => (download.filename == downloadItem.task.filename &&
          download.itemId == downloadItem.itemId &&
          download.userId == downloadItem.userId),
    );

    if (currentDownload != null) {
      final newDownload = currentDownload.copyWith(
        status: update.status,
        filePath: update.status == TaskStatus.complete
            ? await update.task.filePath()
            : currentDownload.filePath,
      );
      final downloadListNotifier = ref.read(downloadListProvider.notifier);
      downloadListNotifier.replaceDownload(currentDownload, newDownload);
    }

    downloadItem.statusController.add(update);

    if (update.status == TaskStatus.complete ||
        update.status == TaskStatus.failed) {
      _downloads.remove(downloadItem);
      downloadItem.dispose();
    }

    if(
    update.status == TaskStatus.failed ||
    update.status == TaskStatus.canceled ||
    update.status == TaskStatus.notFound
    ) {
      // Remove the directory if the download failed
      String path = await update.task.filePath();
      Directory(path).parent.deleteSync(recursive: true);
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
    final dummyProgressController =
        StreamController<TaskProgressUpdate>.broadcast();
    final dummyStatusController =
        StreamController<TaskStatusUpdate>.broadcast();

    return DownloadItem(
        task: task,
        progressController: dummyProgressController,
        statusController: dummyStatusController,
        itemId: '',
        userId: '');
  }

  bool get isDownloading {
    return _taskStatuses.values.any((status) =>
        status == TaskStatus.enqueued || status == TaskStatus.running);
  }

  Future<void> downloadAudioFile(
      String url, api.AudioFile file, api.LibraryItemBase item) async {
    final fileName = file.metadata!.filename!;
    final name = item.media!.metadata!.title;

    final downloadList = ref.read(downloadListProvider);
    final currentUser = ref.read(currentUserProvider);
    final libraries = ref.read(librariesProvider);
    if (currentUser == null ||
        libraries.value == null ||
        libraries.value!.data == null ||
        libraries.value!.data!.libraries == null) {
      return;
    }
    final userId = currentUser.id!;

    final downloadInfo = DownloadInfo(
      index: int.parse(file.ino!),
      type: MediaTypeDownload.book,
      userId: userId,
      filename: file.metadata!.filename!,
      format: file.metadata!.ext!,
      libraryId: item.libraryId!,
      itemId: item.id!,
      size: file.metadata!.size!,
      displayName: name ?? fileName,
      libraryName: libraries.value!.data!.libraries!
          .firstWhere((library) => library.id == item.libraryId)
          .name!,
      status: TaskStatus.enqueued,
    );

    String? metaPath = await _download(url, fileName, name, item.id!);

    downloadList.add(downloadInfo);

    // Save item to BaseDirectory.applicationDocuments/abs_flutter/itemId/meta.json
    String json = api.AbsApi().serializers.toJson(api.LibraryItemBase.serializer, item);
    if(metaPath != null) {
      // Create the parent directory
      final dir = Directory(metaPath).parent;
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }
      final file = File(metaPath);
      file.writeAsString(json);
    }
  }

  Future<String?> _download(
      String url, String fileName, String? displayName, String itemId) async {
    final User? user = ref.read(currentUserProvider);
    if (user == null) {
      return null;
    }
    final token = user.token;
    final bool onlyWifi =
        user.setting?.settings['downloadsOnlyViaWifi'] ?? false;

    final task = DownloadTask(
      url: '$url?token=${token.toString()}',
      filename: fileName,
      updates: Updates.statusAndProgress,
      baseDirectory: BaseDirectory.applicationDocuments,
      requiresWiFi: onlyWifi,
      directory: 'abs_flutter/$itemId',
      displayName: displayName ?? fileName,
    );

    await FileDownloader().enqueue(task);

    final progressController = StreamController<TaskProgressUpdate>.broadcast();
    final statusController = StreamController<TaskStatusUpdate>.broadcast();

    final downloadItem = DownloadItem(
      task: task,
      progressController: progressController,
      statusController: statusController,
      itemId: itemId,
      userId: user.id!,
    );

    _downloads.add(downloadItem);
    notifyListeners();
    return task.filePath(withFilename: 'meta.json');
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

final downloaderProvider =
    ChangeNotifierProvider((ref) => DownloadProvider(ref));
