import 'dart:convert';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:flutter/material.dart';

class Helper {
  static String base64UrlEncode(String input) {
    // Base64-Encode
    String base64Encoded = base64.encode(utf8.encode(input));

    // URL-Encode
    String urlEncoded = Uri.encodeComponent(base64Encoded);

    return urlEncoded;
  }

  static Widget returnLibraryItem(String type) {
    switch (type) {
      case 'database':
        return Icon(Icons.book);
      case 'audiobookshelf':
        return Icon(Icons.mic);
      case 'books-1':
        return Icon(Icons.music_note);
      case 'books-2':
        return Icon(Icons.music_note);
      case 'book-1':
        return Icon(Icons.music_note);
      case 'microphone-1':
        return Icon(Icons.book);
      case 'microphone-3':
        return Icon(Icons.mic);
      case 'radio':
        return Icon(Icons.music_note);
      case 'podcast':
        return Icon(Icons.music_note);
      case 'rss':
        return Icon(Icons.music_note);
      case 'headphones':
        return Icon(Icons.mic);
      case 'music':
        return Icon(Icons.music_note);
      case 'file-picture':
        return Icon(Icons.music_note);
      case 'rocket':
        return Icon(Icons.music_note);
      case 'power':
        return Icon(Icons.book);
      case 'star':
        return Icon(Icons.mic);
      case 'heart':
        return Icon(Icons.music_note);
      default:
        return Icon(Icons.question_mark_rounded);
    }
  }

  static String formattedTime(Duration position) {
    int totalMinutes = position.inMinutes;
    int hours = totalMinutes >= 60 ? totalMinutes ~/ 60 : 0;
    int minutes = totalMinutes % 60;
    int seconds = position.inSeconds % 60;

    String formattedTime = '';
    if (hours > 0) {
      formattedTime = '${hours.toString().padLeft(2, '0')}:';
    }
    formattedTime +=
        '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';

    return formattedTime;
  }

  static String formatTimeToClock(num? seconds) {
    if (seconds == null) return '00:00';
    return formattedTime(Duration(seconds: seconds.toInt()));
  }

  static String formatTimeToReadable(num? seconds, {bool precise = false}) {
    seconds ??= 0;

    int days = seconds ~/ 86400;
    int hours = (seconds % 86400) ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;

    if (!precise) {
      if (seconds < 60) return S.current.dateFormatSecond(seconds.toInt());
      if (seconds < 3600) return S.current.dateFormatMinute(minutes);
      if (seconds < 86400) {
        return S.current.dateFormatHourMinute(hours, minutes);
      }
      return S.current.dateFormatDayHourMinute(days, hours, minutes);
    } else {
      if (seconds < 60) return S.current.dateFormatSecond(seconds.toInt());
      if (seconds < 3600) {
        return S.current.dateFormatMinuteSecond(minutes, seconds.toInt());
      }
      if (seconds < 86400) {
        return S.current
            .dateFormatHourMinuteSecond(hours, minutes, seconds.toInt());
      }
      return S.current
          .dateFormatDayHourMinuteSecond(days, hours, minutes, seconds.toInt());
    }
  }

  static convertPlayerStatusToHistoryType(PlayerStatus status) {
    switch (status) {
      case PlayerStatus.playing:
        return HistoryType.play;
      case PlayerStatus.paused:
        return HistoryType.pause;
      case PlayerStatus.stopped:
        return HistoryType.stop;
      default:
        return HistoryType.unknown;
    }
  }
}
