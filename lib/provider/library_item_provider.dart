import 'dart:developer';
import 'dart:io';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;

// Define your librariesProvider using FutureProvider.family
final itemProvider =
    FutureProvider.family<LibraryItemBase?, String>((ref, id) async {
  final api = ref.watch(apiProvider);

  if (api == null) {
    return null;
  }

  final downloads = ref.read(downloadListProvider);
  final DownloadInfo? download =
      downloads.where((element) => element.itemId == id).firstOrNull;

  log(download.toString());

  if (download == null) {
    try {
      final response = await api.getLibraryItemApi().getLibraryItem(id: id);
      if (response.data == null || response.data!.oneOf.value == null) {
        return null;
      }
      if (response.data!.oneOf.value is LibraryItemBase) {
        return response.data!.oneOf.value as LibraryItemBase;
      }
      return null;
    } catch (e) {
      if (e is DioException) {
        print(e);
        log(e.response!.data!.toString());
        return null;
      }

      return null;
    }
  } else {
    final String originalFilePath = download.filePath!;
    final String directory = p.dirname(originalFilePath);
    final String newFilePath = p.join(directory, 'meta.json');
    final File file = File(newFilePath);

    log('Reading file: $newFilePath');

    return api.serializers
        .fromJson(LibraryItemBase.serializer, file.readAsStringSync());
  }
});
