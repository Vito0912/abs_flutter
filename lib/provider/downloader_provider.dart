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
import 'package:saf_stream/saf_stream.dart';
import 'package:saf_util/saf_util.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

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
  String? _lastError;
  String? get lastError => _lastError;

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
    final downloadItem = _downloads
        .firstWhereOrNull((item) => item.task.taskId == update.task.taskId);
    if (downloadItem == null) {
      return;
    }
    final downloadList = ref.read(downloadListProvider);

    DownloadFile? currentDownloadFile;
    DownloadInfo? currentDownload;
    for (DownloadInfo download in downloadList) {
      if (download.itemId == downloadItem.itemId &&
          download.episodeId == downloadItem.episodeId &&
          download.userId == downloadItem.userId) {
        for (DownloadFile file in download.files) {
          if (file.filename == downloadItem.task.filename) {
            currentDownloadFile = file;
            currentDownload = download;
            break;
          }
        }
      }
    }

    if (currentDownloadFile != null && currentDownload != null) {
      String? filePath;
      if (update.status == TaskStatus.complete) {
        final String? saveDir =
            ref.read(settingsProvider)[Constants.DOWNLOAD_PATH];
        if (Platform.isAndroid && saveDir != null) {
          filePath = await update.task.filePath();
          final File file = File(filePath);
          final dirPath = await SafUtil().mkdirp(
              saveDir,
              currentDownload.episodeId != null
                  ? [currentDownload.itemId, currentDownload.episodeId!]
                  : [currentDownload.itemId]);
          /* final newFile = await SafStream().writeFileBytes(dirPath.uri,
              update.task.filename, update.mimeType ?? '', fileContent,
              overwrite: true); */

          final newFile = await SafStream().pasteLocalFile(file.path,
              dirPath.uri, update.task.filename, update.mimeType ?? '',
              overwrite: true);

          filePath = newFile.uri.toString();
          file.deleteSync();
        } else {
          filePath = await update.task.filePath();
        }
      } else {
        filePath = currentDownloadFile.filePath;
      }

      final newDownload = currentDownloadFile.copyWith(
        status: update.status,
        filePath: filePath,
      );
      final downloadListNotifier = ref.read(downloadListProvider.notifier);
      downloadListNotifier.updateDownloadFile(currentDownload, newDownload);
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

      if (!kIsWeb && Platform.isLinux) {
        String homeDir = '/home/${Platform.environment['USER']}';
        path = path.replaceFirst('/.abs_flutter', '$homeDir/.abs_flutter');
      }

      Directory(path).parent.deleteSync(recursive: true);
    }

    if (update.status == TaskStatus.failed) {
      final errorMessage = update.exception?.toString() ?? '';
      if (errorMessage.contains('Permission denied')) {
        _lastError =
            'Download failed due to permission error. Please check folder permissions.';
      } else {
        _lastError = 'Download failed: $errorMessage';
      }
    }

    _taskStatuses[update.task.taskId] = update.status;
    notifyListeners();
  }

  void _handleProgressUpdate(TaskProgressUpdate update) {
    final downloadItem = _downloads
        .firstWhereOrNull((item) => item.task.taskId == update.task.taskId);

    downloadItem?.progressController.add(update);
  }

  bool get isDownloading {
    return _taskStatuses.values.any((status) =>
        status == TaskStatus.enqueued || status == TaskStatus.running);
  }

  Future<void> downloadAudioFiles(LibraryItem item) async {
    final name = item.media!.bookMedia!.metadata.title;

    final downloadList = ref.read(downloadListProvider);
    final currentUser = ref.read(currentUserProvider);
    final libraries = ref.read(librariesProvider);
    if (currentUser == null ||
        libraries.value == null ||
        libraries.value!.data == null ||
        libraries.value!.data!.libraries == null) {
      return;
    }
    final userId = currentUser.id;

    final List<AudioFile> audioFiles = item.media!.bookMedia!.audioFiles!;
    final List<DownloadFile> files = [];
    for (AudioFile file in audioFiles) {
      files.add(DownloadFile(
        index: file.index,
        ino: file.ino,
        filename: file.metadata.filename,
        size: file.metadata.size,
        status: TaskStatus.enqueued,
        duration: file.duration,
        format: file.metadata.ext,
      ));
    }

    final downloadInfo = DownloadInfo(
      index: downloadList.length,
      type: MediaTypeDownload.book,
      userId: userId,
      libraryId: item.libraryId!,
      itemId: item.id,
      displayName: name,
      libraryName: libraries.value!.data!.libraries!
          .firstWhere((library) => library.id == item.libraryId)
          .name!,
      files: files,
    );

    // Create a list to store each download task (and be able to await them)
    List<Future<String?>> downloadTasks = [];

    for (DownloadFile file in files) {
      String downloadUrl = getDownloadUrl(file.ino, currentUser, item);
      downloadTasks.add(_download(downloadUrl, file.filename, name, item.id));
    }

    downloadList.add(downloadInfo);

    List<String?> results = await Future.wait(downloadTasks);

    if (results.length != files.length) {
      log('Failed to download all files. Removing files',
          name: 'DownloadProvider');
      ref.read(downloadListProvider.notifier).removeDownload(downloadInfo);
      return;
    }

    for (int i = 0; i < results.length; i++) {
      if (results[i] == null) {
        log('Failed to download file: ${files[i].filename}. Meta path is null. Removing files',
            name: 'DownloadProvider');
        ref.read(downloadListProvider.notifier).removeDownload(downloadInfo);
        return;
      }
    }

    // Save item to BaseDirectory.applicationDocuments/abs_flutter/itemId/meta.json

    String json = jsonEncode(item);
    if (results.firstOrNull != null) {
      final dir = Directory(results.first!).parent;
      if (!dir.existsSync()) {
        await dir.create(recursive: true);
      }
      final file = File(results.first!);
      await file.writeAsString(json, flush: true);
      if (Platform.isAndroid &&
          ref.read(settingsProvider)[Constants.DOWNLOAD_PATH] != null) {
        final saveDir = ref.read(settingsProvider)[Constants.DOWNLOAD_PATH];
        final path = await SafUtil().mkdirp(saveDir, [item.id]);
        /*await SafStream().writeFileBytes(
            path.uri, 'meta.json', 'application/json', utf8.encode(json),
            overwrite: true);*/
        await SafStream().pasteLocalFile(
            results.first!, path.uri, 'meta.json', 'application/json',
            overwrite: true);
        log('Moved meta.json to: ${path.uri}', name: 'DownloadProvider');
      }
    } else {
      log('Failed to save meta.json. Removing files', name: 'DownloadProvider');
      ref.read(downloadListProvider.notifier).removeDownload(downloadInfo);
    }
  }

  Future<void> downloadPodcastFile(
      Episode item, LibraryItem libraryItem) async {
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
    final userId = currentUser.id;

    final downloadInfo = DownloadInfo(
      index: int.parse(item.audioFile!.ino),
      type: MediaTypeDownload.podcast,
      userId: userId,
      libraryId: libraryItem.libraryId!,
      itemId: libraryItem.id,
      episodeId: item.id,
      displayName: name ?? fileName,
      libraryName: libraries.value!.data!.libraries!
          .firstWhere((library) => library.id == libraryItem.libraryId)
          .name!,
      files: [
        DownloadFile(
          index: item.audioFile!.index,
          filename: item.audioFile!.metadata.filename,
          size: item.audioFile!.metadata.size,
          status: TaskStatus.enqueued,
          duration: item.audioFile!.duration,
          format: item.audioFile!.metadata.ext,
          ino: item.audioFile!.ino,
        )
      ],
    );

    String? metaPath = await _download(
        getDownloadUrl(item.audioFile!.ino, currentUser, libraryItem),
        fileName,
        name,
        item.libraryItemId,
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
        await dir.create(recursive: true);
        log('Creating directory: ${dir.path}', name: 'DownloadProvider');
      }
      File file = File('${dir.parent.path}/meta.json');
      await file.writeAsString(jsonLibrary);
      File file1 = File(metaPath);
      await file1.writeAsString(jsonEpisode);
      log('Writing meta.json to: $metaPath', name: 'DownloadProvider');

      if (Platform.isAndroid &&
          ref.read(settingsProvider)[Constants.DOWNLOAD_PATH] != null) {
        final saveDir = ref.read(settingsProvider)[Constants.DOWNLOAD_PATH];
        final path = await SafUtil().mkdirp(saveDir, [libraryItem.id, item.id]);
        final podcastPath = await SafUtil().mkdirp(saveDir, [libraryItem.id]);
        await SafStream().pasteLocalFile(
            file.path, podcastPath.uri, 'meta.json', 'application/json',
            overwrite: true);
        await SafStream().pasteLocalFile(
            metaPath, path.uri, 'meta.json', 'application/json',
            overwrite: true);
        log('Moved meta.json to: ${path.uri}', name: 'DownloadProvider');
      }
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
    Directory? homeDir;

    if (!kIsWeb && Platform.isLinux) {
      final homeDir = Platform.environment['USER'];
      savePath = path.join('/home', homeDir, '.abs_flutter');

      if (episodeId != null) {
        savePath = path.join(savePath, itemId, episodeId);
      } else {
        savePath = path.join(savePath, itemId);
      }
      } else {
        if (episodeId != null) {
          savePath = 'abs_flutter/$itemId/$episodeId';
        } else {
          savePath = 'abs_flutter/$itemId';
        }
      }

    final settings =
        ref.read(specificKeysSettingsProvider([Constants.DOWNLOAD_PATH]));

    if (settings[Constants.DOWNLOAD_PATH] != null && !Platform.isAndroid) {
      if (episodeId != null) {
        savePath = '${settings[Constants.DOWNLOAD_PATH]}/$itemId/$episodeId';
      } else {
        savePath = '${settings[Constants.DOWNLOAD_PATH]}/$itemId';
      }
    }

    BaseDirectory baseDirectory;

    if (settings[Constants.DOWNLOAD_PATH] == null && !Platform.isLinux) {
      baseDirectory = BaseDirectory.applicationDocuments;
    } else if (Platform.isAndroid) {
      baseDirectory = BaseDirectory.temporary;
    } else {
      baseDirectory = BaseDirectory.root;
    }

    log('Downloading to: $savePath ($baseDirectory)');

    if (!kIsWeb && Platform.isLinux && homeDir != null) {
      String tmpSavePath = settings[Constants.DOWNLOAD_PATH] == null
          ? path.join(homeDir.path, savePath)
          : path.join(settings[Constants.DOWNLOAD_PATH]!, savePath);

      final downloadDir = Directory(tmpSavePath);
      if (!await downloadDir.exists()) {
        try {
          await downloadDir.create(recursive: true);
        } catch (e) {
          String error = 'Failed to create download directory: $e';
          log(error, name: 'DownloadProvider');
          _lastError = error;
          return null;
        }
      }

      final testFile = File(path.join(downloadDir.path, '.write_test'));
      try {
        await testFile.writeAsString('test', flush: true);
        await testFile.delete();
      } catch (e) {
        String error = 'Failed to write to download directory: $e';
        log(error, name: 'DownloadProvider');
        _lastError = error;
        return null;
      }
    }

    final task = DownloadTask(
      url: '$url?token=${token.toString()}',
      filename: fileName,
      updates: Updates.statusAndProgress,
      baseDirectory: baseDirectory,
      requiresWiFi: onlyWifi,
      directory: savePath,
      allowPause: false,
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
      userId: user.id,
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

      final List<DownloadInfo> downloadList = ref.read(downloadListProvider);
      final DownloadInfo? download = downloadList.firstWhereOrNull(
        (download) =>
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

  String getDownloadUrl(String fileId, User user, LibraryItem libraryItem) {
    return '${user.server!.url}/api/items/${libraryItem.id}/file/$fileId/download';
  }

  void clearError() {
    _lastError = null;
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
