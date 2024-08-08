import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final downloadListProvider = StateNotifierProvider<DownloadListNotifier, List<DownloadInfo>>((ref) {
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
    if(user == null) {
      return;
    }
    final userId = user.id!;
    if (downloadListString != null) {
      final List<dynamic> decodedJson = jsonDecode(downloadListString);
      final List<DownloadInfo> downloads = decodedJson.map((json) => DownloadInfo.fromJson(json)).toList();
      List<DownloadInfo> userDownload = [];
      for (var download in downloads) {
        print(download);
        print(userId);
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
    if(!kIsWeb && download.filePath != null) {
      final folder = Directory(download.filePath!).parent;
      // For windows support / and \ in path
      final folderName = folder.path.replaceAll('\\', '/').split('/').last;
      if(folderName == download.itemId) {
        try {
          folder.deleteSync(recursive: true);
        } catch (e) {
          if(e is! PathNotFoundException) {
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
    final downloadListString = jsonEncode(state.map((d) => d.toJson()).toList());
    sp.setString('downloads', downloadListString);
  }
}