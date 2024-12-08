import 'package:abs_flutter/features/download/download_library.dart';
import 'package:abs_flutter/generated/l10n.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/library_provider.dart';
import 'package:abs_flutter/provider/downloader_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DownloadPage extends ConsumerWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final libraries = ref.read(librariesProvider);
    final downloads = ref.watch(downloadListProvider);
    final downloader = ref.watch(downloaderProvider);

    Map<String, String> distinctLibraries = {};
    for (var download in downloads) {
      if (libraries.value == null ||
          libraries.value!.data == null ||
          libraries.value!.data!.libraries == null) {
        distinctLibraries[download.libraryId] = download.libraryName;
      } else {
        distinctLibraries[download.libraryId] = libraries
            .value!.data!.libraries!
            .firstWhere((element) => element.id == download.libraryId)
            .name!;
      }
    }

    ref.listen<String?>(
      downloaderProvider.select((provider) => provider.lastError),
      (previous, next) {
        if (next != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(next),
              duration: const Duration(seconds: 5),
            ),
          );
          downloader.clearError();
        }
      },
    );

    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: Text(S.of(context).downloads),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlatformText(
                  S.of(context).libraries,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Divider(),
                ListView.builder(
                    itemCount: distinctLibraries.length,
                    padding: const EdgeInsets.only(bottom: 8),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final key = distinctLibraries.keys.elementAt(index);
                      return ListTile(
                        title: Text(distinctLibraries[key]!),
                        trailing: Icon(PlatformIcons(context).rightChevron),
                        onTap: () {
                          context.push(
                              '/downloads/$key/${distinctLibraries[key]}');
                        },
                      );
                    }),
                PlatformText(
                  S.of(context).allDownloads,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Divider(),
                DownloadLibrary(downloads: downloads),
              ],
            ),
          ),
        ));
  }
}
