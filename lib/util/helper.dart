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

  static Widget returnLibraryItem(String type, BuildContext context) {
    try {
      return Semantics(
        label: 'Icon of $type',
        child: Image.asset('assets/images/library_icons/icon-$type.png',
            width: 24, height: 24,
        color: Theme.of(context).colorScheme.onSurface,),
      );
    } catch (e) {
      return const Icon(Icons.error);
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

  static String formatPercentage(double progress) {
    progress = progress * 100;
    String formatted =
        progress.toStringAsFixed(2); // Format auf 2 Dezimalstellen
    if (formatted.endsWith('.00')) {
      formatted =
          formatted.substring(0, formatted.length - 3); // Entferne ".00"
    }
    return formatted;
  }
}
