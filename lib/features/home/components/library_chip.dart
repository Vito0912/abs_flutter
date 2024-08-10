import 'package:abs_api/abs_api.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/util/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:shimmer/shimmer.dart';

class LibraryChip extends ConsumerWidget {
  const LibraryChip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final librariesAsyncValue = ref.watch(librariesProvider);
    final selectedLibrary = ref.watch(selectedLibraryProvider);
    final connectionState = ref.watch(connectionProvider);

    if (!connectionState) {
      return Chip(
        label: Text(S.of(context).noConnection),
      );
    }

    return librariesAsyncValue.when(
      data: (libraries) {
        if (libraries == null ||
            libraries.data == null ||
            libraries.data!.libraries == null) {
          return _error(context);
        }
        return _buildChip(
            context, libraries.data!.libraries!.toList(), selectedLibrary, ref);
      },
      loading: () => _buildLoadingChip(context),
      error: (error, stack) => Text('Error: $error'),
    );
  }

  Widget _error(BuildContext context) {
    return Chip(
      label: Text(S.of(context).error),
    );
  }

  Widget _buildLoadingChip(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Chip(
        label: Container(
          constraints:
              BoxConstraints(maxWidth: 200), // Adjust the maxWidth as needed
          child: Text(
            S.of(context).loading,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Widget _buildChip(BuildContext context, List<ModelLibrary> libraries,
      int selectedLibrary, WidgetRef ref) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _showMenu(context, libraries, ref),
        onTapDown: (_) => _onTapDown(context, true),
        onTapUp: (_) => _onTapDown(context, false),
        onTapCancel: () => _onTapDown(context, false),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: Colors.blue.withAlpha(30),
          highlightColor: Colors.blue.withAlpha(50),
          onTap: () => _showMenu(context, libraries, ref),
          child: Chip(
            avatar:
                Helper.returnLibraryItem(libraries[selectedLibrary].icon ?? ''),
            label: Container(
              constraints: BoxConstraints(
                  maxWidth: 200), // Adjust the maxWidth as needed
              child: Text(
                libraries[selectedLibrary].name!,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapDown(BuildContext context, bool isTapped) {
    // Custom tap down logic can be implemented here if needed
  }

  void _changeCurrentLibrary(WidgetRef ref, int libraryId) {
    ref.read(selectedLibraryProvider.notifier).state = libraryId;
  }

  void _showMenu(
      BuildContext context, List<ModelLibrary> libraries, WidgetRef ref) {
    showPlatformModalSheet(
      context: context,
      builder: (context) => PlatformWidget(
        cupertino: (_, __) => CupertinoActionSheet(
          actions: libraries.map((library) {
            return CupertinoActionSheetAction(
              child: Text(library.name!),
              onPressed: () {
                int index =
                    libraries.indexWhere((element) => element.id == library.id);
                _changeCurrentLibrary(ref, index);
                Navigator.pop(context);
              },
            );
          }).toList(),
          cancelButton: CupertinoActionSheetAction(
            child: Text(S.of(context).cancel),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        material: (_, __) => Column(
          mainAxisSize: MainAxisSize.min,
          children: libraries.map((library) {
            return ListTile(
              leading: Helper.returnLibraryItem(library.icon ?? ''),
              title: Text(library.name!),
              onTap: () {
                int index =
                    libraries.indexWhere((element) => element.id == library.id);
                _changeCurrentLibrary(ref, index);
                Navigator.pop(context);
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
