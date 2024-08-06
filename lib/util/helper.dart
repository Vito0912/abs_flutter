import 'dart:convert';

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

  static String formattedTimeWithTime(num? seconds) {
    if (seconds == null) {
      return '0:00';
    }
    return formattedTime(Duration(seconds: seconds.toInt()));
  }


}