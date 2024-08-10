import 'package:abs_flutter/models/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserSwitcher extends ConsumerWidget {
  const UserSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PlatformPopupMenu(
      options: _generateOptions(context, ref),
      icon: Icon(PlatformIcons(context).accountCircle)
    );
  }

  List<PopupMenuOption> _generateOptions(BuildContext context, WidgetRef ref) {
    final List<User> users = ref.watch(usersProvider);

    return users.asMap().entries.map((entry) {
      final index = entry.key;
      final user = entry.value;
      return PopupMenuOption(
        label: user.username ?? '',
        onTap: (PopupMenuOption option) {
          ref
              .watch(selectedUserProvider.notifier)
              .state = index;
        },
      );
    }).toList();
  }
}
