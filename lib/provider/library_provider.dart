import 'dart:developer';

import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Fetch the libraries and provide the response
final librariesProvider = FutureProvider<Response<GetLibraries200Response>?>((ref) async {
  final api = ref.watch(apiProvider);

  if (api == null ) {
    return null;
  }

  try {
    final response = await api.getLibrariesApi().getLibraries();
    return response;
  } catch (e) {
    if(e is DioException) {
      return null;
    }
    log('$e', name: 'librariesProvider');
    return null;
  }
});

// StateNotifier to manage the selected library index and save it to SharedPreferences
class SelectedLibraryNotifier extends StateNotifier<int> {
  SelectedLibraryNotifier() : super(0);

  @override
  set state(int value) {
    super.state = value;
    _saveSelectedLibrary(value);
  }

  Future<void> _saveSelectedLibrary(int libraryIndex) async {
    await sp.setInt('currentLibrary', libraryIndex);
  }
}

// Provider for the selected library index
final selectedLibraryProvider = StateNotifierProvider<SelectedLibraryNotifier, int>((ref) => SelectedLibraryNotifier());

// Computed provider to get the current library based on the selected index
final currentLibraryProvider = Provider<ModelLibrary?>((ref) {
  final librariesResponse = ref.watch(librariesProvider).value;
  final selectedLibraryIndex = ref.watch(selectedLibraryProvider);

  if (librariesResponse != null && librariesResponse.data != null) {
    final libraries = librariesResponse.data!.libraries;
    if (libraries != null && selectedLibraryIndex >= 0 && selectedLibraryIndex < libraries.length) {
      return libraries[selectedLibraryIndex];
    }
  }
  return null;
});