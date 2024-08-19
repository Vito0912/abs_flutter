import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsProvider = Provider<Map<String, dynamic>>((ref) {
  final user = ref.watch(currentUserProvider);
  return user?.setting?.settings ?? defaultSettings;
});

class SpecificKeysSettingsNotifier extends StateNotifier<Map<String, dynamic>> {
  final List<String> keys;
  final Ref ref;
  final MapEquality _mapEquality = const MapEquality();

  SpecificKeysSettingsNotifier(this.ref, this.keys) : super(defaultSettings) {
    state = _filterSettings(ref.read(settingsProvider));

    ref.listen<Map<String, dynamic>>(settingsProvider, (previous, next) {
      if (previous != null && _haveRelevantKeysChanged(previous, next)) {
        state = _filterSettings(next);
      }
    });
  }

  bool _haveRelevantKeysChanged(
      Map<String, dynamic> previous, Map<String, dynamic> next) {
    final prevFiltered = _filterSettings(previous);
    final nextFiltered = _filterSettings(next);
    return !_mapEquality.equals(prevFiltered, nextFiltered);
  }

  Map<String, dynamic> _filterSettings(Map<String, dynamic>? settings) {
    if (settings == null) return {};
    return {for (var key in keys) key: settings[key]};
  }
}

final specificKeysSettingsProvider = StateNotifierProvider.family<
    SpecificKeysSettingsNotifier,
    Map<String, dynamic>,
    List<String>>((ref, keys) {
  return SpecificKeysSettingsNotifier(ref, keys);
});
