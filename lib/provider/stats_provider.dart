import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:abs_flutter/models/user.dart' as m;

class OwnStatsNotifier extends StateNotifier<GetListeningStats200Response?> {
  final ref;

  OwnStatsNotifier({required this.user, required this.ref}) : super(null) {
    if (user != null) {
      getListeningStats();
    }
    return;
  }

  final m.User? user;

  void getListeningStats() async {
    final AbsApi? api = ref.read(apiProvider);
    if(api == null) {
      return;
    }
    final response = await api.getMeApi().getListeningStats();
    if(response.data == null) {
      return;
    }
    state = response.data;
  }


}

final ownStatsProvider = StateNotifierProvider<OwnStatsNotifier, GetListeningStats200Response?>((ref) {
  final user = ref.watch(currentUserProvider);
  return OwnStatsNotifier(user: user, ref: ref);
});