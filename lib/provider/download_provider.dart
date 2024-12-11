import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:saf_util/saf_util.dart';
import 'package:saf_util/saf_util_platform_interface.dart';
import 'package:path/path.dart' as path;

final downloadListProvider =
    StateNotifierProvider<DownloadListNotifier, List<DownloadInfo>>((ref) {
  return DownloadListNotifier(ref);
});

class DownloadListNotifier extends StateNotifier<List<DownloadInfo>> {
  final _ref;

  DownloadListNotifier(this._ref) : super([]) {
    _loadDownloads();
  }

  void _loadDownloads() async {
    final downloadListString = sp.getString('downloads');
    final user = _ref.read(currentUserProvider);
    if (user == null) {
      return;
    }
    final userId = user.id!;
    if (downloadListString != null) {
      try {
        final List<dynamic> decodedJson = jsonDecode(downloadListString);
        final List<DownloadInfo> downloads =
            decodedJson.map((json) => DownloadInfo.fromJson(json)).toList();
        List<DownloadInfo> userDownload = [];
        for (var download in downloads) {
          if (download.userId == userId) {
            userDownload.add(download);
          }
        }

        state = userDownload;
      } catch (e) {
        log('Error loading downloads: $e', name: 'DownloadListNotifier');
        sp.remove('downloads');
      }
    }
  }

  void addDownload(DownloadInfo download) {
    state = [...state, download];
    _saveDownloads();
  }

  String _getDownloadPath(DownloadInfo download) {
    if ( !kIsWeb && Platform.isLinux) {
      final homeDir = Directory(path.join('/home', Platform.environment['USER']!));
      return path.join(homeDir.path, '.abs_flutter', download.folderPath);
    }
    return download.folderPath;
  }

  void removeDownload(DownloadInfo download) async {
    if (!kIsWeb) {
      final String? filePath = download.files
          .firstWhereOrNull((file) => file.filePath != null)
          ?.filePath;
      if (Platform.isAndroid &&
          filePath != null &&
          filePath.startsWith('content://')) {
        try {
          // %2F
          final folderPath = filePath.substring(0, filePath.lastIndexOf('%2F'));
          final folderName = filePath.substring(
              filePath.lastIndexOf('%2F') - 36, filePath.lastIndexOf('%2F'));
          if (folderName == download.itemId ||
              folderName == download.episodeId) {
            log('Deleting folder: $folderPath', name: 'removeDownload');
            await SafUtil().delete(folderPath, true);
            final parentFolder =
                folderPath.substring(0, folderPath.lastIndexOf('%2F'));
            final List<SafDocumentFile> files =
                await SafUtil().list(parentFolder);
            if (folderName == download.episodeId && files.length <= 1) {
              final parentFolderName = parentFolder.substring(
                  parentFolder.lastIndexOf('%2F') + 3, parentFolder.length);
              if (parentFolderName == download.itemId) {
                await SafUtil().delete(parentFolder, true);
                log('Deleting parent folder: $parentFolder',
                    name: 'removeDownload');
              }
            }
          } else {
            log('Not deleting folder: $folderPath - Names do not match',
                name: 'removeDownload');
          }
        } catch (e) {
          log('Error deleting file: $e', name: 'removeDownload');
        }
      } else {
        final folder = Directory(_getDownloadPath(download));
        // For windows support / and \ in path
        final folderName = folder.path.replaceAll('\\', '/').split('/').last;
        if (folderName == download.itemId || folderName == download.episodeId) {
          log('Deleting folder: ${folder.path}', name: 'removeDownload');
          try {
            if (folderName == download.episodeId &&
                // Folder itself + meta.json
                folder.parent.listSync().length <= 2) {
              folder.parent.deleteSync(recursive: true);
            } else {
              folder.deleteSync(recursive: true);
            }
          } catch (e) {
            if (e is! PathNotFoundException) {
              rethrow;
            }
          }
        } else {
          log('Not deleting folder: ${folder.path} - Names do not match',
              name: 'removeDownload');
        }
      }
    }

    state = state.where((d) => d != download).toList();
    _saveDownloads();
  }

  void replaceDownload(DownloadInfo current, DownloadInfo newDownload) {
    state = state.map((d) => d == current ? newDownload : d).toList();
    _saveDownloads();
  }

  void updateDownloadFile(DownloadInfo current, DownloadFile file) {
    final download = state.firstWhereOrNull((d) {
      return d.itemId == current.itemId &&
          d.libraryId == current.libraryId &&
          d.userId == current.userId;
    });
    if (download == null) {
      return log('Download not found', name: 'updateDownloadFile');
    }

    for (var i = 0; i < download.files.length; i++) {
      if (download.files[i].filename == file.filename) {
        download.files[i] = file;
        break;
      }
    }

    for (var i = 0; i < state.length; i++) {
      if (state[i].itemId == current.itemId &&
          state[i].libraryId == current.libraryId &&
          state[i].userId == current.userId) {
        state[i] = download;
        break;
      }
    }

    _saveDownloads();
  }

  void _saveDownloads() {
    final downloadListString =
        jsonEncode(state.map((d) => d.toJson()).toList());
    sp.setString('downloads', downloadListString);
  }

  DownloadInfo? getDownload(String itemId, String? episodeId) {
    final currentUser = _ref.read(currentUserProvider);
    if (currentUser == null) {
      return null;
    }
    final downloads = state;
    if (downloads.isEmpty) {
      return null;
    }
    final download = downloads
        .where((element) => (element.itemId == itemId &&
            element.userId == currentUser.id &&
            element.episodeId == episodeId))
        .firstOrNull;
    return download;
  }


}
