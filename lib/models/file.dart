import 'dart:io';

import 'package:background_downloader/background_downloader.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@unfreezed
class DownloadInfo with _$DownloadInfo {
  DownloadInfo._();

  factory DownloadInfo(
      {required int index,
      required MediaTypeDownload type,
      required String userId,
      required String displayName,
      required String libraryId,
      required String libraryName,
      required String itemId,
      required List<DownloadFile> files,
      String? episodeId,
      String? mimeType,
      String? embeddedCoverArt}) = _DownloadInfo;

  factory DownloadInfo.fromJson(Map<String, dynamic> json) =>
      _$DownloadInfoFromJson(json);

  bool isDownloaded() {
    return files.any((element) =>
        element.status == TaskStatus.complete && element.filePath != null);
  }

  String get folderPath {
    String fullPath =
        files.firstWhere((element) => element.filePath != null).filePath!;

    return File(fullPath).parent.path;
  }
}

@unfreezed
class DownloadFile with _$DownloadFile {
  DownloadFile._();

  factory DownloadFile({
    required String filename,
    required String format,
    required TaskStatus status,
    required int index,
    required String ino,
    String? filePath,
    double? duration,
    int? size,
    int? bitrate,
    String? codec,
  }) = _DownloadFile;

  factory DownloadFile.fromJson(Map<String, dynamic> json) =>
      _$DownloadFileFromJson(json);
}

enum MediaTypeDownload { book, podcast, ebook }
