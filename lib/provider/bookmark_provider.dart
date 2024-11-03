import 'dart:async';

import 'package:abs_flutter/api/me/bookmark.dart';
import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookmarkProvider extends ChangeNotifier {
  final Ref ref;
  List<Bookmark>? bookmarks;
  DateTime? lastUpdated;
  ABSApi? api;

  BookmarkProvider(this.ref) {
    api = ref.read(apiProviderNew);
    ref.listen<ABSApi?>(apiProviderNew, (previousApi, nextApi) {
      api = nextApi;
    });

    addListener(() {});
  }

  Future<void> fetchAllBookmarks() async {
    if (api == null) return;
    if (lastUpdated != null &&
        DateTime.now().difference(lastUpdated!).inSeconds < 1) {
      return;
    }
    lastUpdated = DateTime.now();
    log('getBookmarks', name: 'progress_provider');

    List<Bookmark> newBookmarks = [];

    try {
      final response = await api!.getMeApi().getUser();
      User user = response.data!;

      if (user.bookmarks != null) {
        newBookmarks = user.bookmarks!;
      }
    } catch (e) {
      log(e.toString(), name: 'progress_provider');
    }

    if (!listEquals(newBookmarks, bookmarks)) {
      bookmarks = newBookmarks;
    }
  }

  List<Bookmark>? getBookmarks() => bookmarks;

  List<Bookmark>? getBookmarksForItem(String? itemId) {
    return bookmarks
        ?.where((element) => element.libraryItemId == itemId)
        .toList();
  }
}

final bookmarkProvider = ChangeNotifierProvider<BookmarkProvider>((ref) {
  return BookmarkProvider(ref);
});
