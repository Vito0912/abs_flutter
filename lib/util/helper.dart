import 'dart:convert';

import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/models/history.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:url_launcher/url_launcher_string.dart';

class Helper {
  static String base64UrlEncode(String input) {
    // Base64-Encode
    String base64Encoded = base64.encode(utf8.encode(input));

    // URL-Encode
    String urlEncoded = Uri.encodeComponent(base64Encoded);

    return urlEncoded;
  }

  static String? sortString(String? key, String? value) {
    if (key == null) return null;
    if (value == null) return key;
    return '$key.${base64UrlEncode(value)}';
  }

  static Widget returnLibraryItem(String type) {
    switch (type) {
      case 'database':
        return const Icon(Icons.book);
      case 'audiobookshelf':
        return const Icon(Icons.mic);
      case 'books-1':
        return const Icon(Icons.music_note);
      case 'books-2':
        return const Icon(Icons.music_note);
      case 'book-1':
        return const Icon(Icons.music_note);
      case 'microphone-1':
        return const Icon(Icons.book);
      case 'microphone-3':
        return const Icon(Icons.mic);
      case 'radio':
        return const Icon(Icons.music_note);
      case 'podcast':
        return const Icon(Icons.music_note);
      case 'rss':
        return const Icon(Icons.music_note);
      case 'headphones':
        return const Icon(Icons.mic);
      case 'music':
        return const Icon(Icons.music_note);
      case 'file-picture':
        return const Icon(Icons.music_note);
      case 'rocket':
        return const Icon(Icons.music_note);
      case 'power':
        return const Icon(Icons.book);
      case 'star':
        return const Icon(Icons.mic);
      case 'heart':
        return const Icon(Icons.music_note);
      default:
        return const Icon(Icons.question_mark_rounded);
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

  static String formatTimeToReadable(num? seconds,
      {bool precise = false, bool short = false}) {
    if (short) return formatTimeToReadableShort(seconds, precise: precise);

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
      num timeSeconds = seconds % 60;
      if (seconds < 60) return S.current.dateFormatSecond(timeSeconds.toInt());
      if (seconds < 3600) {
        return S.current.dateFormatMinuteSecond(minutes, timeSeconds.toInt());
      }
      if (seconds < 86400) {
        return S.current
            .dateFormatHourMinuteSecond(hours, minutes, timeSeconds.toInt());
      }
      return S.current.dateFormatDayHourMinuteSecond(
          days, hours, minutes, timeSeconds.toInt());
    }
  }

  static formatTimeToReadableShort(num? seconds, {bool precise = false}) {
    seconds ??= 0;

    int days = seconds ~/ 86400;
    int hours = (seconds % 86400) ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;

    if (!precise) {
      if (seconds < 60) return S.current.dateFormatSecondShort(seconds.toInt());
      if (seconds < 3600) return S.current.dateFormatMinuteShort(minutes);
      if (seconds < 86400) {
        return S.current.dateFormatHourMinuteShort(hours, minutes);
      }
      return S.current.dateFormatDayHourMinuteShort(days, hours, minutes);
    } else {
      num timeSeconds = seconds % 60;
      if (seconds < 60) {
        return S.current.dateFormatSecondShort(timeSeconds.toInt());
      }
      if (seconds < 3600) {
        return S.current
            .dateFormatMinuteSecondShort(minutes, timeSeconds.toInt());
      }
      if (seconds < 86400) {
        return S.current.dateFormatHourMinuteSecondShort(
            hours, minutes, timeSeconds.toInt());
      }
      return S.current.dateFormatDayHourMinuteSecondShort(
          days, hours, minutes, timeSeconds.toInt());
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

  static Future<bool> launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    await launcher.launchUrl(uri, mode: LaunchMode.externalApplication);
    return true;
  }

  static String getCurrentRoute(GoRouter router) {
    final RouteMatch lastMatch =
        router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : router.routerDelegate.currentConfiguration;
    final String location = matchList.uri.toString();
    return location;
  }
}
