import 'dart:convert';
import 'package:abs_flutter/provider/log_provider.dart';
import 'dart:io';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    }
  }

  void addDownload(DownloadInfo download) {
    state = [...state, download];
    _saveDownloads();
  }

  void removeDownload(DownloadInfo download) async {
    if (!kIsWeb && download.filePath != null) {
      final folder = Directory(download.filePath!).parent;
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
      }
    }

    state = state.where((d) => d != download).toList();
    _saveDownloads();
  }

  void replaceDownload(DownloadInfo current, DownloadInfo newDownload) {
    state = state.map((d) => d == current ? newDownload : d).toList();
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
