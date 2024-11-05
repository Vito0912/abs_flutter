import 'dart:convert';

import 'package:abs_flutter/api/library_items/device_info.dart' as abs;
import 'package:abs_flutter/api/library_items/episode.dart';
import 'package:abs_flutter/api/library_items/playback_session.dart';
import 'package:abs_flutter/api/library_items/request/play_library_item_request.dart'
    as abs;
import 'package:abs_flutter/api/routes/abs_api.dart';
import 'package:abs_flutter/globals.dart';
import 'package:abs_flutter/models/file.dart';
import 'package:abs_flutter/provider/connection_provider.dart';
import 'package:abs_flutter/provider/download_provider.dart';
import 'package:abs_flutter/provider/library_item_provider.dart';
import 'package:abs_flutter/provider/log_provider.dart';
import 'package:abs_flutter/provider/player_provider.dart';
import 'package:abs_flutter/provider/player_status_provider.dart';
import 'package:abs_flutter/provider/user_provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaybackSessionNotifier
    extends StateNotifier<AsyncValue<Response<PlaybackSession>?>> {
  final Ref ref;
  Response<PlaybackSession>? _session;

  PlaybackSessionNotifier(this.ref) : super(const AsyncValue.loading());

  Future<void> load(String id, String? episodeId) async {
    final ABSApi? apiNew = ref.read(apiProviderNew);
    final playerStatus = ref.read(playStatusProvider.notifier);
    final player = ref.read(playerProvider.notifier);
    final currentUser = ref.read(currentUserProvider);

    if (apiNew == null || currentUser == null) {
      state = const AsyncValue.error('API is not available', StackTrace.empty);
      return;
    }

    await closeOpenSession(stop: false);

    final downloads = ref.read(downloadListProvider.notifier);
    final download = downloads.getDownload(id, episodeId);
    final connection = ref.read(connectionProvider);

    _session = null;
    log('Creating session. $download (connection: $connection)',
        name: 'session_provider');
    if (download == null) {
      try {
        playerStatus.setLoading(id);
        CancelToken cancelToken = CancelToken();
        playerStatus.setCancelToken(cancelToken);

        abs.PlayLibraryItemRequest playLibraryItemRequest =
            abs.PlayLibraryItemRequest(
          deviceInfo: abs.DeviceInfo(
            deviceId: currentUser.hashCode.toString(),
            clientName: appName,
            clientVersion: version,
            manufacturer: 'N/A',
            model: 'N/A',
            sdkVersion: 'N/A',
          ),
          mediaPlayer: 'abs_flutter w/ just_audio',
          supportedMimeTypes: [
            'audio/flac',
            'audio/mpeg',
            'audio/mp4',
            'audio/ogg',
            'audio/aac',
            'audio/webm'
          ],
        );

        final response = await apiNew.getLibraryItemApi().playLibraryItem(
              id,
              episodeId: episodeId,
              cancelToken: cancelToken,
              libraryItemRequest: playLibraryItemRequest,
            );

        _session = response;

        if (_session!.data!.mediaMetadata.podcastMetadata != null) {
          _podcastSession(_session!.data!.libraryItemId,
              _session!.data!.episodeId!, _session!.data!);
        } else {
          _bookSession(_session!.data!.libraryItemId, _session!.data!);
        }
      } catch (e) {
        playerStatus.setPlayStatus(PlayerStatus.stopped, "Session error");
        log(e.toString(), name: 'session_provider');
        if (e is DioException) {
          if (e.response != null && e.response!.data != null) {
            log(e.response!.data.toString());
            try {
              final sessionId = e.response!.data!['session_id'];
              if (sessionId == null) {
                state = AsyncValue.error(e, e.stackTrace);
                return;
              }
              try {
                log("Trying to delete session: $sessionId");
                await apiNew.getSessionApi().closeOpenSession(sessionId);
              } catch (e) {
                log(e.toString());
              }
              try {
                await apiNew.getSessionApi().closeOpenSession(sessionId);
              } catch (e) {
                log(e.toString());
              }
            } catch (e) {
              log(e.toString());
            }
          }
          state = AsyncValue.error(e, e.stackTrace);
        } else {
          state = AsyncValue.error(e, StackTrace.empty);
        }
      }
    } else {
      // Offline playback
      final item = ref.read(itemProvider(id));
      if (item.value == null || download == null) {
        log('Could not create session for offline playback');
        state =
            const AsyncValue.error('Item is not available', StackTrace.empty);
        return;
      }

      late final MediaItem mediaItem;

      if (download.type == MediaTypeDownload.podcast) {
        final Episode? episode = item.value?.media?.podcastMedia?.episodes
            ?.firstWhere((element) => element.id == episodeId);
        if (episode == null) {
          log('Could not find episode for offline playback',
              name: 'session_provider');
          state = const AsyncValue.error(
              'Episode is not available', StackTrace.empty);
          return;
        }
        mediaItem = MediaItem(
            id: download.filePath!,
            album: item.value?.media?.podcastMedia?.metadata.title,
            title: download.displayName,
            artist: item.value?.media?.podcastMedia?.metadata.author,
            artUri: Uri.parse(
                '${currentUser.server!.url}/api/items/$id/cover?token=${currentUser.token}'),
            duration: Duration(seconds: episode.audioFile!.duration!.round()),
            extras: {
              'libraryItemId': id,
              'episodeId': episodeId,
              'streaming': false,
            });
      } else {
        String artist = item.value?.media?.bookMedia?.metadata.authors
                ?.map((author) => author.name)
                .join(', ') ??
            '';

        mediaItem = MediaItem(
            id: download.filePath!,
            album: item.value?.media?.bookMedia?.metadata.series
                ?.toList()
                .join(', '),
            title: download.displayName,
            displaySubtitle: item.value?.media?.bookMedia?.metadata.subtitle,
            artist: artist,
            artUri: Uri.parse(
                '${currentUser.server!.url}/api/items/$id/cover?token=${currentUser.token}'),
            duration: Duration(
                seconds: item.value!.media!.bookMedia!.audioFiles!
                    .map((file) => file.duration!)
                    .reduce((sum, duration) => sum + duration)
                    .round()),
            extras: {
              'libraryItemId': id,
              'streaming': false,
              'chapters': item.value!.media!.bookMedia!.chapters
                  ?.map((e) => {
                        'title': e.title,
                        'start': e.start,
                        'end': e.end,
                      })
                  .toList(),
            });
      }

      await player.playMediaItem(mediaItem);
    }
  }

  Future<void> _podcastSession(
      String itemId, String episodeId, PlaybackSession playback) async {
    final currentUser = ref.read(currentUserProvider);
    final downloads = ref.read(downloadListProvider.notifier);
    final download = downloads.getDownload(itemId, episodeId);
    final player = ref.read(playerProvider.notifier);

    if (playback.audioTracks == null || playback.audioTracks!.isEmpty) {
      log('No audio tracks found for book session');
      return;
    }

    final streamUrl =
        '${currentUser?.server!.url}${playback.audioTracks![0].contentUrl}?token=${currentUser?.token!}';

    String? path;
    if (download != null) {
      path = download.filePath;
    } else {
      path = streamUrl;
    }

    MediaItem mediaItem = MediaItem(
        id: path!,
        album: playback.mediaMetadata.podcastMetadata?.title,
        title: playback.displayTitle!,
        artist: playback.displayAuthor!,
        duration: Duration(
            seconds: playback.audioTracks!
                .map((file) => file.duration)
                .reduce((sum, duration) => sum + duration)
                .round()),
        artUri: Uri.parse(
            '${currentUser!.server!.url}/api/items/$itemId/cover?token=${currentUser.token}'),
        extras: {
          'libraryItemId': itemId,
          'episodeId': episodeId,
          'sessionId': playback.id,
          'streaming': download == null
        });

    log('Adding to queue: ${mediaItem.title} from ${currentUser.server!.url}${playback.audioTracks![0].contentUrl}?token=${currentUser.token!}');

    await player.playMediaItem(mediaItem);

    state = AsyncValue.data(_session);

    log('Playing: ${mediaItem.title}');
  }

  Future<void> _bookSession(String itemId, PlaybackSession playback) async {
    final currentUser = ref.read(currentUserProvider);
    final downloads = ref.read(downloadListProvider.notifier);
    final download = downloads.getDownload(itemId, null);
    final player = ref.read(playerProvider.notifier);

    if (playback.audioTracks == null || playback.audioTracks!.isEmpty) {
      log('No audio tracks found for book session');
      return;
    }

    final streamUrl =
        '${currentUser?.server!.url}${playback.audioTracks![0].contentUrl}?token=${currentUser?.token!}';

    String? path;
    if (download != null) {
      path = download.filePath;
    } else {
      path = streamUrl;
    }

    bool multipleTracks = playback.audioTracks!.length > 1;
    List<String> audioSources = playback.audioTracks!
        .map((e) =>
            '${currentUser?.server!.url}${e.contentUrl}?token=${currentUser?.token!}')
        .toList();

    MediaItem mediaItem = MediaItem(
        id: path!,
        album: playback.mediaMetadata.bookMetadata?.series?.toList().join(', '),
        title: playback.displayTitle!,
        displaySubtitle: playback.mediaMetadata.bookMetadata?.subtitle,
        artist: playback.displayAuthor!,
        duration: Duration(
            seconds: playback.audioTracks!
                .map((file) => file.duration)
                .reduce((sum, duration) => sum + duration)
                .round()),
        artUri: Uri.parse(
            '${currentUser!.server!.url}/api/items/$itemId/cover?token=${currentUser.token}'),
        extras: {
          'libraryItemId': itemId,
          'sessionId': playback.id,
          'streaming': download == null,
          'chapters': playback.chapters
              ?.map((e) => {
                    'title': e.title,
                    'start': e.start,
                    'end': e.end,
                  })
              .toList(),
          'multipleSources': multipleTracks,
          'audioSources': jsonEncode(audioSources),
        });

    log('Adding to queue: ${mediaItem.title} from ${currentUser.server!.url}${playback.audioTracks![0].contentUrl}?token=${currentUser.token!}');

    await player.playMediaItem(mediaItem);

    state = AsyncValue.data(_session);

    log('Playing: ${mediaItem.title}');
  }

  Future<bool> closeOpenSession({bool stop = true}) async {
    final ABSApi? api = ref.read(apiProviderNew);
    final currentUser = ref.read(currentUserProvider);

    if (api == null ||
        (_session == null) ||
        currentUser == null ||
        (_session!.data == null)) {
      return false;
    }

    final playerStatus = ref.read(playStatusProvider.notifier);

    bool returnValue = false;

    // Delay the closing of the session to allow the player to send the last progress
    // TODO: Send progress to the server with this api call!
    await Future.delayed(const Duration(seconds: 1), () async {
      try {
        api.getSessionApi().closeOpenSession(_session!.data!.id);

        _session = null;
        returnValue = true;
        if (stop) {
          playerStatus.setPlayStatus(PlayerStatus.stopped, "Close session");
        }
        return true;
      } catch (e) {
        log(e.toString());
        returnValue = false;
        return false;
      }
    });

    return returnValue;
  }

  PlaybackSession? get session => _session?.data;
}

final sessionProvider = StateNotifierProvider<PlaybackSessionNotifier,
    AsyncValue<Response<PlaybackSession>?>>((ref) {
  return PlaybackSessionNotifier(ref);
});
