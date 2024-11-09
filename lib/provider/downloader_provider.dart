import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/api/library_items/audio_file.dart';
import 'package:abs_flutter/api/library_items/episode.dart';
import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/settings_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:abs_flutter/util/constants.dart';
import 'package:background_downloader/background_downloader.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DownloadItem {
  final DownloadTask task;
  final StreamController<TaskProgressUpdate> progressController;
  final StreamController<TaskStatusUpdate> statusController;
  final String itemId;
  final String userId;
  final String? episodeId;

  DownloadItem({
    required this.task,
    required this.progressController,
    required this.statusController,
    required this.userId,
    required this.itemId,
    required this.episodeId,
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
          S.current.downloadingBody("{displayName}"),
        ),
        complete: TaskNotification(
          S.current.downloadComplete,
          S.current.downloadCompleteBody("{displayName}"),
        ),
        error: TaskNotification(
          S.current.errorDownloading,
          S.current.errorDownloadingBody("{displayName}"),
        ),
        progressBar: true,
        groupNotificationId: 'abs_flutter_downloads');

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
          download.episodeId == downloadItem.episodeId &&
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

    if (update.status == TaskStatus.failed ||
        update.status == TaskStatus.canceled ||
        update.status == TaskStatus.notFound) {
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
        episodeId: null,
        userId: '');
  }

  bool get isDownloading {
    return _taskStatuses.values.any((status) =>
        status == TaskStatus.enqueued || status == TaskStatus.running);
  }

  Future<void> downloadAudioFile(
      String url, AudioFile file, LibraryItem item) async {
    final fileName = file.metadata!.filename!;
    final name = item.media!.bookMedia!.metadata!.title;

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

    if (metaPath == null) {
      log('Failed to download file: $fileName. Meta path is null. Removing files',
          name: 'DownloadProvider');
      ref.read(downloadListProvider.notifier).removeDownload(downloadInfo);
    }

    // Save item to BaseDirectory.applicationDocuments/abs_flutter/itemId/meta.json
    String json = jsonEncode(item);

    if (metaPath != null) {
      // Create the parent directory
      final dir = Directory(metaPath).parent;
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }
      final file = File(metaPath);
      file.writeAsString(json);
    }
  }

  Future<void> downloadPodcastFile(
      String url, Episode item, LibraryItem libraryItem) async {
    final fileName = item.audioFile!.metadata.filename;
    final name = item.title;

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
      index: int.parse(item.audioFile!.ino!),
      type: MediaTypeDownload.podcast,
      userId: userId,
      filename: item.audioFile!.metadata!.filename!,
      format: item.audioFile!.metadata!.ext!,
      libraryId: libraryItem.libraryId!,
      itemId: libraryItem.id!,
      episodeId: item.id,
      size: item.audioFile!.metadata!.size!,
      displayName: name ?? fileName,
      libraryName: libraries.value!.data!.libraries!
          .firstWhere((library) => library.id == libraryItem.libraryId)
          .name!,
      status: TaskStatus.enqueued,
    );

    String? metaPath = await _download(url, fileName, name, item.libraryItemId!,
        episodeId: item.id);

    downloadList.add(downloadInfo);

    if (metaPath == null) {
      log('Failed to download file: $fileName. Meta path is null. Removing files',
          name: 'DownloadProvider');
      ref.read(downloadListProvider.notifier).removeDownload(downloadInfo);
    }

    // Save item to BaseDirectory.applicationDocuments/abs_flutter/itemId/meta.json
    String jsonLibrary = jsonEncode(libraryItem);
    String jsonEpisode = jsonEncode(item);

    if (metaPath != null) {
      // Create the parent directory
      final dir = Directory(metaPath).parent;
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }
      File file = File('${dir.parent.path}/meta.json');
      file.writeAsString(jsonLibrary);
      file = File(metaPath);
      file.writeAsString(jsonEpisode);
    }
  }

  Future<String?> _download(
      String url, String fileName, String? displayName, String itemId,
      {String? episodeId}) async {
    final User? user = ref.read(currentUserProvider);
    if (user == null) {
      return null;
    }
    final token = user.token;
    final bool onlyWifi =
        user.setting?.settings['downloadsOnlyViaWifi'] ?? false;

    late String savePath;
    if (episodeId != null) {
      savePath = 'abs_flutter/$itemId/$episodeId';
    } else {
      savePath = 'abs_flutter/$itemId';
    }
    final settings =
        ref.read(specificKeysSettingsProvider([Constants.DOWNLOAD_PATH]));

    if (settings[Constants.DOWNLOAD_PATH] != null) {
      if (episodeId != null) {
        savePath = '${settings[Constants.DOWNLOAD_PATH]}/$itemId/$episodeId';
      } else {
        savePath = '${settings[Constants.DOWNLOAD_PATH]}/$itemId';
      }
    }

    BaseDirectory baseDirectory = settings[Constants.DOWNLOAD_PATH] == null
        ? BaseDirectory.applicationDocuments
        : BaseDirectory.root;

    log('Downloading to: $savePath ($baseDirectory)');

    final task = DownloadTask(
      url: '$url?token=${token.toString()}',
      filename: fileName,
      updates: Updates.statusAndProgress,
      baseDirectory: baseDirectory,
      requiresWiFi: onlyWifi,
      directory: savePath,
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
      episodeId: episodeId,
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

      final downloadList = ref.read(downloadListProvider);
      final download = downloadList.firstWhereOrNull(
        (download) =>
            download.filename == downloadItem.task.filename &&
            download.itemId == downloadItem.itemId &&
            download.episodeId == downloadItem.episodeId &&
            download.userId == downloadItem.userId,
      );
      if (download != null) {
        ref.read(downloadListProvider.notifier).removeDownload(download);
      }

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
