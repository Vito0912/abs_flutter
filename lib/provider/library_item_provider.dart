import 'dart:convert';
import 'dart:io';

import 'package:abs_flutter/api/library_items/library_item.dart';
import 'package:abs_flutter/api/library_items/request/library_item_request.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;

final itemProvider =
    FutureProvider.autoDispose.family<LibraryItem?, String>((ref, id) async {
  final api = ref.watch(apiProviderNew);

  if (api == null) {
    return null;
  }

  final downloads = ref.read(downloadListProvider);
  final DownloadInfo? download =
      downloads.where((element) => element.itemId == id).firstOrNull;

  log(download.toString());

  if (download == null || !download.isDownloaded()) {
    return await _fetchData(api, id);
  } else {
    final String originalFilePath = download.folderPath;
    late final String directory;
    if (download.type == MediaTypeDownload.podcast) {
      directory = Directory(originalFilePath).parent.path;
    } else {
      directory = Directory(originalFilePath).path;
    }

    try {
      final String newFilePath = p.join(directory, 'meta.json');
      final File file = File(newFilePath);

      log('Reading file: $newFilePath');

      return LibraryItem.fromJson(jsonDecode(file.readAsStringSync()));
    } catch (e) {
      log(e.toString());
      return await _fetchData(api, id);
    }
  }
});

Future<LibraryItem?> _fetchData(ABSApi api, String id) async {
  try {
    final response = await api.getLibraryItemApi().getLibraryItem(
          libraryItemRequest: LibraryItemRequest(id: id),
        );
    if (response.data == null) {
      return null;
    }
    return response.data;
  } catch (e) {
    if (e is DioException) {
      if (e.response != null && e.response!.data != null) {
        log(e.response!.data!.toString(), name: 'itemProvider');
        return null;
      }
      log(e.toString(), name: 'itemProvider');
      return null;
    }

    return null;
  }
}
