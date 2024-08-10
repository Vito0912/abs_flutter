import 'package:background_downloader/background_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

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
      required String filename,
      required String format,
      required String libraryId,
      required String libraryName,
      required String itemId,
      required TaskStatus status,
      required num size,
      String? filePath,
      num? duration,
      int? bitrate,
      String? codec,
      String? mimeType,
      String? embeddedCoverArt}) = _DownloadInfo;

  factory DownloadInfo.fromJson(Map<String, dynamic> json) =>
      _$DownloadInfoFromJson(json);
}

enum MediaTypeDownload { book, podcast, ebook }
