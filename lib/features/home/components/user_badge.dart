import 'package:abs_flutter/api/me/user.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserBadge extends ConsumerWidget {
  const UserBadge({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);

    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Tooltip(
        message: user?.username ?? 'N/A',
        child: PlatformPopupMenu(
          options: _generateOptions(context, ref),
          icon: Chip(
            label: PlatformText(
              user?.username ?? 'N/A',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          material: (_, __) => MaterialPopupMenuData(
            padding: EdgeInsets.zero, // Removes padding
          ),
        ),
      ),
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
          ref.watch(selectedUserProvider.notifier).state = index;
        },
      );
    }).toList();
  }
}
