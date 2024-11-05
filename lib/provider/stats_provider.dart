import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/api/library/stats/library_stats.dart';
import 'package:abs_flutter/api/library/stats/user_listening_stats.dart';
import 'package:abs_flutter/api/me/user.dart' as m;
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OwnStatsNotifier extends StateNotifier<UserListeningStats?> {
  final ref;

  OwnStatsNotifier({required this.user, required this.ref}) : super(null) {
    if (user != null) {
      getListeningStats();
    }
    return;
  }

  final m.User? user;

  Future<void> getListeningStats() async {
    final ABSApi? api = ref.read(apiProviderNew);
    if (api == null || user == null) {
      return;
    }
    final response = await api.getMeApi().getListeningStats(user!.id);
    if (response.data == null) {
      return;
    }
    state = response.data;
  }

  void refreshStats() {
    getListeningStats();
  }
}

final ownStatsProvider =
    StateNotifierProvider<OwnStatsNotifier, UserListeningStats?>((ref) {
  final user = ref.watch(currentUserProvider);
  return OwnStatsNotifier(user: user, ref: ref);
});

class LibraryStatsNotifier extends StateNotifier<LibraryStats?> {
  final ref;

  LibraryStatsNotifier({required this.library, required this.ref})
      : super(null) {
    if (library != null) {
      getListeningStats();
    }
    return;
  }

  final ModelLibrary? library;

  Future<void> getListeningStats() async {
    final ABSApi? api = ref.read(apiProviderNew);
    if (api == null || library == null || library!.id == null) {
      return;
    }
    final response = await api.getLibraryApi().getLibraryStats(library!.id!);
    if (response.data == null) {
      return;
    }
    state = response.data;
  }

  void refreshStats() {
    getListeningStats();
  }
}

final libraryStatsProvider =
    StateNotifierProvider<LibraryStatsNotifier, LibraryStats?>((ref) {
  final library = ref.watch(currentLibraryProvider);
  return LibraryStatsNotifier(library: library, ref: ref);
});
